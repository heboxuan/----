package com.he.dao.cargo;

import com.he.domain.cargo.Contract;
import com.he.domain.cargo.ContractExample;
import com.he.domain.vo.ContractProductVo;

import java.util.List;

public interface ContractDao {

	//删除
    int deleteByPrimaryKey(String id);

	//保存
    int insertSelective(Contract record);

	//条件查询
    List<Contract> selectByExample(ContractExample example);

	//id查询
    Contract selectByPrimaryKey(String id);

	//更新
    int updateByPrimaryKeySelective(Contract record);

    public abstract List<ContractProductVo> findByShipTime(String shipTime);
}