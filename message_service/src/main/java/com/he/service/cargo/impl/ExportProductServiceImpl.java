package com.he.service.cargo.impl;

import com.he.dao.cargo.ExportProductDao;
import com.he.domain.cargo.ExportProduct;
import com.he.domain.cargo.ExportProductExample;
import com.he.service.cargo.ExportProductService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 报运单商品
 */
@Service
@Transactional
public class ExportProductServiceImpl implements ExportProductService {

    @Autowired
    private ExportProductDao exportProductDao;

    @Override
    public List<ExportProduct> findAll(ExportProductExample exportProductExample) {
        return exportProductDao.selectByExample(exportProductExample);
    }
}
