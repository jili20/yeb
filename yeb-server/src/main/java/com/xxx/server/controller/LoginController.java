package com.xxx.server.controller;

import com.xxx.server.pojo.Admin;
import com.xxx.server.pojo.AdminLoginParam;
import com.xxx.server.utils.RespBean;
import com.xxx.server.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * 登录
 *
 * @author bing  @create 2021/1/13-下午8:41
 */
@Api(tags = "LoginController")
@RestController
public class LoginController {

    @Autowired
    private AdminService adminService;

    @Resource
    private PasswordEncoder passwordEncoder;

    @ApiOperation(value = "登录-返回token")
    @PostMapping("/login")
    public RespBean login(@RequestBody AdminLoginParam adminLoginParam, HttpServletRequest request) {
        return adminService.login(adminLoginParam.getUsername(), adminLoginParam.getPassword(),
                adminLoginParam.getCode(),request);
    }


    @ApiOperation(value = "获取当前登录用户的信息")
    @GetMapping("/admin/info")
    public Admin getAdminInfo(Principal principal) { // 通过 Principal 对象，获取当前登录用户对象
        if (null == principal) {
            return null;
        }
        String username = principal.getName();
        Admin admin = adminService.getAdminByUserName(username); // 新建方法 getAdminByUserName 根据用户名获取用户
        admin.setPassword(null); // 安全起见，不给前端返回用户密码
        admin.setRoles(adminService.getRoles(admin.getId())); // 获取登录用户对应的角色列表
        return admin;
    }


    @ApiOperation(value = "退出登录")
    @PostMapping("/logout")
    public RespBean logout() {
        return RespBean.success("退出成功！");
    }


    // 注册
    @ApiOperation(value = "用户注册")
    @PostMapping("/register")
    public RespBean registerUser(@RequestBody String username, String password, String phone) {

        Admin admin = new Admin();
        admin.setUsername(username);
        admin.setPhone(phone);
        admin.setPassword(passwordEncoder.encode(password));
        adminService.save(admin);
        return RespBean.success("注册成功", admin);
    }


}
