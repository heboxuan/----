package com.he.domain.front;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Author: heboxuan
 * @Date: Created in 23:23 2021/3/5
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FrontLeaderName implements Serializable {
    private Long id;
    private Long cityId;
    private String leaderName;
    private String isMayor;
}
