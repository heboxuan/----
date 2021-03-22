package com.he.web.controller.system;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import com.he.common.utils.Encrypt;
import com.he.domain.system.Dept;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.Role;
import com.he.service.system.DeptService;
import com.he.service.system.FrontLeaderNameService;
import com.he.service.system.RoleService;
import com.he.web.controller.BaseController;
import com.he.web.utils.MessageProducer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/system/frontLeaderName")
public class FrontLeaderNameController extends BaseController {
    
    @Reference
    private FrontLeaderNameService frontLeaderNameService;

    @Reference
    private DeptService deptService;
    @Reference
    private RoleService roleService;

    @Autowired
    private MessageProducer messageProducer;


    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1")int page,
            @RequestParam(defaultValue = "10")int size
    ) {
        PageInfo info=frontLeaderNameService.findAll(page,size);
        request.setAttribute("page",info);
        return "system/frontLeaderName/frontLeaderName-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        List<Dept> deptList = deptService.findAll(getLoginCompanyId());
        request.setAttribute("deptList",deptList);
        return "system/frontLeaderName/frontLeaderName-add";
    }



    @RequestMapping("/toUpdate")
    public String toUpdate(Long id) {
        FrontLeaderName frontLeaderName=frontLeaderNameService.findById(id);
        request.setAttribute("frontLeaderName",frontLeaderName);
        //List<Dept> deptList = deptService.findAll(getLoginCompanyId());
        //request.setAttribute("deptList",deptList);
        return "system/frontLeaderName/frontLeaderName-update";
    }
//
//    @RequestMapping("/delete")
//    public String delete(String id) {
//        frontLeaderNameService.delete(id);
//        return "redirect:/system/frontLeaderName/list.do";
//    }
//
//    @RequestMapping("/roleList")
//    public String roleList(String id) {
//        FrontLeaderName frontLeaderName = frontLeaderNameService.findById(id);
//        request.setAttribute("frontLeaderName",frontLeaderName);
//        List<Role> roleList=roleService.findAll(getLoginCompanyId());
//        request.setAttribute("roleList",roleList);
//        List<String> roles=frontLeaderNameService.findRolesByfrontLeaderNameId(id);
//        String frontLeaderNameRoleStr="";
//        for (String roleId : roles) {
//            frontLeaderNameRoleStr+=roleId+" ";
//        }
//        request.setAttribute("frontLeaderNameRoleStr",frontLeaderNameRoleStr);
//        return "system/frontLeaderName/frontLeaderName-role";
//    }
//
//    @RequestMapping("/changeRole")
//    public String changeRole(String frontLeaderNameid, String[] roleIds) {
//        frontLeaderNameService.changeRole(frontLeaderNameid,roleIds);
//        return "redirect:/system/frontLeaderName/list.do";
//    }
//
//    @RequestMapping(value = "/edit",name = "保存或者更新用户")
//    public String edit(FrontLeaderName frontLeaderName) throws Exception {
//        //1、设置企业参数
//        frontLeaderName.setCompanyId(getLoginCompanyId());
//        frontLeaderName.setCompanyName(getLoginCompanyName());
//        //2、判断是否具有id
//        if(StringUtils.isEmpty(frontLeaderName.getId())) {
//            String password = frontLeaderName.getPassword();
//            frontLeaderName.setPassword(Encrypt.md5(password,frontLeaderName.getEmail()));
//            //2.1 没有id，保存
//            frontLeaderNameService.save(frontLeaderName);
//
////            //发送邮件
//            String to = frontLeaderName.getEmail();
//            String subject = "欢迎使用Saas-Export系统";
//            String content = "尊敬的用户您好,欢迎使用Saas-Export系统。您的访问地址是 http://127.0.0.1:8088 , 登录用户名："+
//                    frontLeaderName.getEmail()+", 登录密码" + password;
//           // MailUtil.sendMsg(to,subject,content);
//
//            Map<String,String> map = new HashMap<>();
//            map.put("to", to);
//            map.put("subject", subject);
//            map.put("content", content);
//
//            messageProducer.send("frontLeaderName.insert", map);
//
//        }else {
//            //2.2 有id，更新
//            frontLeaderNameService.update(frontLeaderName);
//        }
//        //3、重定向到列表
//        return "redirect:/system/frontLeaderName/list.do";
//    }

}
