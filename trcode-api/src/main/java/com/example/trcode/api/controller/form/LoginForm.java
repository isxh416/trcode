package com.example.trcode.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Data
public class LoginForm {
    @NotBlank(message = "临时授权不能为空")
    @Pattern(regexp = "^[0-9A-Za-z]{32}$", message = "临时授权内容错误")
    private String code;

    @NotBlank(message = "手机号码不能为空")
    @Pattern(regexp = "^1[1-9][0-9]{9}$", message = "手机号码不正确")
    private String tel;
}
