package com.he.service.userBlack.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.he.dao.front.FrontUserMessageDao;
import com.he.domain.front.FrontUserMessage;
import com.he.service.userBlack.UserBlackService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:30 2021/4/7
 */
@Service
public class UserBlackServiceImpl implements UserBlackService {

    @Autowired
    private FrontUserMessageDao frontUserMessageDao;

    @Override
    public void userBlackAdd(String userId) {
        FrontUserMessage frontUserMessage = new FrontUserMessage();
        frontUserMessage.setId(Long.valueOf(userId));
        frontUserMessage.setIsDelete("true");
        frontUserMessageDao.updateByUserId(frontUserMessage);
    }

    @Override
    public PageInfo userBlackList(int page, int size, String findByParam) {
        PageHelper.startPage(page,size);
        List<Map<String, Object>> list=frontUserMessageDao.userBlackList(findByParam);
        return new PageInfo(list);
    }
}
