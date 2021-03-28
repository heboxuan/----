package com.he.service.system;

import com.he.domain.system.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    public abstract PageInfo findAll(String loginCompanyId, int page, int size);

    public abstract void save(User user);

    public abstract void update(User user);

    public abstract User findById(String id);

    public abstract void delete(String id);


    public abstract User findByEmail(String email);
}
