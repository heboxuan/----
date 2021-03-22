package com.he.service.front.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.he.dao.county.FrontCityDao;
import com.he.dao.system.FrontLeaderNameDao;
import com.he.dao.front.FrontLeftMessageDao;
import com.he.dao.front.FrontUserMessageDao;
import com.he.domain.system.FrontLeaderName;
import com.he.domain.front.FrontLeftMessage;
import com.he.domain.front.FrontUserMessage;
import com.he.service.front.FrontCityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 20:21 2021/3/3
 */
@Service
@Transactional
public class FrontCityServiceImpl implements FrontCityService {
    @Autowired
    private FrontCityDao frontCityDao;

    @Autowired
    private FrontLeaderNameDao frontLeaderNameDao;

    @Autowired
    private FrontUserMessageDao frontUserMessageDao;

    @Autowired
    private FrontLeftMessageDao frontLeftMessageDao;

    @Override
    public Map<String, Object> totalMessageOne() {
        Map<String, Object> beijingTotal=frontCityDao.totalMessageOne();
        return beijingTotal;
    }

    @Override
    public List<Map<String,Object>> totalMessageTwo() {
        List<Map<String,Object>> countyTotal=frontCityDao.totalMessageTwo();
        return countyTotal;
    }

    @Override
    public Map<String, Object> totalMessageThree(Long id) {
        Map<String, Object> countyDetail=frontCityDao.totalMessageThree(id);
        return countyDetail;
    }

    @Override
    public Map<String, Object> totalMessageFour() {
        Map<String, Object> beijingLeaderOne=frontLeaderNameDao.totalMessageFour();
        return beijingLeaderOne;
    }

    @Override
    public Map<String, Object> totalMessageFive() {
        Map<String, Object> beijingLeaderTwo=frontLeaderNameDao.totalMessageFive();
        return beijingLeaderTwo;
    }

    @Override
    public Map<String, Object> totalMessageSix(Long id) {
        Map<String, Object> countyLeaderOne=frontLeaderNameDao.totalMessageSix(id);
        return countyLeaderOne;
    }

    @Override
    public Map<String, Object> totalMessageSeven(Long id) {
        Map<String, Object> countyLeaderTwo=frontLeaderNameDao.totalMessageSeven(id);
        return countyLeaderTwo;
    }

    @Override
    public void saveLeftMessage(FrontLeftMessage frontLeftMessage, FrontUserMessage frontUserMessage) {
        frontUserMessageDao.updateByUserId(frontUserMessage);
        frontLeftMessageDao.saveLeftMessage(frontLeftMessage);
        FrontLeaderName frontLeaderName=frontLeaderNameDao.findById(frontLeftMessage.getLeaderId());
        System.out.println("111111111111111111111111111"+frontLeaderName);
        //获取城市id
        Long cityId = frontLeaderName.getCityId();
        System.out.println("111111111111111111111111111"+cityId);
        frontCityDao.updateById(cityId);
    }

    @Override
    public Map<String,Object> messageList(String id) {
        FrontLeaderName leaderDetail = frontLeaderNameDao.findById(Long.valueOf(id));
        List<Map<String,Object>> messageList=frontLeftMessageDao.findByLeaderId(id);
        HashMap<String, Object> map = new HashMap<>();
        map.put("leaderDetail",leaderDetail);
        map.put("messageList",messageList);
        return map;
    }

    @Override
    public Map<String, Object> messageDetail(String id) {
        Map<String,Object> frontLeftMessage=frontLeftMessageDao.findById(Long.valueOf(id));
        Long leaderId = (Long)frontLeftMessage.get("leaderId");
        FrontLeaderName leaderDetail = frontLeaderNameDao.findById(leaderId);
        String isProcess = (String)frontLeftMessage.get("isProcess");
        HashMap<String, Object> map = new HashMap<>();
        map.put("frontLeftMessage",frontLeftMessage);
        map.put("leaderDetail",leaderDetail);
        map.put("isProcess",isProcess);
        return map;
    }
}
