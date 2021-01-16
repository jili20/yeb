package com.xxx.server.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

/** Redis 配置类
 * @author bing  @create 2021/1/14-下午9:10
 */
@Configuration
public class RedisConfig {

    @Bean
    public RedisTemplate<String,Object> redisTemplate(RedisConnectionFactory connectionFactory){
        RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
        // String 类型 key 序列器
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        // String 类型 value 序列器
        redisTemplate.setValueSerializer(new GenericJackson2JsonRedisSerializer());
        // Hash 类型 key 序列器
        redisTemplate.setHashKeySerializer(new StringRedisSerializer());
        // Hash 类型 value 序列器
        redisTemplate.setHashValueSerializer(new GenericJackson2JsonRedisSerializer());
        redisTemplate.setConnectionFactory(connectionFactory);
        return redisTemplate;
    }
}
