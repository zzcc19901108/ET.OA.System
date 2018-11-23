package com.geekerstar.oa.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("rolePermDao")
public interface RolePermDao {

    List<Integer> findPermIdsByRoleId(Integer roleId);

    int deleteObjectsByRoleId(Integer roleId);

    int deleteObjectsByPermId(Integer permId);

    int insertObjects(Integer roleId,Integer[] permIds);


}
