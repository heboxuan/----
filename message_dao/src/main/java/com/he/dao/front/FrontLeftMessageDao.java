package com.he.dao.front;

import com.he.domain.front.FrontLeftMessage;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 16:00 2021/3/14
 */
public interface FrontLeftMessageDao {
    public abstract void saveLeftMessage(FrontLeftMessage frontLeftMessage);

    public abstract List<Map<String, Object>> findByLeaderId(String id);
}
