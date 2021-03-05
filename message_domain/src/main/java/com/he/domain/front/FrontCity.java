package com.he.domain.front;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Author: heboxuan
 * @Date: Created in 20:14 2021/3/3
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FrontCity implements Serializable {
    private Long id;
    private String name;
    private Long askNum;
    private Long responseNum;

}
