package com.geekerstar.oa.dao;

import com.geekerstar.oa.entity.Perm;

import java.util.List;

public interface PermDao {

        List<Perm> findObjectsByIds(Integer[] ids);

        int inserObject(Perm perm);

        int deleteObject(Integer id);
}
