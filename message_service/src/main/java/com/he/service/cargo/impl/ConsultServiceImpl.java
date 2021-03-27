package com.he.service.cargo.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.he.dao.cargo.ContractDao;
import com.he.dao.front.FrontLeftMessageDao;
import com.he.domain.cargo.Contract;
import com.he.domain.cargo.ContractExample;
import com.he.domain.vo.ContractProductVo;
import com.he.service.cargo.ConsultService;
import com.he.service.cargo.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@Transactional
public class ConsultServiceImpl implements ConsultService {
    @Autowired
    private FrontLeftMessageDao frontLeftMessageDao;


    /**
     * 未回复
     * @param leaderId
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageInfo findUnAll(Long leaderId, String typeId,int page, int size) {
        PageHelper.startPage(page,size);
        List<Map<String,Object>> list=frontLeftMessageDao.findUnAll(leaderId,typeId);
        return new PageInfo(list);
    }

    @Override
    public Map<String, Object> findLeftMessageById(Long id) {
        Map<String, Object> map=frontLeftMessageDao.findLeftMessageById(id);
        return map;
    }

    @Override
    public PageInfo findAlAll(Long leaderId, String typeId, int page, int size) {
        PageHelper.startPage(page,size);
        List<Map<String,Object>> list=frontLeftMessageDao.findAlAll(leaderId,typeId);
        return new PageInfo(list);
    }

    @Override
    public void edit(Long id, String responsePassage) {
        frontLeftMessageDao.updateResponsePassageById(id,responsePassage);
    }
}
