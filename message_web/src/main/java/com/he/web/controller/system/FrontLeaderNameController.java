package com.he.web.controller.system;

import com.alibaba.dubbo.config.annotation.Reference;
import com.github.pagehelper.PageInfo;
import com.he.common.utils.Encrypt;
import com.he.common.utils.MailUtil;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;
import com.he.service.county.CountyService;
import com.he.service.system.FrontLeaderNameService;
import com.he.service.system.UserService;
import com.he.web.controller.BaseController;
import com.he.web.utils.MessageProducer;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/system/frontLeaderName")
public class FrontLeaderNameController extends BaseController {
    
    @Reference
    private FrontLeaderNameService frontLeaderNameService;

    @Reference
    private CountyService countyService;

    @Autowired
    private MessageProducer messageProducer;

    @Reference
    private UserService userService;


    @RequestMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1",required = false)int page,
            @RequestParam(defaultValue = "10",required = false)int size,
            @RequestParam(required = false) String findByParam
    ) {
        PageInfo info=frontLeaderNameService.findAll(page,size,findByParam);
        request.setAttribute("page",info);
        return "system/frontLeaderName/frontLeaderName-list";
    }

    @RequestMapping("/toAdd")
    public String toAdd() {

        //各个区域集合
        PageInfo list = countyService.findAll(1, 100,null);
        List countyList = list.getList();

        //职位集合
        Map<String,String> jobList=new HashMap<>();
        jobList.put("false","书记");
        jobList.put("true","区长");
        jobList.put("truetrue","市长");

        request.setAttribute("countyList",countyList);
        request.setAttribute("jobList",jobList);
        return "system/frontLeaderName/frontLeaderName-add";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Long id) {
        //领导个人信息
        Map<String,Object> frontLeaderName=frontLeaderNameService.findByLeaderId(id);

        //各个区域集合
        PageInfo list = countyService.findAll(1, 100,null);
        List countyList = list.getList();

        //职位集合
        Map<String,String> jobList=new HashMap<>();
        jobList.put("false","书记");
        jobList.put("true","区长");
        jobList.put("truetrue","市长");

        request.setAttribute("countyList",countyList);
        request.setAttribute("jobList",jobList);
        request.setAttribute("frontLeaderName",frontLeaderName);
        return "system/frontLeaderName/frontLeaderName-update";
    }

    @RequestMapping("/delete")
    public String delete(Long id) {
        frontLeaderNameService.delete(id);
        User user=new User();
        user.setId(String.valueOf(id));
        user.setState(0);
        userService.update(user);
        return "redirect:/system/frontLeaderName/list.do";
    }

    @RequestMapping(value = "/edit",name = "保存或者更新用户")
    public String edit(FrontLeaderName frontLeaderName) throws Exception {
        String email=frontLeaderName.getEmail();
        String password = RandomStringUtils.randomNumeric(6);
        String dePassword=Encrypt.md5(password,email);

        frontLeaderName.setPassword(dePassword);
        //判断是否具有id
        if(StringUtils.isEmpty(frontLeaderName.getId())) {
            //没有id，保存
            frontLeaderNameService.save(frontLeaderName);

            //向pe_user表中插入记录（最大的id值）
            FrontLeaderName maxId=frontLeaderNameService.findMaxId();
            User user=new User();
            user.setId(maxId.getId().toString());
            user.setEmail(maxId.getEmail());
            user.setUserName(maxId.getLeaderName());
            user.setPassword(maxId.getPassword());
            user.setState(1);
            user.setDegree(1);
            userService.save(user);

//            //发送邮件
            String to = frontLeaderName.getEmail();
            String subject = "欢迎使用Saas-Message系统";
            String content = "尊敬的用户您好,欢迎使用Saas-Message系统。您的访问地址是 http://127.0.0.1:8088 , 登录用户名："+
                    frontLeaderName.getEmail()+", 登录密码" + password;
            MailUtil.sendMsg(to,subject,content);

            //Map<String,String> map = new HashMap<>();
            //map.put("to", to);
            //map.put("subject", subject);
            //map.put("content", content);

            //messageProducer.send("frontLeaderName.insert", map);

        }else {
            //有id，更新
            frontLeaderNameService.update(frontLeaderName);

            //Long id=frontLeaderName.getId();
            //User user=new User();
            //user.setId(id.toString());
            //user.setEmail(email);
            //user.setPassword(dePassword);

            //userService.update(user);

        }
        //3、重定向到列表
        return "redirect:/system/frontLeaderName/list.do";
    }

}
