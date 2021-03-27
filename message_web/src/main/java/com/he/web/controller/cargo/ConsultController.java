package com.he.web.controller.cargo;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import com.he.domain.cargo.Contract;
import com.he.domain.system.User;
import com.he.service.cargo.ConsultService;
import com.he.web.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/cargo/consult")
public class ConsultController extends BaseController {
    @Reference
    private ConsultService consultService;

    @RequestMapping("/unlist")
    public String unlist(@RequestParam(defaultValue = "1",required = false) int page,
                       @RequestParam(defaultValue = "10",required = false) int size,
                       @RequestParam(required = false)String typeId
                       ) {
        User user = getLoginUser();
        Long leaderId=45L;
        PageInfo info = consultService.findUnAll(leaderId, typeId,page, size);
        request.setAttribute("page",info);
        return "cargo/consult/consult-list";
    }

    @RequestMapping("/allist")
    public String allist(@RequestParam(defaultValue = "1",required = false) int page,
                       @RequestParam(defaultValue = "10",required = false) int size,
                       @RequestParam(required = false)String typeId
    ) {
        User user = getLoginUser();
        Long leaderId=45L;
        PageInfo info = consultService.findAlAll(leaderId, typeId,page, size);
        request.setAttribute("page",info);
        return "cargo/consult/consult-list";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Long id) {
        //1.根据id查询
        Map<String,Object> leftMessageDetail = consultService.findLeftMessageById(id);
        request.setAttribute("leftMessageDetail",leftMessageDetail);
        return "cargo/consult/consult-update";
    }


    @RequestMapping("/edit")
    public String edit(Long id,String responsePassage) {

        if (StringUtils.isEmpty(responsePassage)) {
            consultService.edit(id,responsePassage);
        }
        //5.重定向到列表
        return  "redirect:/cargo/consult/unlist.do?typeId=1";
    }
}
