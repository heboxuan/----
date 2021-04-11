package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.common.utils.Encrypt;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontUserMessageService;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

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
        Map<String,String> check=frontUserMessageService.loginform(email,password);

        if (!StringUtils.isEmpty(check)) {
            String answer = Encrypt.md5(password, email);

            if ("true".equals(check.get("is_delete"))) {
                request.setAttribute("message","您已被拉入黑名单");
                return "login";
            }else{
                if (!(answer.equals(check.get("password1")))) {
                    request.setAttribute("message","邮箱或者密码错误");
                    return "login";
                }else{
                    FrontUserMessage userInfo=frontUserMessageService.findUserByEmail(email);
                    session.setAttribute("userInfo",userInfo);
                    return "redirect:/index.jsp";
                }
            }

        }else{
            request.setAttribute("message","邮箱或者密码错误");
            return "login";
        }
    }

    @PostMapping("/loginByPhone")
    public String loginByPhone(String telephone) {
        FrontUserMessage userInfo=frontUserMessageService.loginByPhone(telephone);

        if ("true".equals(userInfo.getIsDelete())) {
            request.setAttribute("message","您已被拉入黑名单");
            return "loginByPhone";
        }
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

    @GetMapping("/userCenterUnRes")
    public String userCenterUnRes() {
        FrontUserMessage userInfo=(FrontUserMessage)session.getAttribute("userInfo");
        List<Map<String,Object>> userUnlists=frontUserMessageService.userCenterUnRes(userInfo.getId());
        request.setAttribute("userUnlists",userUnlists);
        return "userCenterUnRes";
    }

    @GetMapping("/userCenterAlRes")
    public String userCenterAlRes() {
        FrontUserMessage userInfo=(FrontUserMessage)session.getAttribute("userInfo");
        List<Map<String,Object>> userAllists=frontUserMessageService.userCenterAlRes(userInfo.getId());
        request.setAttribute("userAllists",userAllists);
        return "userCenterAlRes";
    }

    @GetMapping("/userDetail")
    public String userDetail() {
        //FrontUserMessage userInfo=(FrontUserMessage)session.getAttribute("userInfo");
        //userInfo.setPassword1(userInfo.getPassword2());
        //request.setAttribute("userInfo",userInfo);
        return "redirect:/updateUser.jsp";
    }

    @PostMapping("/updateUserMessage")
    public String updateUserMessage(FrontUserMessage frontUserMessage) {
        frontUserMessageService.updateUserMessage(frontUserMessage);
        return "redirect:/frontUserMessage/userCenterUnRes.do";
    }




}
