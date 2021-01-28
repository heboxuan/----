package com.he.web.controller;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Author: heboxuan
 * @Date: Created in 14:25 2021/1/28
 */
public class BaseController {
    @Autowired
    protected HttpServletRequest request;

    @Autowired
    protected HttpSession session;
}
