package com.xxx.server.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author bing  @create 2021/1/14-上午12:09
 */
@RestController
public class HelloController {

    @GetMapping("hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/employee/basic/hello")
    public String hello2() {
        return "/employee/basic/hello";
    }

    @GetMapping("/employee/advanced/hello")
    public String hello3() {
        return "/employee/advanced/hello";
    }

}
