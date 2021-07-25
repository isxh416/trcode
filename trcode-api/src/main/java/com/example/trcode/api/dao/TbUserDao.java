package com.example.trcode.api.dao;

import com.example.trcode.api.pojo.TbUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;

@Mapper
public interface TbUserDao {
    public Integer login(String openId);

    public int insert(TbUser user);

    public int updateTel(HashMap param);
}
