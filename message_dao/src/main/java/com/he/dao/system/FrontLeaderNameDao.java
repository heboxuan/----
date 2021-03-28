package com.he.dao.system;

import com.he.domain.system.FrontLeaderName;

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

    public abstract FrontLeaderName findById(Long leaderId);

    public abstract Map<String,Object> findByLeaderId(Long leaderId);

    public abstract List<Map<String,Object>> findAll(String isDelete);

    public abstract void save(FrontLeaderName frontLeaderName);

    public abstract void update(FrontLeaderName frontLeaderName);

    public abstract void delete(Long id);

    public abstract FrontLeaderName findByEmail(String email);
}
