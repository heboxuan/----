package com.he.domain.front;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author: heboxuan
 * @Date: Created in 15:58 2021/3/14
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FrontLeftMessage implements Serializable {
    private Long id;
    private Long leaderId;
    private Long userId;
    private String typeId;
    private String field;
    private String title;
    private String passage;
    private String askPassage;
    private String extraPassage;
    private String isProcess;
    private Date time;
    private String responsePassage;
}
