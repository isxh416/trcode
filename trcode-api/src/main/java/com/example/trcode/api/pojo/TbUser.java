package com.example.trcode.api.pojo;

import lombok.Data;

@Data
public class TbUser {
    private Integer id;
    private String openid;
    private String name;
    private String tel;
    private String pid;
    private String sex;
    private String address;
    private String creatTime;
}
