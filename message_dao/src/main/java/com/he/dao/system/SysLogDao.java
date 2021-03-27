package com.he.dao.system;

import com.he.domain.system.SysLog;

import java.util.List;

public interface SysLogDao {
    //查询全部
    List<SysLog> findAll();

    //添加
    int save(SysLog log);
}