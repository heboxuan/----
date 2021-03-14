package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontUserMessageService;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
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
        return "redirect:/regUserSuccess.jsp";
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

    @GetMapping("/checkSmsCode")
    @ResponseBody
    public Boolean checkSmsCode(String smsCode,String userPhone) {
        String checkSmsCode = (String)session.getAttribute("smsCode_" + userPhone);
        if (smsCode.equals(checkSmsCode)) {
            return true;
        }else{
            return false;
        }
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

    @PostMapping("/loginByPhone")
    public String loginByPhone(String telephone) {
        FrontUserMessage userInfo=frontUserMessageService.loginByPhone(telephone);
        session.setAttribute("userInfo",userInfo);
        return "redirect:/index.jsp";
    }

    @GetMapping("/logut")
    public String logut() {
        session.removeAttribute("userInfo");
        return "redirect:/index.jsp";
    }

    @GetMapping("/sendSms")
    @ResponseBody
    public boolean sendSms() {
        String telephone = request.getParameter("telephone");
        //6位验证码
        String smsCode = RandomStringUtils.randomNumeric(6);
        boolean result=frontUserMessageService.sendSms(telephone,smsCode);
        if (result) {
            session.setAttribute("smsCode_"+telephone,smsCode);
            System.out.println("验证码是："+smsCode);
        }
        return result;
    }
}
