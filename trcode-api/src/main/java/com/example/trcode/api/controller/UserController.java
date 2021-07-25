package com.example.trcode.api.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.example.trcode.api.controller.form.InsertUserForm;
import com.example.trcode.api.controller.form.LoginForm;
import com.example.trcode.api.controller.form.SearchTravelCodeForm;
import com.example.trcode.api.pojo.TbUser;
import com.example.trcode.api.service.CityService;
import com.example.trcode.api.service.UserService;
import com.example.trcode.api.util.R;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.HashMap;

@RequestMapping("/user")
@RestController
public class UserController {
    @Value("${wx.app-id}")
    private String appId;

    @Value("${wx.app-secret}")
    private String appSecret;

    @Autowired
    private UserService userService;

    @Autowired
    private CityService cityService;

    @RequestMapping("/login")
    public R login(@Valid @RequestBody LoginForm form) {
        String code = form.getCode();
        String openId = getOpenId(code);
        Integer userId = userService.login(openId, form.getTel());
        StpUtil.login(userId);
        String satoken = StpUtil.getTokenInfo().tokenValue;
        return R.ok().put("result", userId != null).put("satoken", satoken);
    }

    @PostMapping("/register")
    public R insert(@Valid @RequestBody InsertUserForm form) {
        String openId = getOpenId(form.getCode());
        TbUser user = new TbUser();
        user.setName(form.getName());
        user.setPid(form.getPid());
        user.setAddress(form.getAddress());
        user.setSex(form.getSex());
        user.setOpenid(openId);
        user.setTel(form.getTel());
        int rows = userService.insert(user);
        return R.ok().put("row", rows);
    }

    @PostMapping("/searchTravelCode")
    @SaCheckLogin
    public R searchTravelCode(@Valid @RequestBody SearchTravelCodeForm form) {
        String cityCode = cityService.searchCityCode(form.getCity());
        String url = "http://m." + cityCode + ".bendibao.com/news/yqdengji/";
        if (form.getDistrict() != null) {
            url += "?qu=" + form.getDistrict();
        }
        try {
            Document document = Jsoup.connect(url).get();
            int gpsLevel = 1;
            Elements elements = document.getElementsByClass("list-content");
            for (Element element : elements) {
                String temp = element.getElementsByTag("p").get(1).text();
                if ("中风险".equals(temp) && gpsLevel <= 2) {
                    gpsLevel = 2;
                } else if ("高风险".equals(temp)) {
                    gpsLevel = 3;
                }
            }
            int trLevel = userService.searchUserLevel(form.getTel());
            System.out.println(R.ok().put("gpslevel", gpsLevel).put("trLevel", trLevel));
            return R.ok().put("gpslevel", gpsLevel).put("trLevel", trLevel);
        } catch (Exception e) {
            return R.error("执行异常");
        }
    }

    private String getOpenId(String code) {
        HashMap param = new HashMap() {{
            put("appid", appId);
            put("secret", appSecret);
            put("js_code", code);
            put("grant_type", "authorization_code");
        }};
        String url = "https://api.weixin.qq.com/sns/jscode2session";
        String response = HttpUtil.post(url, param);
        JSONObject json = JSONUtil.parseObj(response);
        String openId = json.getStr("openid");
        return openId;
    }
}
