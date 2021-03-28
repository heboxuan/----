package com.he.service.cargo;

import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;


public interface ConsultService {

    public abstract PageInfo findUnAll(Long leaderId, String typeId,int page, int size);

    public abstract Map<String, Object> findLeftMessageById(Long id);

    public abstract PageInfo findAlAll(Long leaderId, String typeId, int page, int size);

    public abstract void edit(Long id, String responsePassage);
}
