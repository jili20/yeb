package com.xxx.server.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xxx.server.pojo.MenuRole;
import com.xxx.server.utils.RespBean;

/**
 * <p>
 * 菜单角色中间表 服务类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
public interface MenuRoleService extends IService<MenuRole> {

    /**
     * 更新角色菜单
     * @param rid
     * @param mids
     * @return
     */
    RespBean updateMenuRole(Integer rid, Integer[] mids);
}
