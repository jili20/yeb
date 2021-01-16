package com.xxx.server.config.security.component;

import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * JWT 工具类
 *
 * @author bing  @create 2021/1/13-下午5:09
 */
@Component
public class JwtTokenUtil {
    // 定义用户名和过期时间
    private static final String CLAIM_KEY_USERNAME = "sub";
    private static final String CLAIM_KEY_CREATED = "created";
    @Value("${jwt.secret}")
    private String secret; // JWT 加解密使用的密钥
    @Value("${jwt.expiration}")
    private Long expiration; // JWT 的超期限时间 （ 60*60*24）24小时失效

    // 可供外界调用的方法：
    // 1. 根据用户信息生成 token
    // 2. 从 token 中获取登录 用户名
    // 3. 验证 token 是否有效
    // 4. 判断 token 是否可以被刷新
    // 5. 刷新 token

    /**
     * 1. ☑️ 根据用户信息生成 token
     * 用户信息从 security 框架 UserDetails 中获取
     *
     * @param userDetails
     * @return
     */
    public String generateToken(UserDetails userDetails) {
        Map<String, Object> claims = new HashMap<>(); // 准备存放 token 的容器（荷载）
        claims.put(CLAIM_KEY_USERNAME, userDetails.getUsername()); // 从 security 框架 UserDetails 中获取用户名
        claims.put(CLAIM_KEY_CREATED, new Date()); // 创建时间为当前时间
        return generateToken(claims); // 增加其它信息（ 本类内新建方法）
    }

    /**
     * 4. ☑️ 从 token 中获取登录用户名
     * @param token
     * @return
     */
    public String getUserNameFromToken(String token) {
        String username;
        try {
            Claims claims = getClaimsFormToken(token); // 根据 token 获取荷载（ 本类内新建方法 ）
            username = claims.getSubject(); // 通过荷载调用 getSubject 方法，获取用户名
        } catch (Exception e) {
            username = null; // 有异常 username 为空
        }
        return username;
    }


    /**
     * 6. ☑️ 验证 token 是否有效
     * a、判断 token 是否已过期；
     * b、token 荷载中的用户名 和 userDetails 中的用户名是否一致
     *
     * @param token
     * @param userDetails
     * @return
     */
    public boolean validateToken(String token, UserDetails userDetails) {
        String username = getUserNameFromToken(token); // 从 token 中获取 用户名
        return username.equals(userDetails.getUsername()) && !isTokenExpired(token); // 本类内新建方法
    }

    /**
     * 7. 判断 token 是否失效
     *
     * @param token
     * @return
     */
    private boolean isTokenExpired(String token) {
        Date expireDate = getExpiredDateFromToken(token); // 获取 token 失效时间，本类内新建此方法
        return expireDate.before(new Date()); // 如果 token 过期时间在当前时间前面，有效
    }

    /**
     * 8.  从 token 中获取过期时间
     *
     * @param token
     * @return
     */
    private Date getExpiredDateFromToken(String token) {
        Claims claims = getClaimsFormToken(token); // 根据 token 获取荷载
        return claims.getExpiration(); // 从荷载中获取过期时间
    }

    /**
     * 9. ☑️ 判断 token 是否可以被刷新
     * 过期了，可以刷新。获取有效时间方法取反为过期
     *
     * @param token
     * @return
     */
    public boolean canRefresh(String token) {
        return !isTokenExpired(token);
    }

    /**
     * 10. ☑️ 刷新 token 过期时间
     * @param token
     * @return
     */
    public String refreshToken(String token){
        Claims claims = getClaimsFormToken(token); // 获取荷载
        claims.put(CLAIM_KEY_CREATED,new Date()); // 通过荷载设置创建时间改为当前时间 = 刷新 token 过期时间
        return generateToken(claims); // 生成 token
    }

    /**
     * 5. 从 token 中获取荷载
     *
     * @param token
     * @return
     */
    private Claims getClaimsFormToken(String token) {
        Claims claims = null;
        try {
            claims = Jwts.parser()
                    .setSigningKey(secret) // 密钥
                    .parseClaimsJws(token) // 签名
                    .getBody();
        } catch (Exception e) { // 抛大异常
            e.printStackTrace();
        }
        return claims;
    }


    /**
     * 2.根据荷载生成 JWT token
     *
     * @param claims
     * @return 私有方法，供本类方法调用
     */
    private String generateToken(Map<String, Object> claims) {
        return Jwts.builder()
                .setClaims(claims) // 荷载
                .setExpiration(generateExpirationDate()) // 过期时间，需要类型转换（本类内新建方法）
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    /**
     * 3. 生成 token 失效时间
     * 类型转换
     *
     * @return
     */
    private Date generateExpirationDate() {
        // 失效时间为：当前时间 + 配置的过期时间
        return new Date(System.currentTimeMillis() + expiration * 1000);
    }


}