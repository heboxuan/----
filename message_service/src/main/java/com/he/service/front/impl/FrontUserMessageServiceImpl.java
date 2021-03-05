package com.he.service.front.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.he.common.utils.Encrypt;
import com.he.dao.front.FrontUserMessageDao;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontUserMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

/**
 * @Author: heboxuan
 * @Date: Created in 15:35 2021/2/27
 */
@Service
public class FrontUserMessageServiceImpl implements FrontUserMessageService {
    @Autowired
    private FrontUserMessageDao frontUserMessageDao;

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
}
