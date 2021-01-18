package com.xxx.server.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
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
@TableName("t_politics_status")
@ApiModel(value="PoliticsStatus对象", description="")
public class PoliticsStatus implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "政治面貌")
    @Excel(name = "政治面貌")
    @NonNull // 非空 必填，不填报错
    private String name;


}
