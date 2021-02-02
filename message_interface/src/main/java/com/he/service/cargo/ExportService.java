package com.he.service.cargo;

import com.he.domain.cargo.Export;
import com.he.domain.cargo.ExportExample;
import com.he.domain.vo.ExportResult;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface ExportService {

    Export findById(String id);

    void save(Export export);

    void update(Export export);

    void delete(String id);

	PageInfo findAll(ExportExample example, int page, int size);

    void exportE(String id);

    List<Export> findAll(ExportExample exportExample);

    void updateE(ExportResult exportResult);
}
