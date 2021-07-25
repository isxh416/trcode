package com.example.trcode.api.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import com.example.trcode.api.util.R;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/demo")
@RestController
public class DemoController {
    @SaCheckLogin
    @GetMapping("/hello")
    public R sayHello() {
        return R.ok().put("result", "HelloWorld");
    }
}
