package com.xxx.server.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;
import cn.afterturn.easypoi.excel.annotation.ExcelEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.time.LocalDate;
import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
/**
 * <p>
 * 员工表
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_employee")
@ApiModel(value="Employee对象", description="员工表")
public class Employee implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "员工编号")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "员工姓名")
    @Excel(name = "员工姓名")
    private String name;

    @ApiModelProperty(value = "性别")
    @Excel(name = "性别")
    private String gender;

    @ApiModelProperty(value = "出生日期")
    @Excel(name = "出生日期",width = 20,format = "yyyy-MM-dd")// width = 20 是Json字符串的长度
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "Asia/Shanghai")
    private LocalDate birthday;

    @ApiModelProperty(value = "身份证号")
    @Excel(name = "身份证号",width = 30)
    private String idCard;

    @ApiModelProperty(value = "婚姻状况")
    @Excel(name = "婚姻状况")
    private String wedlock;

    @ApiModelProperty(value = "民族")
    private Integer nationId;

    @ApiModelProperty(value = "籍贯")
    @Excel(name = "籍贯")
    private String nativePlace;

    @ApiModelProperty(value = "政治面貌")
    @Excel(name = "政治面貌")
    private Integer politicId;

    @ApiModelProperty(value = "邮箱")
    @Excel(name = "邮箱",width = 30)
    private String email;

    @ApiModelProperty(value = "电话号码")
    @Excel(name = "电话号码",width = 15)
    private String phone;

    @ApiModelProperty(value = "联系地址")
    @Excel(name = "联系地址",width = 40)
    private String address;

    @ApiModelProperty(value = "所属部门")
    @Excel(name = "所属部门")
    private Integer departmentId;

    @ApiModelProperty(value = "职称ID")
    private Integer jobLevelId;

    @ApiModelProperty(value = "职位ID")
    private Integer posId;

    @ApiModelProperty(value = "聘用形式")
    @Excel(name = "聘用形式")
    private String engageForm;

    @ApiModelProperty(value = "最高学历")
    @Excel(name = "最高学历")
    private String tiptopDegree;

    @ApiModelProperty(value = "所属专业")
    @Excel(name = "所属专业",width = 20)
    private String specialty;

    @ApiModelProperty(value = "毕业院校")
    @Excel(name = "毕业院校",width = 20)
    private String school;

    @ApiModelProperty(value = "入职日期")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "Asia/Shanghai")
    @Excel(name = "入职日期",width = 20,format = "yyyy-MM-dd")
    private LocalDate beginDate;

    @ApiModelProperty(value = "在职状态")
    @Excel(name = "在职状态")
    private String workState;

    @ApiModelProperty(value = "工号")
    @Excel(name = "工号")
    private String workId;

    @ApiModelProperty(value = "合同期限")
    @Excel(name = "合同期限",suffix = "年") // suffix 加后缀
    private Double contractTerm;

    @ApiModelProperty(value = "转正日期")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "Asia/Shanghai")
    @Excel(name = "转正日期",width = 20,format = "yyyy-MM-dd")
    private LocalDate conversionTime;

    @ApiModelProperty(value = "离职日期")
    @TableField("notWork_date")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "Asia/Shanghai")
    private LocalDate notworkDate;

    @ApiModelProperty(value = "合同起始日期")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "Asia/Shanghai")
    @Excel(name = "合同起始日期",width = 20,format = "yyyy-MM-dd")
    private LocalDate beginContract;

    @ApiModelProperty(value = "合同终止日期")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "Asia/Shanghai")
    @Excel(name = "合同终止日期",width = 20,format = "yyyy-MM-dd")
    private LocalDate endContract;

    @ApiModelProperty(value = "工龄")
    private Integer workAge;

    @ApiModelProperty(value = "工资账套ID")
    private Integer salaryId;

    @ApiModelProperty(value = "民族")
    @TableField(exist = false)
    @ExcelEntity(name = "民族") // 对象 要进入对象 给对应的字段添加注解 @Excel(name = "民族")
    private Nation nation;

    @ApiModelProperty(value = "政治面貌")
    @TableField(exist = false)
    @ExcelEntity(name = "政治面貌")
    private PoliticsStatus politicsStatus;

    @ApiModelProperty(value = "部门")
    @TableField(exist = false)
    @ExcelEntity(name = "部门")
    private Department department;

    @ApiModelProperty(value = "职称")
    @TableField(exist = false)
    @ExcelEntity(name = "职称")
    private Joblevel joblevel;

    @ApiModelProperty(value = "职位")
    @TableField(exist = false)
    @ExcelEntity(name = "职位")
    private Position position;


    @ApiModelProperty(value = "工资账套")
    @TableField(exist = false)
    private Salary salary;

}
