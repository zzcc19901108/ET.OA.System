package com.geekerstar.oa.dao;

import com.geekerstar.oa.entity.Role;

import java.util.List;

public interface RoleDao {

    List<Role> findObjects();

    Role findObjectById(Integer id);

    int deleteObject(Integer id);

    int insertObject(Integer id);

    int updateObject(Role role);
}
