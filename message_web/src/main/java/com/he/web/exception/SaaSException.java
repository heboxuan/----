package com.he.web.exception;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * @Author: heboxuan
 * @Date: Created in 14:21 2021/1/28
 */
public class SaaSException implements HandlerInterceptor {
    //处理异常
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception ex) {

        ModelAndView mv = new ModelAndView();

        mv.setViewName("error");

        mv.addObject("errorMsg",ex.getMessage());

        ex.printStackTrace();

        return mv;
    }

}
