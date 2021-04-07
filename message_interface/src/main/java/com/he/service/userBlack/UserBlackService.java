package com.he.service.userBlack;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:30 2021/4/7
 */
public interface UserBlackService {
    public abstract void userBlackAdd(String userId);

    public abstract List<Map<String, Object>> userBlackList();

}
