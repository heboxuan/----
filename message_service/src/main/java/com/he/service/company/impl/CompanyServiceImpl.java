package com.he.service.company.impl;

import com.he.dao.company.CompanyDao;
import com.he.domain.company.Company;
import com.he.domain.company.CompanyExample;
import com.he.service.company.CompanyService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.UUID;

@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyDao companyDao;

    @Override
    public PageInfo findAll(int page, int size) {
        PageHelper.startPage(page,size);
        CompanyExample example=new CompanyExample();
        List<Company> list = companyDao.selectByExample(example);
        return new PageInfo(list);
    }

    @Override
    public void save(Company company) {
        company.setId(UUID.randomUUID().toString());
        companyDao.insertSelective(company);
    }

    @Override
    public Company findById(String id) {
        return companyDao.selectByPrimaryKey(id);
    }

    @Override
    public void update(Company company) {
        companyDao.updateByPrimaryKeySelective(company);
    }

    @Override
    public void delete(String id) {

        companyDao.deleteByPrimaryKey(id);
    }
}
