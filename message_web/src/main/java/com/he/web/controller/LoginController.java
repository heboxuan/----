package com.he.web.controller;


import com.he.domain.system.Module;
import com.he.domain.system.User;
import com.he.service.system.ModuleService;
import com.he.service.system.UserService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class LoginController extends BaseController{

    @Reference
    private UserService userService;
    @Reference
    private ModuleService moduleService;

	@RequestMapping("/login")
	public String login(String email,String password) {
        if (StringUtils.isEmpty(email)||StringUtils.isEmpty(password)) {
            return "forward:/login.jsp";
        }

        try {
            Subject subject = SecurityUtils.getSubject();
            UsernamePasswordToken upToken = new UsernamePasswordToken(email, password);
            subject.login(upToken);
            User user=(User)subject.getPrincipal();
            session.setAttribute("loginUser",user);
            List<Module> list = moduleService.findByUser(user);
            System.out.println("123456"+moduleService.findAll());
            session.setAttribute("modules",list);
            return "home/main";
        } catch (Exception e) {
            //System.out.println(moduleService.findAll());
            request.setAttribute("error","用户名或者密码错误");
            return "forward:/login.jsp";
        }

	}

    //退出
    @RequestMapping(value = "/logout",name="用户登出")
    public String logout(){
        //SecurityUtils.getSubject().logout();   //登出
        SecurityUtils.getSubject().logout();
        return "forward:login.jsp";
    }

    @RequestMapping("/home")
    public String home(){
	    return "home/home";
    }
}
