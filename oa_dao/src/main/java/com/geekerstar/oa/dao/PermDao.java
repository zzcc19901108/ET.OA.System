package com.geekerstar.oa.dao;

import com.geekerstar.oa.entity.Perm;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("permDao")
public interface PermDao {

        List<Perm> findObjectsByIds(Integer[] ids);

        int inserObject(Perm perm);

        int deleteObject(Integer id);
}
