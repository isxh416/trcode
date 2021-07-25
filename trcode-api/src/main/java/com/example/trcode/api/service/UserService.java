package com.example.trcode.api.service;

import com.example.trcode.api.dao.TbUserDao;
import com.example.trcode.api.dao.TravelRecordDao;
import com.example.trcode.api.pojo.TbUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class UserService {
    @Autowired
    private TbUserDao userDao;

    @Autowired
    private TravelRecordDao recordDao;

    public Integer login(String openId, String tel) {
        Integer id = userDao.login(openId);
        if (id != null) {
            HashMap param = new HashMap() {{
                put("id", id);
                put("tel", tel);
            }};
            userDao.updateTel(param);
        }
        return id;
    }

    public int insert(TbUser user) {
        int rows = userDao.insert(user);
        return rows;
    }

    public int searchUserLevel(String tel) throws Exception {
        int level = recordDao.searchUserLevel(tel);
        return level;
    }
}