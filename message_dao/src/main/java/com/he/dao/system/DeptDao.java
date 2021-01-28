package com.he.dao.system;


import com.he.domain.system.Dept;

import java.util.List;

public interface DeptDao {

    public abstract List<Dept> findAll(String companyId);

    public abstract Dept findById(String id);

    public abstract void save(Dept dept);

    public abstract void update(Dept dept);

    public abstract void delete(String id);
}