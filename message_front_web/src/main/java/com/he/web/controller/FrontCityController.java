package com.he.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.he.domain.front.FrontLeftMessage;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * @Author: heboxuan
 * @Date: Created in 20:20 2021/3/3
 */
@Controller
@RequestMapping("/frontCity")
public class FrontCityController {
    @Reference
    private FrontCityService frontCityService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    @GetMapping("/totalMessageOne")
    public String totalMessageOne() {
        //北京总留言与总回复数
        Map<String, Object> beijingTotal=frontCityService.totalMessageOne();
        //北京各个区总留言与总回复数
        List<Map<String,Object>> countyTotal=frontCityService.totalMessageTwo();
        //北京市市委书记
        Map<String,Object> beijingLeaderOne=frontCityService.totalMessageFour();
        //北京市市长
        Map<String,Object> beijingLeaderTwo=frontCityService.totalMessageFive();

        request.setAttribute("beijingTotal",beijingTotal);
        request.setAttribute("countyTotal",countyTotal);
        request.setAttribute("beijingLeaderOne",beijingLeaderOne);
        request.setAttribute("beijingLeaderTwo",beijingLeaderTwo);
        return "forum/beijing";
    }

    @GetMapping("/totalMessageTwo")
    public String totalMessageTwo(Long id) {
        //每个区详细总留言与总回复数
        Map<String,Object> countyDetail=frontCityService.totalMessageThree(id);
        //每个区区委书记
        Map<String,Object> countyLeaderOne=frontCityService.totalMessageSix(id);
        //每个区区长
        Map<String,Object> countyLeaderTwo=frontCityService.totalMessageSeven(id);

        request.setAttribute("countyDetail",countyDetail);
        request.setAttribute("countyLeaderOne",countyLeaderOne);
        request.setAttribute("countyLeaderTwo",countyLeaderTwo);
        return "forum/county";
    }

    @GetMapping("/checkLogin")
    public String checkLogin(Long id) {
        //判断是否登录，登录才能留言
        Object userInfo = session.getAttribute("userInfo");
        if (userInfo==null) {
            return "redirect:/needlogin.jsp";
        }else{
            request.setAttribute("leaderId",id);
            return "forum/leftMessage";
        }
    }

    @GetMapping("/checkCodeServlet")
    public void checkCodeServlet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //  创建画布
        int width = 120;
        int height = 40;
        BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //  获得画笔
        Graphics g = bufferedImage.getGraphics();
        //  填充背景颜色
        g.setColor(Color.white);
        g.fillRect(0, 0, width, height);
        //  绘制边框
        g.setColor(Color.red);
        g.drawRect(0, 0, width - 1, height - 1);
        //  生成随机字符
        //  准备数据
        String data = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
        //  准备随机对象
        Random r = new Random();
        //  声明一个变量 保存验证码
        String code = "";
        //  书写4个随机字符
        for (int i = 0; i < 4; i++) {
            //  设置字体
            g.setFont(new Font("宋体", Font.BOLD, 28));
            //  设置随机颜色
            g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));

            String str = data.charAt(r.nextInt(data.length())) + "";
            g.drawString(str, 10 + i * 28, 30);

            //  将新的字符 保存到验证码中
            code = code + str;
        }
        //  绘制干扰线
        for (int i = 0; i < 6; i++) {
            //  设置随机颜色
            g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));

            g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));
        }

        //  将验证码 打印到控制台
        System.out.println(code);

        //  将验证码放到session中
        request.getSession().setAttribute("code_session", code);

        //  将画布显示在浏览器中
        ImageIO.write(bufferedImage, "jpg", response.getOutputStream());


    }

    @GetMapping("/varCodeCheck")
    @ResponseBody
    public Boolean varCodeCheck(String varCode) {
        String checkSmsCode = (String)session.getAttribute("code_session");
        if (varCode.equals(checkSmsCode)) {
            return true;
        }else{
            return false;
        }
    }

    @PostMapping("/saveLeftMessage")
    public void saveLeftMessage(String leaderId,String typeId,String field,
                                String title,String passage,String askPassage,
                                String extraPassage,String trueUsername,String messagePhone,
                                String extraMessage) {

        FrontUserMessage userInfo = (FrontUserMessage)session.getAttribute("userInfo");
        Long userId = userInfo.getId();

        //留言信息
        FrontLeftMessage frontLeftMessage=new FrontLeftMessage();
        frontLeftMessage.setLeaderId(Long.valueOf(leaderId));
        frontLeftMessage.setTypeId(typeId);
        frontLeftMessage.setField(field);
        frontLeftMessage.setTitle(title);
        frontLeftMessage.setPassage(passage);
        if ("2".equals(typeId)) {
            frontLeftMessage.setAskPassage(askPassage);
            frontLeftMessage.setExtraPassage(extraPassage);
        }else{
            frontLeftMessage.setAskPassage(null);
            frontLeftMessage.setExtraPassage(null);
        }
        frontLeftMessage.setUserId(userId);
        frontLeftMessage.setIsProcess("false");
        frontLeftMessage.setTime(new Date());

        //留言用户隐私信息
        FrontUserMessage frontUserMessage=new FrontUserMessage();
        frontUserMessage.setTrueUsername(trueUsername);
        frontUserMessage.setMessagePhone(messagePhone);
        frontUserMessage.setExtraMessage(extraMessage);
        frontUserMessage.setId(userId);

        frontCityService.saveLeftMessage(frontLeftMessage,frontUserMessage);

    }

}
