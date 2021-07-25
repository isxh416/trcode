package com.example.trcode.api.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TbCityDao {
    public String searchCityCode(String city);
}
