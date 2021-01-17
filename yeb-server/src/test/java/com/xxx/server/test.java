package com.xxx.server;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @author bing  @create 2021/1/14-下午6:18
 */
public class test {
    public static void main(String[] args) {
        BCryptPasswordEncoder bcEncoder = new BCryptPasswordEncoder();
        System.out.println(bcEncoder.encode("123"));
    }
}
