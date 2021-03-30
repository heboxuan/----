package com.he.service.stat;

import java.util.List;
import java.util.Map;

/**
 * 统计分析的service接口
 */
public interface StatService {

    //每个区的咨询总数
    List<Map> findAskData();

    //每个区的回复总数
    List<Map> findResData();

    //系统访问压力图数据
    List<Map> findOnlineData(String loginUserId);
}

