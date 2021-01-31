package com.he.service.system;

import com.he.domain.system.Module;
import com.he.domain.system.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ModuleService {
    public abstract PageInfo findAll(int page, int size);

    public abstract List<Module> findAll();

    public abstract void save(Module module);

    public abstract void update(Module module);

    public abstract Module findById(String id);

    public abstract void delete(String id);

    public abstract List<Module> findByUser(User user);
}
