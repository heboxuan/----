package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontUserMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Author: heboxuan
 * @Date: Created in 15:36 2021/2/27
 */
@Controller
@RequestMapping("/frontUserMessage")
public class FrontUserMessageController {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    @Reference
    private FrontUserMessageService frontUserMessageService;

    @PostMapping("/saveUserMessage")
    public String saveUserMessage(FrontUserMessage frontUserMessage) {
        frontUserMessageService.saveUserMessage(frontUserMessage);
        return "redirect:/login.jsp";
    }

    @GetMapping("/checkUsername")
    @ResponseBody
    public Boolean checkUsername(String username) {
        boolean flag=frontUserMessageService.checkUsername(username);
        return flag;
    }

    @GetMapping("/checkUserPhone")
    @ResponseBody
    public Boolean checkUserPhone(String userPhone) {
        boolean flag=frontUserMessageService.checkUserPhone(userPhone);
        return flag;
    }

    @GetMapping("/checkEmail")
    @ResponseBody
    public Boolean checkEmail(String email) {
        boolean flag=frontUserMessageService.checkEmail(email);
        return flag;
    }

    @PostMapping("/loginform")
    public String loginform(String email,String password) {
        boolean flag=frontUserMessageService.loginform(email,password);
        if (!flag) {
            request.setAttribute("message","邮箱或者密码错误");
            return "login";
        }
        FrontUserMessage userInfo=frontUserMessageService.findUserByEmail(email);
        session.setAttribute("userInfo",userInfo);
        return "redirect:/index.jsp";
    }

    @GetMapping("/logut")
    public String logut() {
        session.removeAttribute("userInfo");
        return "redirect:/index.jsp";
    }

}
