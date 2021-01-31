package com.he.service.cargo;

import com.he.domain.cargo.Contract;
import com.he.domain.cargo.ContractExample;
import com.he.domain.vo.ContractProductVo;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface ContractService {

	//根据id查询
    Contract findById(String id);

    //保存
    void save(Contract contract);

    //更新
    void update(Contract contract);

    //删除
    void delete(String id);

    //分页查询
	public PageInfo findAll(ContractExample example, int page, int size);

    public abstract List<ContractProductVo> findByShipTime(String s);
}
