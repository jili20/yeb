package com.xxx.server.config;

        import com.google.code.kaptcha.impl.DefaultKaptcha;
        import com.google.code.kaptcha.util.Config;
        import org.springframework.context.annotation.Bean;
        import org.springframework.context.annotation.Configuration;

        import java.util.Properties;

/** 验证码配置类
 * @author bing  @create 2021/1/15-下午7:38
 */
@Configuration
public class CaptchaConfig {

    @Bean
    public DefaultKaptcha defaultKaptcha(){
        // 验证码生成器
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        // 配置
        Properties properties = new Properties();
        // 是否有边框
        properties.setProperty("kaptcha.border","yes");
        // 设置边框颜色
        //properties.setProperty("kaptcha.border.color","105,179,90");
        properties.setProperty("kaptcha.border.color","224,224,224");
        // 边框粗细度，默认为1
        properties.setProperty("kaptcha.border.thickness","1");
        // 设置验证码文本字符颜色，默认黑色
        //properties.setProperty("kaptcha.textproducer.font.color", "blue");
        // 设置字体样式
        properties.setProperty("kaptcha.textproducer.font.names", "微软雅黑");
        //properties.setProperty("kaptcha.textproducer.font.names", "宋体,楷体,微软雅黑");
        // 验证码 session key
        properties.setProperty("kaptcha.session.key", "code");
        // 验证码图片宽度，默认为 200
        properties.setProperty("kaptcha.image.width", "100");
        // 验证码图片高度，默认为40
        properties.setProperty("kaptcha.image.height", "40");
        // 字体大小
        properties.setProperty("kaptcha.textproducer.font.size", "30");
        // 验证码长度
        properties.setProperty("kaptcha.textproducer.char.length", "4");
        // 没有干扰
        properties.setProperty("kaptcha.noise.impl", "com.google.code.kaptcha.impl.NoNoise");// 没有干扰

        Config config = new Config(properties);
        defaultKaptcha.setConfig(config);

        return defaultKaptcha;
    }
}
