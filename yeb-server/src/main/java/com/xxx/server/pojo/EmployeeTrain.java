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
 * 培训表
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_employee_train")
@ApiModel(value="EmployeeTrain对象", description="培训表")
public class EmployeeTrain implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "员工编号")
    private Integer eid;

    @ApiModelProperty(value = "培训日期")
    private LocalDateTime trainDate;

    @ApiModelProperty(value = "培训内容")
    private String trainContent;

    @ApiModelProperty(value = "备注")
    private String remark;


}
