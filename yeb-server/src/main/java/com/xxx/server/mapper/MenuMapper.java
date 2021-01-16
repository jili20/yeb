package com.xxx.server.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xxx.server.pojo.Menu;

import java.util.List;

/**
 * <p>
 * 菜单表 Mapper 接口
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
public interface MenuMapper extends BaseMapper<Menu> {

    /**
     * 通过用户id查询菜单列表
     * @param id
     * @return
     */
    List<Menu> getMenusByAdminId(Integer id);

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
