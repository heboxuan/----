package com.he.service.cargo.impl;

import com.he.dao.cargo.ContractDao;
import com.he.domain.cargo.Contract;
import com.he.domain.cargo.ContractExample;
import com.he.service.cargo.ContractService;
import com.he.domain.vo.ContractProductVo;
import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class ContractServiceImpl implements ContractService {
    @Autowired
    private ContractDao contractDao;

    /**
     * 多条件的分页查询
     */
    @Override
    public PageInfo findAll(ContractExample example,int page, int size) {
        PageHelper.startPage(page,size);
        List<Contract> list = contractDao.selectByExample(example);
        return new PageInfo(list);
    }

    //保存
    @Override
    public void save(Contract contract) {
        contract.setId(UUID.randomUUID().toString());
        contract.setCreateTime(new Date()); //添加日期
        contract.setTotalAmount(0d);        //购销合同总金额
        contract.setProNum(0);              //货物数量
        contract.setExtNum(0);              //附件数量
        contract.setState(0);               //草稿（刚刚录入数据）
        contractDao.insertSelective(contract);
    }

    //更新
    @Override
    public void update(Contract contract) {
        contractDao.updateByPrimaryKeySelective(contract);
    }

    //删除
    @Override
    public void delete(String id) {
        contractDao.deleteByPrimaryKey(id);
    }

    //根据id查询
    @Override
    public Contract findById(String id) {
        return contractDao.selectByPrimaryKey(id);
    }

    @Override
    public List<ContractProductVo> findByShipTime(String shipTime) {
        return contractDao.findByShipTime(shipTime);
    }
}
