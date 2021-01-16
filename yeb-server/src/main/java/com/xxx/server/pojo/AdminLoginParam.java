package com.xxx.server.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/** 用户登录实体类
 *  专门封装用户登录数据 vo
 * @author bing  @create 2021/1/13-下午8:30
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@ApiModel(value="Admin登录对象", description="")
public class AdminLoginParam {

    @ApiModelProperty(value = "用户名",required = true)
    private String username;
    @ApiModelProperty(value = "密码",required = true)
    private String password;
    @ApiModelProperty(value = "验证码",required = true)
    public String code;
}
