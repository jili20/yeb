package com.xxx.server.config.security.component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * JWT 登录授权过滤器
 *
 * @author bing  @create 2021/1/13-下午10:24
 */
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    @Value("${jwt.tokenHeader}")
    private String tokenHeader; // JWT 存储的请求头( key )
    @Value("${jwt.tokenHead}")
    private String tokenHead; // JWT 负载中拿到开头( value )
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Autowired
    private UserDetailsService userDetailsService;

    // 前置拦截器
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {
        String authHeader = request.getHeader(tokenHeader); // 根据 key 获取 value（要验证的头）
        // 存在 token
        // 如果拿到 value，并且是根据 Bearer 开头的
        if (null != authHeader && authHeader.startsWith(tokenHead)) {
            // 截取字符串
            String authToken = authHeader.substring(tokenHead.length());
            String username = jwtTokenUtil.getUserNameFromToken(authToken);
            // token 存在用户名，但未登录( 在 springSecurity 上下文拿不到 用户对象 ）
            if (null != username && null == SecurityContextHolder.getContext().getAuthentication()) {
                // 登录(通过 username 拿到 UserDetails ）
                UserDetails userDetails = userDetailsService.loadUserByUsername(username);
                // 判断 token 是否有效，重新设置用户对象
                if (jwtTokenUtil.validateToken(authToken, userDetails)) {
                    // 参数：用户对象 密码 角色
                    UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                    // 重新设置用户对象到 springSecurity上下文中去
                    authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                    SecurityContextHolder.getContext().setAuthentication(authenticationToken);
                }
            }
        }
        // 放行
        filterChain.doFilter(request, response);
    }
}
