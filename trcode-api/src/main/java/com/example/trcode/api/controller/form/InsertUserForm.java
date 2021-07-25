package com.example.trcode.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Data
public class InsertUserForm {
    @NotBlank(message = "姓名不能为空")
    @Pattern(regexp = "^[\\u4e00-\\u9fa5]{2,10}$", message = "姓名不正确")
    private String name;

    @NotBlank(message = "身份证号码不能为空")
    @Pattern(regexp = "^[1-9][0-9]{16}[0-9Xx]$", message = "身份证号码不正确")
    private String pid;

    @NotBlank(message = "住址信息不能为空")
    @Pattern(regexp = "^[0-9A-Za-z#\\-_#\\u4e00-\\u9fa5]{5,200}$", message = "住址信息不正确")
    private String address;

    @NotBlank(message = "性别不能为空")
    @Pattern(regexp = "^男$|^女$", message = "性别不正确")
    private String sex;

    @NotBlank(message = "临时授权不能为空")
    @Pattern(regexp = "^[0-9A-Za-z]{32}$", message = "临时授权内容错误")
    private String code;

    @NotBlank(message = "电话号码不能为空")
    @Pattern(regexp = "^1[1-9][0-9]{9}$", message = "电话号码不正确")
    private String tel;
}
