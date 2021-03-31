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
        String salty = Encrypt.md5(password1, email);
        frontUserMessage.setPassword1(salty);
        frontUserMessage.setPassword2(salty);
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
    public boolean loginform(String email, String password) {
        boolean flag=false;
        String check=frontUserMessageDao.loginform(email);
        if (!StringUtils.isEmpty(check)) {
            String answer = Encrypt.md5(password, email);
            if (answer.equals(check)) {
                flag=true;
            }
        }
        return flag;
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
        try {
            SendSmsResponse smsResponse = SmsUtils.sendSms(telephone, sigName, templateCode, param);
            if (smsResponse.getCode().equals("OK")) {
                //发送成功
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
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
}
