package com.he.dao.front;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 20:18 2021/3/3
 */
public interface FrontCityDao {
    public abstract Map<String, Object> totalMessageOne();

    public abstract List<Map<String,Object>> totalMessageTwo();

    public abstract Map<String, Object> totalMessageThree(Long id);

    public abstract void updateById(Long cityId);
}
