package com.he.service.county;

import com.github.pagehelper.PageInfo;
import com.he.domain.county.FrontCity;

public interface CountyService {
    public abstract PageInfo findAll(int page, int size,String findByParam);

    public abstract void save(FrontCity frontCity);

    public abstract FrontCity findById(Long id);

    public abstract void update(FrontCity frontCity);

    public abstract void delete(Long id);
}
