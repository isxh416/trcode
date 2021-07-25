package com.example.trcode.api.service;

import com.example.trcode.api.dao.TbCityDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityService {
    @Autowired
    private TbCityDao cityDao;

    public String searchCityCode(String city) {
        return cityDao.searchCityCode(city);
    }
}
