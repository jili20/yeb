package com.xxx.server.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xxx.server.pojo.Menu;

import java.util.List;

/**
 * <p>
 * 菜单表 服务类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
public interface MenuService extends IService<Menu> {

    /**
     * 通过用户id查询菜单列表
     * @return
     */
    List<Menu> getMenusByAdminId();

    /**
     * 根据角色获取菜单列表
     * @return
     */
    List<Menu> getMenusWithRole();

    /**
     * 查询所有菜单
     * @return
     */
    List<Menu> getAllMenus();
}
