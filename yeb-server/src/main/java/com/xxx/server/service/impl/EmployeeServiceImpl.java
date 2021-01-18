package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.EmployeeMapper;
import com.xxx.server.pojo.Employee;
import com.xxx.server.service.EmployeeService;
import com.xxx.server.utils.RespBean;
import com.xxx.server.utils.RespPageBean;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 员工表 服务实现类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {

    /**
     * 获取所有员工（分页）
     *
     * @param currentPage
     * @param size
     * @param employee
     * @param beginDateScope
     * @return
     */
    @Override
    public RespPageBean getEmployeeByPage(Integer currentPage, Integer size, Employee employee, LocalDate[] beginDateScope) {
        // 开启分页
        Page<Employee> page = new Page<>(currentPage, size);
        Page<Employee> employeeByPage = baseMapper.getEmployeeByPage(page, employee, beginDateScope);
        return new RespPageBean(employeeByPage.getTotal(), employeeByPage.getRecords());
    }

    /**
     * 获取工号 :添加员工工号是当前最大工号+1
     *
     * @return String.format(" % 08d " = 获得固定8位长度的数字 （ 不足的前面补0 ）
     */
    @Override
    public RespBean maxWorkID() {
        List<Map<String, Object>> maps = baseMapper.selectMaps(new QueryWrapper<Employee>().select("max(work_id)"));
        return RespBean.success(null, String.format("%08d",
                Integer.parseInt(maps.get(0).get("max(work_id)").toString()) + 1));
    }

    /**
     * 添加员工
     *
     * @param employee
     * @return
     */
    @Override
    public RespBean addEmp(Employee employee) {
        // 处理合同期限，保留两位小数
        // 注意实体类日期类型为 LocalDate
        LocalDate beginContract = employee.getBeginContract();// 合同开始时间
        LocalDate endContract = employee.getEndContract();// 合同结束时间
        // 计算 两个日期相差多少天
        long days = beginContract.until(endContract, ChronoUnit.DAYS);
        // 保留两位小数
        DecimalFormat decimalFormat = new DecimalFormat("##.00");
        // 计算以年为单位
        employee.setContractTerm(Double.parseDouble(decimalFormat.format(days / 365.00)));
        if (1 == baseMapper.insert(employee)) {
            return RespBean.success("添加成功！");
        }
        return RespBean.error("添加失败！");
    }
}
