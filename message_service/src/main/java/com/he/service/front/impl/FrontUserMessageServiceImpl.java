package com.he.service.front.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.he.common.utils.Encrypt;
import com.he.common.utils.SmsUtils;
import com.he.dao.front.FrontLeftMessageDao;
import com.he.dao.front.FrontUserMessageDao;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontUserMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 15:35 2021/2/27
 */
@Service
@Transactional
public class FrontUserMessageServiceImpl implements FrontUserMessageService {

    @Autowired
    private FrontUserMessageDao frontUserMessageDao;

    @Autowired
    private FrontLeftMessageDao frontLeftMessageDao;

    @Override
    public void saveUserMessage(FrontUserMessage frontUserMessage) {
        String password1 = frontUserMessage.getPassword1();
        String email = frontUserMessage.getEmail();
        String dePassword = Encrypt.md5(password1, email);
        frontUserMessage.setPassword1(dePassword);
        frontUserMessage.setPassword2(dePassword);
        frontUserMessage.setIsDelete("false");
        frontUserMessageDao.saveUserMessage(frontUserMessage);
    }

    @Override
    public boolean checkUsername(String username) {
        boolean flag=false;
        if (StringUtils.isEmpty(frontUserMessageDao.checkUsername(username))) {
            flag=true;
        }
        return flag;
    }

    @Override
    public boolean checkUserPhone(String userPhone) {
        boolean flag=false;
        if (StringUtils.isEmpty(frontUserMessageDao.checkUserPhone(userPhone))) {
            flag=true;
        }
        return flag;
    }

    @Override
    public boolean checkEmail(String email) {
        boolean flag=false;
        if (StringUtils.isEmpty(frontUserMessageDao.checkEmail(email))) {
            flag=true;
        }
        return flag;
    }

    @Override
    public Map<String,String> loginform(String email, String password) {
        Map<String,String> check=frontUserMessageDao.loginform(email);
        return check;
    }

    @Override
    public FrontUserMessage findUserByEmail(String email) {
        FrontUserMessage userInfo=frontUserMessageDao.findUserByEmail(email);
        return userInfo;
    }

    @Override
    public boolean sendSms(String telephone, String smsCode) {
        //指定签名
        String sigName="fighting商城";
        //指定模板
        String templateCode="SMS_202810495";
        //拼接验证码参数
        String param="{\"code\":"+smsCode+"}";
        //try {
        //    SendSmsResponse smsResponse = SmsUtils.sendSms(telephone, sigName, templateCode, param);
        //    if (smsResponse.getCode().equals("OK")) {
        //        //发送成功
        //        return true;
        //    }
        //} catch (Exception e) {
        //    e.printStackTrace();
        //}
        return true;
    }

    @Override
    public FrontUserMessage loginByPhone(String telephone) {
        FrontUserMessage userInfo=frontUserMessageDao.loginByPhone(telephone);
        return userInfo;
    }

    @Override
    public List<Map<String, Object>> userCenterUnRes(Long id) {
        List<Map<String,Object>> userUnlists=frontLeftMessageDao.userCenterUnResByUserId(id);
        return userUnlists;
    }

    @Override
    public List<Map<String, Object>> userCenterAlRes(Long id) {
        List<Map<String,Object>> userAllists=frontLeftMessageDao.userCenterAlRes(id);
        return userAllists;
    }

    @Override
    public void updateUserMessage(FrontUserMessage frontUserMessage) {
        String password = frontUserMessage.getPassword1();
        if (!StringUtils.isEmpty(password)) {
            String enPassword = Encrypt.md5(password, frontUserMessage.getEmail());
            frontUserMessage.setPassword1(enPassword);
            frontUserMessage.setPassword2(enPassword);
        }
        frontUserMessageDao.updateByUserId(frontUserMessage);
    }
}
