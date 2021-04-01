package com.he.dao.front;

import com.he.domain.front.FrontLeftMessage;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author: heboxuan
 * @Date: Created in 16:00 2021/3/14
 */
public interface FrontLeftMessageDao {
    public abstract void saveLeftMessage(FrontLeftMessage frontLeftMessage);

    public abstract List<Map<String, Object>> findByLeaderId(@Param("id") String id,@Param("end") Integer limit);

    public abstract Map<String,Object> findById(Long valueOf);

    public abstract List<Map<String, Object>> findUnAll(@Param("leaderId") Long leaderId,
                                                        @Param("typeId")String typeId,
                                                        @Param("findByParam")String findByParam);

    public abstract Map<String, Object> findLeftMessageById(Long id);

    public abstract List<Map<String, Object>> findAlAll(@Param("leaderId")Long leaderId,
                                                        @Param("typeId")String typeId,
                                                        @Param("findByParam")String findByParam);

    public abstract void updateResponsePassageById(@Param("id") Long id, @Param("responsePassage") String responsePassage);

    public abstract List<Map<String, Object>> userCenterUnResByUserId(Long id);

    public abstract List<Map<String, Object>> userCenterAlRes(Long id);
}
