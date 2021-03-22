package com.he.service.system.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.he.dao.system.FrontLeaderNameDao;
import com.he.dao.system.UserDao;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.system.User;
import com.he.service.system.FrontLeaderNameService;
import com.he.service.system.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@Transactional
public class FrontLeaderNameServiceImpl implements FrontLeaderNameService {

    @Autowired
    private FrontLeaderNameDao frontLeaderNameDao;

    @Override
    public PageInfo findAll(int page, int size) {
        PageHelper.startPage(page,size);
        String isDelete="false";
        List<Map<String,Object>> list = frontLeaderNameDao.findAll(isDelete);
        return new PageInfo(list);
    }

    //@Override
    //public void save(User user) {
    //    user.setId(UUID.randomUUID().toString());
    //    userDao.save(user);
    //}
    //
    //@Override
    //public void update(User user) {
    //    userDao.update(user);
    //}
    //
    @Override
    public FrontLeaderName findById(Long id) {
        return frontLeaderNameDao.findById(id);
    }
    //
    //@Override
    //public void delete(String id) {
    //    userDao.delete(id);
    //}
    //
    //@Override
    //public List<String> findRolesByUserId(String id) {
    //    return userDao.findRolesByUserId(id);
    //}
    //
    //@Override
    //public void changeRole(String userid, String[] roleIds) {
    //    userDao.deleteUserRole(userid);
    //    for (String roleId : roleIds) {
    //        userDao.saveUserRole(userid,roleId);
    //    }
    //}
    //
    //@Override
    //public User findByEmail(String email) {
    //    return userDao.findByEmail(email);
    //}
}
