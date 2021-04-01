package com.he.web.controller.cargo;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import com.he.service.cargo.ConsultService;
import com.he.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/cargo/advise")
public class AdviseController extends BaseController {
    @Reference
    private ConsultService consultService;

    @RequestMapping("/unlist")
    public String unlist(@RequestParam(defaultValue = "1",required = false) int page,
                       @RequestParam(defaultValue = "10",required = false) int size,
                       @RequestParam(required = false)String typeId,
                         @RequestParam(required = false)String findByParam
                       ) {
        String loginUserId = getLoginUser();
        PageInfo info = consultService.findUnAll(Long.valueOf(loginUserId), typeId,page, size,findByParam);
        request.setAttribute("page",info);
        request.setAttribute("url","unlist");
        return "cargo/advise/advise-list";
    }

    @RequestMapping("/allist")
    public String allist(@RequestParam(defaultValue = "1",required = false) int page,
                       @RequestParam(defaultValue = "10",required = false) int size,
                       @RequestParam(required = false)String typeId,
                         @RequestParam(required = false)String findByParam
    ) {
        //User user = getLoginUser();
        String loginUserId = getLoginUser();
        PageInfo info = consultService.findAlAll(Long.valueOf(loginUserId), typeId,page, size,findByParam);
        request.setAttribute("page",info);
        request.setAttribute("url","allist");
        return "cargo/advise/advise-list";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Long id) {

        Map<String,Object> leftMessageDetail = consultService.findLeftMessageById(id);
        request.setAttribute("leftMessageDetail",leftMessageDetail);
        return "cargo/advise/advise-update";
    }


    @RequestMapping("/edit")
    public String edit(Long id,String responsePassage) {

        if (!StringUtils.isEmpty(responsePassage)) {
            consultService.edit(id,responsePassage);
        }

        if (StringUtils.isEmpty(responsePassage)) {
            consultService.edit(id,null);
        }


        return  "redirect:/cargo/advise/unlist.do?typeId=5";
    }
}
