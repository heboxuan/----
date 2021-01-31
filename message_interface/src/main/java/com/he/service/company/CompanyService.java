package com.he.service.company;

import com.he.domain.company.Company;
import com.github.pagehelper.PageInfo;

public interface CompanyService {
    public abstract PageInfo findAll(int page, int size);

    public abstract void save(Company company);

    public abstract Company findById(String id);

    public abstract void update(Company company);

    public abstract void delete(String id);
}
