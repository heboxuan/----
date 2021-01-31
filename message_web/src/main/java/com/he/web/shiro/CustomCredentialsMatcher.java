package com.he.web.shiro;

import com.he.common.utils.Encrypt;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * @Author: heboxuan
 * @Date: Created in 15:14 2021/1/30
 */
public class CustomCredentialsMatcher extends SimpleCredentialsMatcher {

    /**
     * 密码比较方法
     * @param token
     * @param info
     * @return
     */
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        String email = upToken.getUsername();
        String password = new String(upToken.getPassword());
        String dbPassword = (String)info.getCredentials();
        password = Encrypt.md5(password, email);
        return dbPassword.equals(password);
    }
}
