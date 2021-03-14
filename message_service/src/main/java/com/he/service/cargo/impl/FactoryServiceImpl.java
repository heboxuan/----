package com.he.service.cargo.impl;

import com.he.dao.cargo.FactoryDao;
import com.he.domain.cargo.Factory;
import com.he.domain.cargo.FactoryExample;
import com.he.service.cargo.FactoryService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FactoryServiceImpl implements FactoryService {

    @Autowired
    private FactoryDao factoryDao;

    //查询所有的厂家
    @Override
    public List<Factory> findAll(FactoryExample example) {
        return factoryDao.selectByExample(example);
    }
}
