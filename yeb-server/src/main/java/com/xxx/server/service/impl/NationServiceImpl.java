package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.NationMapper;
import com.xxx.server.pojo.Nation;
import com.xxx.server.service.NationService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Service
public class NationServiceImpl extends ServiceImpl<NationMapper, Nation> implements NationService {

}
