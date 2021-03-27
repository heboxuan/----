package com.he.dao.system;

import com.he.domain.system.SysLog;

import java.util.List;
import java.util.Map;

public interface SysLogDao {
    //查询全部
    List<Map<String,Object>> findAll();

    //添加
    int save(SysLog log);
}