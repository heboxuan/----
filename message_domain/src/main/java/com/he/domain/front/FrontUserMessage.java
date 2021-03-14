package com.he.domain.front;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Author: heboxuan
 * @Date: Created in 15:30 2021/2/27
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FrontUserMessage implements Serializable {
    private Long id;
    private String username;
    private String phone;
    private String email;
    private String password1;
    private String password2;
    private String isDelete;
    private String messagePhone;
    private String extraMessage;
    private String trueUsername;
}
