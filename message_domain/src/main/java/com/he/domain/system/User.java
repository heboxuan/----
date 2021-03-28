package com.he.domain.system;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    /** 
     */ 
    private String id;


    /** 
     */ 
    private String email;

    /** 
     * 用户名
     */ 
    private String userName;

    /** 
     * shiro MD5密码32位
     */ 
    private String password;

    /** 
     * 1启用0停用
     */ 
    private Integer state;


    /**
     * 0作为内部控制，租户企业不能使用
     *      0-saas管理员
     *      1-企业管理员
     *      2-管理所有下属部门和人员
     *      3-管理本部门
     *      4-普通员工
     */ 
    private Integer degree;




    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getDegree() {
        return degree;
    }

    public void setDegree(Integer degree) {
        this.degree = degree;
    }


}