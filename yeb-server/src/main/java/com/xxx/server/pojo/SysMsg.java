package com.xxx.server.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 系统消息
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_sys_msg")
@ApiModel(value="SysMsg对象", description="系统消息")
public class SysMsg implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "消息id")
    private Integer mid;

    @ApiModelProperty(value = "0表示群发消息")
    private Integer type;

    @ApiModelProperty(value = "这条消息是给谁的")
    private Integer adminid;

    @ApiModelProperty(value = "0 未读 1 已读")
    private Integer state;


}
