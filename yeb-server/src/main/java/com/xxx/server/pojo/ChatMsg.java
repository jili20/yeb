package com.xxx.server.pojo;

        import lombok.Data;
        import lombok.EqualsAndHashCode;
        import lombok.experimental.Accessors;

        import java.time.LocalDateTime;

/** 在线聊天 - 消息
 * @author bing  @create 2021/1/20-下午3:31
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class ChatMsg {
    private String from;
    private String to;
    private String content;
    private LocalDateTime date;
    private String formNickName;
}
