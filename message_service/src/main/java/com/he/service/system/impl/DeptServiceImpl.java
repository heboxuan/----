package com.he.service.system.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.he.dao.system.DeptDao;
import com.he.domain.system.Dept;
import com.he.service.system.DeptService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptDao deptDao;

    @Override
    public PageInfo findAll(String companyId, int page, int size) {
        PageHelper.startPage(page,size);
        List<Dept> list=deptDao.findAll(companyId);
        return new PageInfo(list);
    }
    @Override
    public List<Dept> findAll(String loginCompanyId) {
        return deptDao.findAll(loginCompanyId);
    }
    @Override
    public void save(Dept dept) {
        dept.setId(UUID.randomUUID().toString());
        deptDao.save(dept);
    }
    @Override
    public void update(Dept dept) {
        deptDao.update(dept);
    }
    @Override
    public Dept findById(String id) {
        return deptDao.findById(id);
    }
    @Override
    public void delete(String id) {
        deptDao.delete(id);
    }
}
