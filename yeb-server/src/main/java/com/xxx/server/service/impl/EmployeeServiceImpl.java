package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.EmployeeMapper;
import com.xxx.server.pojo.Employee;
import com.xxx.server.service.EmployeeService;
import org.springframework.stereotype.Service;

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

}
