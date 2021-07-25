package com.example.trcode.api.controller.form;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Data
public class SearchTravelCodeForm {
    @NotBlank(message = "手机号不能为空")
    @Pattern(regexp = "^1[1-9][0-9]{9}$", message = "手机号不正确")
    private String tel;

    @NotBlank(message = "省份不能为空")
    @Pattern(regexp = "^[\\u4e00-\\u9fa5]{2,20}$", message = "省份必须是汉字")
    private String province;

    @NotBlank(message = "城市不能为空")
    @Pattern(regexp = "^[\\u4e00-\\u9fa5]{2,20}$", message = "城市必须是汉字")
    private String city;

    @Pattern(regexp = "^[\\u4e00-\\u9fa5]{2,20}$", message = "区县必须是汉字")
    private String district;
}
