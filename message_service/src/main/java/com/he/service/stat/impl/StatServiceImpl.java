package com.he.service.stat.impl;

import com.he.dao.county.FrontCityDao;
import com.he.service.stat.StatService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class StatServiceImpl implements StatService {

    @Autowired
    private FrontCityDao frontCityDao;

    //每个区的留言总数
    @Override
    public List<Map> findAskData() {
        return frontCityDao.findAskData();
    }

    //每个区的咨询总数
    @Override
    public List<Map> findResData() {
        return frontCityDao.findResData();
    }

    //系统访问压力图数据
    @Override
    public List<Map> findOnlineData(String loginUserId) {
        return frontCityDao.findOnlineData(loginUserId);
        //return statDao.findOnlineData(companyId);
    }
}

