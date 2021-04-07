package com.he.web.controller.userBlack;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.service.userBlack.UserBlackService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:28 2021/4/7
 */
@Controller
@RequestMapping("/userBlack")
public class UserBlackController {

    @Reference
    private UserBlackService userBlackService;

    @GetMapping("/toAdd")
    public String userBlackAdd(String userId) {
        userBlackService.userBlackAdd(userId);
        return "redirect:/userBlack/toList.do";
    }

    @GetMapping("/toList")
    public String userBlackList() {
        List<Map<String,Object>> list=userBlackService.userBlackList();
        return null;
    }


}
