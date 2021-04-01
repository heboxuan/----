package com.he.service.county.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.he.dao.county.FrontCityDao;
import com.he.domain.county.FrontCity;
import com.he.domain.county.FrontCityExample;
import com.he.service.county.CountyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class CountyServiceImpl implements CountyService{
    
    @Autowired
    private FrontCityDao frontCityDao;


    @Override
    public PageInfo findAll(int page, int size,String findByParam) {
        PageHelper.startPage(page,size);
        FrontCityExample example=new FrontCityExample();
        FrontCityExample.Criteria criteria = example.createCriteria();
        criteria.andIsDeleteEqualTo("false");
        if (findByParam!=null&&!"".equals(findByParam)) {
            criteria.andNameLike("%"+findByParam+"%");
        }
        List<FrontCity> list = frontCityDao.selectByExample(example);
        return new PageInfo(list);
    }

    @Override
    public void save(FrontCity frontCity) {
        //company.setId(UUID.randomUUID().toString());
        frontCity.setAskNum(0L);
        frontCity.setResponseNum(0L);
        frontCity.setIsDelete("false");
        frontCityDao.insertSelective(frontCity);
    }

    @Override
    public FrontCity findById(Long id) {
        return frontCityDao.selectByPrimaryKey(id);
    }

    @Override
    public void update(FrontCity frontCity) {
        frontCityDao.updateByPrimaryKeySelective(frontCity);
    }

    @Override
    public void delete(Long id) {
        FrontCity frontCity=new FrontCity();
        frontCity.setId(id);
        frontCity.setIsDelete("true");
        frontCityDao.updateByPrimaryKeySelective(frontCity);
    }
}
