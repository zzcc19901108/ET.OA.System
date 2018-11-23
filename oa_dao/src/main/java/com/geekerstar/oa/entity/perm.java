package com.geekerstar.oa.entity;

import java.io.Serializable;

public class perm implements Serializable {
    private static final long serialVersionUID = 2250398866753191271L;
    private Integer id;
    private String name;
    private String permission;
    private String note;

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

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
