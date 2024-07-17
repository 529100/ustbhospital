package com.ustb.hospital.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ustb.hospital.entity.Departments;
import com.ustb.hospital.entity.ProfessionalTitles;
import com.ustb.hospital.mapper.DepartmentsMapper;
import com.ustb.hospital.mapper.ProfessionalTitlesMapper;
import com.ustb.hospital.utils.MybatisUtils;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;

import java.sql.SQLException;
import java.util.List;

public class ProfessionalTitlesServiceImpl {

    public List<ProfessionalTitles> queryAll(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        ProfessionalTitlesMapper mapper = sqlSession.getMapper(ProfessionalTitlesMapper.class);
        //业务
        List<ProfessionalTitles> professionalTitles = mapper.selectAll();
        return professionalTitles;
    }

}
