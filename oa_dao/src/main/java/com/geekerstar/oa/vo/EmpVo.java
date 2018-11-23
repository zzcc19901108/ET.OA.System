package com.geekerstar.oa.vo;

public class EmpVo {

    private Integer sn;
    private String name;
    private String post;
    private String permName;
    private String permission;

    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getPermName() {
        return permName;
    }

    public void setPermName(String permName) {
        this.permName = permName;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }

    @Override
    public String toString() {
        return "EmpVo{" +
                "sn=" + sn +
                ", name='" + name + '\'' +
                ", post='" + post + '\'' +
                ", permName='" + permName + '\'' +
                ", permission='" + permission + '\'' +
                '}';
    }
}
