package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.OplogMapper;
import com.xxx.server.pojo.Oplog;
import com.xxx.server.service.OplogService;
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
public class OplogServiceImpl extends ServiceImpl<OplogMapper, Oplog> implements OplogService {

}
