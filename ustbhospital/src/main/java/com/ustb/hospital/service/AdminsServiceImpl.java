package com.ustb.hospital.service;

import com.ustb.hospital.entity.Admins;
import com.ustb.hospital.mapper.AdminsMapper;
import com.ustb.hospital.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;


//业务类
//1.处理异常
//2.调用Mapper
public class AdminsServiceImpl {
    public Admins queryByUsername(String username){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        AdminsMapper adminsmapper = sqlSession.getMapper(AdminsMapper.class);
        return adminsmapper.selectByUsername(username);


    }

}