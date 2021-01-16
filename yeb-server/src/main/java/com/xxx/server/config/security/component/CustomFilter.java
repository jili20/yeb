package com.xxx.server.config.security.component;

import com.xxx.server.pojo.Menu;
import com.xxx.server.pojo.Role;
import com.xxx.server.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import java.util.Collection;
import java.util.List;

/** 权限控制
 *  根据请求 url 分析请求所需的角色
 * @author bing  @create 2021/1/16-上午11:28
 */
@Component
public class CustomFilter implements FilterInvocationSecurityMetadataSource {

    @Autowired
    private MenuService menuService;

    AntPathMatcher antPathMatcher = new AntPathMatcher();

    @Override
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
        // 获取请求的 url
        String requestUrl = ((FilterInvocation) object).getRequestUrl();
        // 权限角色查询所有菜单
        List<Menu> menus = menuService.getMenusWithRole();
        // 判断请求 url 与菜单角色是否匹配
        for (Menu menu : menus) {
            if (antPathMatcher.match(menu.getUrl(),requestUrl)) {
                String[] str = menu.getRoles().stream().map(Role::getName).toArray(String[]::new);
                return SecurityConfig.createList(str);
            }

        }
        // 没匹配的 url 默认登录即可访问 : ROLE_LOGIN 登录即可拥有的角色
        return SecurityConfig.createList("ROLE_LOGIN");
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return false;
    }
}
