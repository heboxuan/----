package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 20:20 2021/3/3
 */
@Controller
@RequestMapping("/frontCity")
public class FrontCityController {
    @Reference
    private FrontCityService frontCityService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    @GetMapping("/totalMessageOne")
    public String totalMessageOne() {
        //北京总留言与总回复数
        Map<String, Object> beijingTotal=frontCityService.totalMessageOne();
        //北京各个区总留言与总回复数
        List<Map<String,Object>> countyTotal=frontCityService.totalMessageTwo();
        //北京市市委书记
        Map<String,Object> beijingLeaderOne=frontCityService.totalMessageFour();
        //北京市市长
        Map<String,Object> beijingLeaderTwo=frontCityService.totalMessageFive();

        request.setAttribute("beijingTotal",beijingTotal);
        request.setAttribute("countyTotal",countyTotal);
        request.setAttribute("beijingLeaderOne",beijingLeaderOne);
        request.setAttribute("beijingLeaderTwo",beijingLeaderTwo);
        return "forum/beijing";
    }

    @GetMapping("/totalMessageTwo")
    public String totalMessageTwo(Long id) {
        //每个区详细总留言与总回复数
        Map<String,Object> countyDetail=frontCityService.totalMessageThree(id);
        //每个区区委书记
        Map<String,Object> countyLeaderOne=frontCityService.totalMessageSix(id);
        //每个区区长
        Map<String,Object> countyLeaderTwo=frontCityService.totalMessageSeven(id);

        request.setAttribute("countyDetail",countyDetail);
        request.setAttribute("countyLeaderOne",countyLeaderOne);
        request.setAttribute("countyLeaderTwo",countyLeaderTwo);
        return "forum/county";
    }

    @GetMapping("/checkLogin")
    public String checkLogin() {
        //判断是否登录，登录才能留言
        Object userInfo = session.getAttribute("userInfo");
        if (userInfo==null) {
            return "redirect:/needlogin.jsp";
        }else{
            return "forum/leftMessage";
        }
    }


}
