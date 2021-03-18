package com.he.service.front;

import com.he.domain.front.FrontLeftMessage;
import com.he.domain.front.FrontUserMessage;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 20:21 2021/3/3
 */
public interface FrontCityService {
    public abstract Map<String, Object> totalMessageOne();

    public abstract List<Map<String,Object>> totalMessageTwo();

    public abstract Map<String, Object> totalMessageThree(Long id);

    public abstract Map<String, Object> totalMessageFour();

    public abstract Map<String, Object> totalMessageFive();

    public abstract Map<String, Object> totalMessageSix(Long id);

    public abstract Map<String, Object> totalMessageSeven(Long id);

    public abstract void saveLeftMessage(FrontLeftMessage frontLeftMessage, FrontUserMessage frontUserMessage);

    public abstract Map<String,Object> messageList(String id);

    public abstract Map<String, Object> messageDetail(String id);
}
