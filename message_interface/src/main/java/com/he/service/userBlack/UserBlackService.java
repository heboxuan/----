package com.he.service.userBlack;

import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 23:30 2021/4/7
 */
public interface UserBlackService {
    public abstract void userBlackAdd(String userId);

    public abstract PageInfo userBlackList(int page, int size,
                                           String findByParam);

}
