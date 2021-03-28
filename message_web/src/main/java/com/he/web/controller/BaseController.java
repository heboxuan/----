package com.he.web.controller;



import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContext;
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

    @Autowired
    protected ServletContext servletContext;




    //获取当前登录的用户对象
    public String getLoginUser() {
        //Object obj =servletContext.getAttribute("loginUser");
        Object obj = session.getAttribute("loginUserId");
        if(obj != null) {
            String userId = (String) obj;
            return userId;
        }
        return null;
    }
}
