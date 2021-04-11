package com.he.dao.front;

import com.he.domain.front.FrontUserMessage;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 15:32 2021/2/27
 */
public interface FrontUserMessageDao {
    public abstract void saveUserMessage(FrontUserMessage frontUserMessage);

    public abstract String checkUsername(String username);

    public abstract String checkUserPhone(String userPhone);

    public abstract String checkEmail(String email);

    public abstract Map<String,String> loginform(String email);

    public abstract FrontUserMessage findUserByEmail(String email);

    public abstract FrontUserMessage loginByPhone(String telephone);

    public abstract void updateByUserId(FrontUserMessage frontUserMessage);

    public abstract List<Map<String, Object>> userBlackList(@Param("findByParam") String findByParam);
}
