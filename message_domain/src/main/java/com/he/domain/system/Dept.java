package com.he.domain.system;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Dept implements Serializable {
    private String id;
    private String deptName;
    private Dept parent;
    private String state;
    private String companyId;
    private String companyName;
}