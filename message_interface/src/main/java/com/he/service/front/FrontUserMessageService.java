package com.he.service.front;

import com.he.domain.front.FrontUserMessage;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 15:34 2021/2/27
 */
public interface FrontUserMessageService {
    public abstract void saveUserMessage(FrontUserMessage frontUserMessage);

    public abstract boolean checkUsername(String username);

    public abstract boolean checkUserPhone(String userPhone);

    public abstract boolean checkEmail(String email);

    public abstract boolean loginform(String email, String password);

    public abstract FrontUserMessage findUserByEmail(String email);

    public abstract boolean sendSms(String telephone, String smsCode);

    public abstract FrontUserMessage loginByPhone(String telephone);

    public abstract List<Map<String, Object>> userCenterUnRes(Long id);

    public abstract List<Map<String, Object>> userCenterAlRes(Long id);

    public abstract void updateUserMessage(FrontUserMessage frontUserMessage);
}
