package com.xxx.server.controller;


import com.xxx.server.pojo.Salary;
import com.xxx.server.service.SalaryService;
import com.xxx.server.utils.RespBean;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.time.LocalDateTime;
import java.util.List;

/**
 * <p>
 * 工资表 前端控制器
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@RestController
@RequestMapping("/salary/sob") // 路径对应菜单表 工资账套管理
public class SalaryController {

    @Autowired
    private SalaryService salaryService;

    @ApiOperation(value = "获取员工资账套")
    @GetMapping("/")
    public List<Salary> getAllSalarys() {
        return salaryService.list();
    }

    @ApiOperation(value = "添加工资账套")
    @PostMapping("/")
    public RespBean addSalary(@RequestBody Salary salary) {
        salary.setCreateDate(LocalDateTime.now());
        if (salaryService.save(salary)) {
            return RespBean.success("添加成功！");
        }
        return RespBean.error("添加失败！");
    }

    @ApiOperation(value = "删除工资账套")
    @DeleteMapping("/{id}")
    public RespBean deleteSalary(@PathVariable Integer id) {
        if (salaryService.removeById(id)) {
            return RespBean.success("删除成功！");
        }
        return RespBean.error("删除失败！");
    }


    @ApiOperation(value = "更新工资账套")
    @PutMapping("/")
    public RespBean updateSalary(@RequestBody Salary salary) {
        if (salaryService.updateById(salary)) {
            return RespBean.success("更新成功！");
        }
        return RespBean.error("更新失败！");
    }
}

