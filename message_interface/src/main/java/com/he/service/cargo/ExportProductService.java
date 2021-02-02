package com.he.service.cargo;


import com.he.domain.cargo.ExportProduct;
import com.he.domain.cargo.ExportProductExample;

import java.util.List;


public interface ExportProductService {

	public List<ExportProduct> findAll(ExportProductExample exportProductExample);
}
