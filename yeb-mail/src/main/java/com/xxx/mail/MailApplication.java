package com.xxx.mail;

import com.xxx.server.utils.MailConstants;
import org.springframework.amqp.core.Queue;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.Bean;

/**
 * 启动类
 *
 * @author bing  @create 2021/1/18-下午10:31
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class MailApplication {

    public static void main(String[] args) {
        SpringApplication.run(MailApplication.class, args);
    }


    /**
     * 绑定队列
     * @return
     */
    @Bean
    public Queue queue() {
        return new Queue(MailConstants.MAIL_QUEUE_NAME);
    }
}