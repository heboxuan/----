package com.he.web.shiro;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.AuthorizationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;

/**
 * @Author: heboxuan
 * @Date: Created in 16:21 2021/1/30
 */
/**
 * 自定义shiro过滤器，继承父类AuthorizationFilter
 *      重写isAccessAllowed方法
 *
 */
public class MyPermissionsFilter extends AuthorizationFilter {


    /**
     *  判断是否具有某种权限
     *      /company/list.do = perms["企业管理","部门管理"]
     *  mappedValue : xml过滤器配置的所需权限
     *      mappedValue：string数组
     *  返回值
     *      true：具有权限（正常访问方法执行）
     *      false：没有权限（跳转到指定的权限不足页面）
     *  subject.isPermitted:
     *      验证用户是否具有指定权限
     *          true：有
     *          false：没有
     *  需求：
     *      对于传入的多个权限数据，只需要满足一项返回true即可
     */
    @Override
    public boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws IOException {
        //1、获取subject
        Subject subject = this.getSubject(request, response);
        //2、获取过滤器中的所需权限
        String[] perms = (String[])((String[])mappedValue); // ["企业管理","部门管理"]
        if(perms !=null && perms.length>0) {
            for (String perm : perms) {
                if(subject.isPermitted(perm)) {
                    return true;
                }
            }
            return false;
        }else{
            return true;
        }
    }
}

