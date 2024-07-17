package com.ustb.hospital.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.entity.Doctors;
import com.ustb.hospital.mapper.DoctorsMapper;
import com.ustb.hospital.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.List;

public class DoctorsServiceImpl {

    public void save(String name,String avatar,String phone,String departmentId,String professionalTitleId ) throws Exception {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        DoctorsMapper mapper = sqlSession.getMapper(DoctorsMapper.class);
        Doctors doctor = new Doctors();
        doctor.setName(name);
        doctor.setAvatar(avatar);
        doctor.setPhone(phone);
        doctor.setDepartmentId(Integer.valueOf(departmentId));
        doctor.setProfessionalTitleId(Integer.valueOf(professionalTitleId));

        //System.out.println(doctor);
        mapper.insert(doctor);
    }

    public PageInfo<Doctors> queryByMulti(int pageNum, int pageSize,String jobNumber,String name,int deptId){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        DoctorsMapper mapper = sqlSession.getMapper(DoctorsMapper.class);
        PageHelper.startPage(pageNum,pageSize);
        List<Doctors> list = mapper.selectByMulti(jobNumber,name,deptId);
        PageInfo<Doctors> pageInfo = new PageInfo<>(list);
        //System.out.println(pageInfo);
        return pageInfo;
    }

    public List<Doctors> queryByDeptId(int deptId){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        DoctorsMapper mapper = sqlSession.getMapper(DoctorsMapper.class);
        List<Doctors> doctors = mapper.selectByDeptId(deptId);
        return doctors;

    }

    public PageInfo queryAll(int pageNum, int pageSize){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        DoctorsMapper mapper = sqlSession.getMapper(DoctorsMapper.class);
        PageHelper.startPage(pageNum,pageSize);
        List<Doctors> list = mapper.selectAll();
        PageInfo pageInfo = new PageInfo(list);
        //System.out.println(pageInfo);
        return pageInfo;

    }

    public void delectDoctor(int doctorId){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        DoctorsMapper mapper = sqlSession.getMapper(DoctorsMapper.class);
        mapper.delectById(doctorId);
    }
}
