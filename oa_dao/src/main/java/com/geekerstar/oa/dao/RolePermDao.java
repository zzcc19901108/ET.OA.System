package com.geekerstar.oa.dao;

import java.util.List;

public interface RolePermDao {

    List<Integer> findPermIdsByRoleId(Integer roleId);

    int deleteObjectsByRoleId(Integer roleId);

    int deleteObjectsByPermId(Integer permId);

    int insertObjects(Integer roleId,Integer[] permIds);


}
