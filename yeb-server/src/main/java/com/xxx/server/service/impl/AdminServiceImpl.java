package com.xxx.server.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xxx.server.mapper.AdminMapper;
import com.xxx.server.mapper.RoleMapper;
import com.xxx.server.pojo.Admin;
import com.xxx.server.pojo.Role;
import com.xxx.server.utils.RespBean;
import com.xxx.server.service.AdminService;
import com.xxx.server.config.security.component.JwtTokenUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 * 管理员表 服务实现类
 * </p>
 *
 * @author Bing
 * @since 2021-01-13
 */
@Service
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements AdminService {

    @Autowired
    private UserDetailsService userDetailsService; // 权限框架的

    @Autowired
    private PasswordEncoder passwordEncoder; // 安全框架-密码加密解密

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Value("${jwt.tokenHeader}")
    private String tokenHeader; // token 头部信息

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private AdminMapper adminMapper;

    /**
     * 登录之后返回 token
     *
     * @param username
     * @param password
     * @param code
     * @param request
     * @return
     */
    @Override
    public RespBean login(String username, String password, String code, HttpServletRequest request) {
        // 校验验证码
        String captcha = (String) request.getSession().getAttribute("captcah");
        if (StringUtils.isEmpty(code)||!captcha.equalsIgnoreCase(code)) {
            return RespBean.error("验证码输入错误，请重新输入！");
        }
        // 登录
        UserDetails userDetails = userDetailsService.loadUserByUsername(username); // 调用权限框架方法获取用户名
        // 参数：第一个用户传过来的密码，第二个从 userDetails 中获取的
        if (null == userDetails || !passwordEncoder.matches(password, userDetails.getPassword())) {
            return RespBean.error("用户名或密码不正确");
        }
        if (!userDetails.isEnabled()) {
            return RespBean.error("账号被禁用，请联系管理员！");
        }
        // 自己补充其它判断：账号是否存在......

        // 更新 security 登录用户对象，设置到全局
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userDetails
                , null, userDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authenticationToken);

        // 登录成功，生成 token
        String token = jwtTokenUtil.generateToken(userDetails);
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        tokenMap.put("tokenHeader", tokenHeader);
        return RespBean.success("登录成功", tokenMap);
    }

    /**
     * 根据用户名获取用户
     *
     * @param username
     * @return
     */
    @Override
    public Admin getAdminByUserName(String username) {
        // 要作空判断，这里为了简单直接返回
        return adminMapper.selectOne(new QueryWrapper<Admin>().eq("username", username).eq("enabled", true));
    }

    /**
     * 根据用户 id 查询对应角色列表
     * @param adminId
     * @return
     */
    @Override
    public List<Role> getRoles(Integer adminId) {
        return roleMapper.getRoles(adminId);
    }


}
