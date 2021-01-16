package com.xxx.server.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 考评表
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_appraise")
@ApiModel(value="Appraise对象", description="考评表")
public class Appraise implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "员工id")
    private Integer eid;

    @ApiModelProperty(value = "考评日期")
    private LocalDateTime appDate;

    @ApiModelProperty(value = "考评结果")
    private String appResult;

    @ApiModelProperty(value = "考评内容")
    private String appContent;

    @ApiModelProperty(value = "备注")
    private String remark;


}
