package com.geekerstar.oa.entity;

import java.io.Serializable;

public class RolePerm implements Serializable {
    private static final long serialVersionUID = -2020672457982256807L;
    private Integer id;
    private Integer roleId;
    private Integer permId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPermId() {
        return permId;
    }

    public void setPermId(Integer permId) {
        this.permId = permId;
    }
}
