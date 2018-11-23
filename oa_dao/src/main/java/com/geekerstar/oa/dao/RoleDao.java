package com.geekerstar.oa.dao;

import com.geekerstar.oa.entity.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {

    List<Role> findObjects();

    Role findObjectById(Integer id);

    int deleteObject(Integer id);

    int insertObject(Role role);

    int updateObject(Role role);
}
