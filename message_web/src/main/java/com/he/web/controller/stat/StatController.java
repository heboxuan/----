package com.he.web.controller.stat;

import com.he.service.stat.StatService;
import com.he.web.controller.BaseController;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/stat")
public class StatController extends BaseController {

    @Reference
    private StatService statService;

    @RequestMapping("/toCharts")
    public String toCharts(String chartsType) {
        return "stat/stat-"+chartsType;
    }

    /**
     * 通过ajax的请求请求，每个区的咨询总数,返回json
     */
    @RequestMapping("/findAskData")
    public @ResponseBody List findAskData() {
        return statService.findAskData();
    }

    /**
     * 通过ajax的请求请求，每个区的留言总数,返回json
     */
    @RequestMapping("/findResData")
    public @ResponseBody List findResData(){
        return statService.findResData();
    }

    @RequestMapping("/findOnlineData")
    public @ResponseBody List findOnlineData(){
        String loginUserId=(String)session.getAttribute("loginUserId");
        return statService.findOnlineData(loginUserId);
    }
}
