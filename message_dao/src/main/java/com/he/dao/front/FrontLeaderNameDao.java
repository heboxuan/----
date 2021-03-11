package com.he.dao.front;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:25 2021/3/5
 */
public interface FrontLeaderNameDao {
    public abstract Map<String, Object> totalMessageFour();

    public abstract Map<String, Object> totalMessageFive();

    public abstract Map<String, Object> totalMessageSix(Long id);

    public abstract Map<String, Object> totalMessageSeven(Long id);
}
