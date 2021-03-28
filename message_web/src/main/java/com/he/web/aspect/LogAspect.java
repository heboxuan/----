package com.he.web.aspect;

import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.SysLog;
import com.he.domain.system.User;
import com.he.service.system.SysLogService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.util.Date;

@Component
@Aspect
public class LogAspect {
    @Reference
    private SysLogService sysLogService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    @AfterReturning(value = "execution(* com.he.web.controller.LoginController.login(..))")
    public Object afterReturning() throws Throwable {
        SysLog log=new SysLog();
        log.setIp(request.getRemoteAddr());
        log.setTime(new Date());
        Object obj = session.getAttribute("loginUser");
        if (obj!=null) {
            User user=(User) obj;
            log.setUserName(user.getUserName());
        }

        sysLogService.save(log);
        return null;
    }

}
