package com.xxx.server.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.*;
import lombok.experimental.Accessors;

/**
 * <p>
 * 部门表
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Data
@NoArgsConstructor
@RequiredArgsConstructor // 有参构造,会生成一个包含常量，和标识了NotNull的变量的构造方法。
@EqualsAndHashCode(callSuper = false,of = "name") // 以 name 重写 EqualsAndHashCode
@Accessors(chain = true)
@TableName("t_department")
@ApiModel(value="Department对象", description="部门表")
public class Department implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "部门名称")
    @Excel(name = "部门名称")
    @NonNull
    private String name;

    @ApiModelProperty(value = "父id")
    private Integer parentId;

    @ApiModelProperty(value = "路径")
    private String depPath;

    @ApiModelProperty(value = "是否启用")
    private Boolean enabled;

    @ApiModelProperty(value = "是否上级")
    private Integer isParent;

    @ApiModelProperty(value = "子部门列表")
    @TableField(exist = false)
    private List<Department> children;

    @ApiModelProperty(value = "返回结果，存储过程使用")
    @TableField(exist = false)
    private Integer result;

}
