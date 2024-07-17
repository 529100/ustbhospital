package com.ustb.hospital.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import com.ustb.hospital.entity.Patients;

import com.ustb.hospital.mapper.PatientsMapper;
import com.ustb.hospital.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class PatientsServiceImpl {
    public PageInfo queryAll(int pageNum, int pageSize){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        PatientsMapper mapper = sqlSession.getMapper(PatientsMapper.class);
        PageHelper.startPage(pageNum,pageSize);
        List<Patients> list = mapper.selectAll();
        PageInfo pageInfo = new PageInfo(list);
        System.out.println(pageInfo);
        return pageInfo;

    }
}
