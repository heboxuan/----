package com.he.service.system.impl;

import com.he.dao.system.ModuleDao;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.Module;
import com.he.domain.system.User;
import com.he.service.system.ModuleService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class ModuleServiceImpl implements ModuleService {
    @Autowired
    private ModuleDao moduleDao;

    @Override
    public PageInfo findAll(int page, int size,String findByParam) {
        PageHelper.startPage(page,size);
        List<Module> list = moduleDao.findAll(findByParam);
        return new PageInfo(list);
    }

    @Override
    public List<Module> findAll() {
        return moduleDao.findAll(null);
    }

    @Override
    public void save(Module module) {
        module.setId(UUID.randomUUID().toString());
        moduleDao.save(module);
    }

    @Override
    public void update(Module module) {
        moduleDao.update(module);
    }

    @Override
    public Module findById(String id) {
        return moduleDao.findById(id);
    }

    @Override
    public void delete(String id) {
        moduleDao.delete(id);
    }

    @Override
    public List<Module> findByUser(User user) {
        Integer degree = user.getDegree();
        if (degree==0) {
            return moduleDao.findByBelong(0);
        }else if(degree==1){
            return moduleDao.findByBelong(1);
        }else {
            return moduleDao.findByUserId(user.getId());
        }
    }

}
