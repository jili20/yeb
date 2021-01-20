package com.xxx.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/** 启动类
 * @author bing  @create 2021/1/13-下午12:29
 */
@SpringBootApplication
@EnableScheduling // 开启定时任务
public class YebApplication {

    public static void main(String[] args) {
        SpringApplication.run(YebApplication.class, args);
    }

}