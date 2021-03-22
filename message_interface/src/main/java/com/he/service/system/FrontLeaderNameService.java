package com.he.service.system;

import com.github.pagehelper.PageInfo;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;

import java.util.List;

public interface FrontLeaderNameService {
    public abstract PageInfo findAll(int page, int size);

    //public abstract void save(User user);
    //
    //public abstract void update(User user);
    //
    public abstract FrontLeaderName findById(Long id);
    //
    //public abstract void delete(String id);
    //
    //public abstract List<String> findRolesByUserId(String id);
    //
    //public abstract void changeRole(String userid, String[] roleIds);
    //
    //public abstract User findByEmail(String email);
}
