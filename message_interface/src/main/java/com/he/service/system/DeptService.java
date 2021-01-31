package com.he.service.system;

import com.he.domain.system.Dept;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface DeptService {
    public abstract PageInfo findAll(String loginCompanyId, int page, int size);

    public abstract List<Dept> findAll(String loginCompanyId);

    public abstract void save(Dept dept);

    public abstract void update(Dept dept);

    public abstract Dept findById(String id);

    public abstract void delete(String id);
}
