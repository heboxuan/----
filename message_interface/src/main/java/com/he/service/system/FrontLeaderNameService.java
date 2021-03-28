package com.he.service.system;

import com.github.pagehelper.PageInfo;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;

import java.util.List;
import java.util.Map;

public interface FrontLeaderNameService {
    public abstract PageInfo findAll(int page, int size);

    public abstract void save(FrontLeaderName frontLeaderName);

    public abstract void update(FrontLeaderName frontLeaderName);

    public abstract FrontLeaderName findById(Long id);

    public abstract void delete(Long id);

    public abstract Map<String, Object> findByLeaderId(Long id);

    public abstract FrontLeaderName findByEmail(String email);
}
