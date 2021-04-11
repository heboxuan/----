package com.he.web.controller.userBlack;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.service.userBlack.UserBlackService;
import com.he.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:28 2021/4/7
 */
@Controller
@RequestMapping("/userBlack")
public class UserBlackController extends BaseController {

    @Reference
    private UserBlackService userBlackService;

    @GetMapping("/toAdd")
    public String userBlackAdd(String userId) {
        userBlackService.userBlackAdd(userId);
        return "redirect:/userBlack/toList.do";
    }

    @RequestMapping(value = "/toList",method = {RequestMethod.GET,RequestMethod.POST})
    public String userBlackList() {
        List<Map<String,Object>> list=userBlackService.userBlackList();
        request.setAttribute("list",list);
        return "userBlack/userBlack-list";
    }


}
