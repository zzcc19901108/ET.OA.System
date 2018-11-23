package com.geekerstar.oa.entity;

import java.io.Serializable;
import java.util.Date;

/*角色pojo对象*/
public class Roles implements Serializable {
    private static final long serialVersionUID = -4182802114544865765L;
    /**/
    private Integer id;
    private String name;
    private String note;
    private Date createdTime;
    private String createdUser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public String getCreatedUser() {
        return createdUser;
    }

    public void setCreatedUser(String createdUser) {
        this.createdUser = createdUser;
    }
}
