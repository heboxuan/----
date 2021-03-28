package com.he.web.controller;



import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseController {

    @Autowired
    protected HttpServletRequest request;

    @Autowired
    protected HttpServletResponse response;

    @Autowired
    protected HttpSession session;




    //获取当前登录的用户对象
    public User getLoginUser() {
        Object obj = session.getAttribute("loginUser");
        if(obj != null) {
            User user = (User) obj;
            return user;
        }
        return null;
    }
}
