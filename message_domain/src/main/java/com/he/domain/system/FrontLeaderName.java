package com.he.domain.system;

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
    private String email;
    private String password;
    private String gender;
    private String telephone;
    private String isDelete;
    private String otherJob;
}
