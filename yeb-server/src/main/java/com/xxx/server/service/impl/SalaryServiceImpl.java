package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.SalaryMapper;
import com.xxx.server.pojo.Salary;
import com.xxx.server.service.SalaryService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 工资表 服务实现类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Service
public class SalaryServiceImpl extends ServiceImpl<SalaryMapper, Salary> implements SalaryService {

}
