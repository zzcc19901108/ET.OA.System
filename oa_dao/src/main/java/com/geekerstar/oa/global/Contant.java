package com.geekerstar.oa.global;

import com.geekerstar.oa.dao.RoleDao;
import com.geekerstar.oa.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Contant {

    @Autowired
    private static RoleDao roleDao ;

    //职务
    public static List<String> getPosts(){
        List<Role> roles = roleDao.findObjects();
        List<String> list = new ArrayList<String>();
        for (Role role : roles) {
            list.add(role.getName());
        }
        return list;
    }

    //费用类别
    public static List<String> getItems(){
        List<String> list = new ArrayList<String>();
        list.add("交通");
        list.add("餐饮");
        list.add("住宿");
        list.add("办公");
        return list;
    }

    //报销单状态
    public static final String CLAIMVOUCHER_CREATED="新创建";
    public static final String CLAIMVOUCHER_SUBMIT="已提交";
    public static final String CLAIMVOUCHER_APPROVED="已审核";
    public static final String CLAIMVOUCHER_BACK="已打回";
    public static final String CLAIMVOUCHER_TERMINATED="已终止";
    public static final String CLAIMVOUCHER_RECHECK="待复审";
    public static final String CLAIMVOUCHER_PAID="已打款";
    //审核额度
    public static final double LIMIT_CHECK=5000.00;

    //处理方式
    public static final String DEAL_CREATE="创建";
    public static final String DEAL_SUBMIT="提交";
    public static final String DEAL_UPDATE="修改";
    public static final String DEAL_BACK="打回";
    public static final String DEAL_REJECT="拒绝";
    public static final String DEAL_PASS="通过";
    public static final String DEAL_PAID="打款";
}
