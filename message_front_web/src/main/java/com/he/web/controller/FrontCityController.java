package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.service.front.FrontCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
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

    @GetMapping("/totalMessageOne")
    public String totalMessageOne() {
        //北京总留言与总回复数
        Map<String, Object> beijingTotal=frontCityService.totalMessageOne();
        request.setAttribute("beijingTotal",beijingTotal);
        return "forum/beijing";
    }
}
