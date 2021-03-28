package com.he.web.shiro;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.Module;
import com.he.domain.system.User;
import com.he.service.system.FrontLeaderNameService;
import com.he.service.system.ModuleService;
import com.he.service.system.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @Author: heboxuan
 * @Date: Created in 15:10 2021/1/30
 */
public class AuthRealm extends AuthorizingRealm {

    @Reference
    private UserService userService;

    @Reference
    private ModuleService moduleService;

    /**
     * 授权方法
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user=(User)principalCollection.getPrimaryPrincipal();
        List<Module> modules = moduleService.findByUser(user);
        Set<String> permissions=new HashSet<>();
        for (Module module : modules) {
            permissions.add(module.getName());
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setStringPermissions(permissions);
        return info;
    }

    /**
     * 认证方法
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken upToken=(UsernamePasswordToken )authenticationToken;
        String email = upToken.getUsername();
        String password = new String(upToken.getPassword());
        User user = userService.findByEmail(email);
        if (user != null) {
            return new SimpleAuthenticationInfo(user, user.getPassword(), getName());
        } else {
            return null;
        }

    }
}
