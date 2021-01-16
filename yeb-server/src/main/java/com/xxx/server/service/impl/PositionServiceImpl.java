package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.PositionMapper;
import com.xxx.server.pojo.Position;
import com.xxx.server.service.PositionService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 职位 服务实现类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Service
public class PositionServiceImpl extends ServiceImpl<PositionMapper, Position> implements PositionService {

}
