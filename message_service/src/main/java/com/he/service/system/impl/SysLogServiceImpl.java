package com.he.service.system.impl;

import com.he.dao.system.SysLogDao;
import com.he.domain.system.SysLog;
import com.he.service.system.SysLogService;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;

    @Override
    public PageInfo findAll(String loginCompanyId,int page,int size) {
        PageHelper.startPage(page,size);
        List<SysLog> list = sysLogDao.findAll(loginCompanyId);
        return new PageInfo(list);
    }

    @Override
    public void save(SysLog sysLog) {
        sysLog.setId(UUID.randomUUID().toString());
        sysLogDao.save(sysLog);
    }
}
