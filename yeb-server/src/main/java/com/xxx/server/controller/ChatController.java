package com.xxx.server.controller;

import com.xxx.server.pojo.Admin;
import com.xxx.server.service.AdminService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/** 在线聊天
 * @author bing  @create 2021/1/20-下午3:55
 */
@RestController
@RequestMapping("/chat")
public class ChatController {

    @Autowired
    private AdminService adminService;

    @ApiOperation(value = "获取所有操作员")
    @GetMapping("/admin")
    public List<Admin> getAllAdmins(String keywords){
        // 调用 getAllAdmins 方法
        return adminService.getAllAdmins(keywords);
    }
}
