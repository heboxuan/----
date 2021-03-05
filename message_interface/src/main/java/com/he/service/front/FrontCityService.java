package com.he.service.front;

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

}
