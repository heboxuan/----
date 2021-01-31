package com.he.service.cargo;

import com.he.domain.cargo.Factory;
import com.he.domain.cargo.FactoryExample;

import java.util.List;

/**
 * 工厂service接口
 */
public interface FactoryService {

	/**
	 * 条件查询
	 */
	public List<Factory> findAll(FactoryExample example);
}
