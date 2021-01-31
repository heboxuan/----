package com.he.service.system;

import com.he.domain.system.SysLog;
import com.github.pagehelper.PageInfo;

public interface SysLogService {
    public abstract PageInfo findAll(String loginCompanyId, int page, int size);
    public abstract void save(SysLog sysLog);
}
