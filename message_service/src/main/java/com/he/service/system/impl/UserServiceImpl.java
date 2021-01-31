package com.he.service.system.impl;

import com.he.dao.system.UserDao;
import com.he.domain.system.User;
import com.he.service.system.UserService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public PageInfo findAll(String companyId, int page, int size) {
        PageHelper.startPage(page,size);
        List<User> list = userDao.findAll(companyId);
        return new PageInfo(list);
    }

    @Override
    public void save(User user) {
        user.setId(UUID.randomUUID().toString());
        userDao.save(user);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public User findById(String id) {
        return userDao.findById(id);
    }

    @Override
    public void delete(String id) {
        userDao.delete(id);
    }

    @Override
    public List<String> findRolesByUserId(String id) {
        return userDao.findRolesByUserId(id);
    }

    @Override
    public void changeRole(String userid, String[] roleIds) {
        userDao.deleteUserRole(userid);
        for (String roleId : roleIds) {
            userDao.saveUserRole(userid,roleId);
        }
    }

    @Override
    public User findByEmail(String email) {
        return userDao.findByEmail(email);
    }
}
