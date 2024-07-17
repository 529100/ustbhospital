package com.ustb.hospital.mapper;

import com.ustb.hospital.entity.Doctors;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DoctorsMapper {
    List<Doctors> selectAll();
    //多条件分页查询
    //动态搜索
    List<Doctors> selectByMulti(@Param("jobNumber") String jobNumber,@Param("name")  String name,@Param("deptId")  int deptId);
    List<Doctors> selectByDeptId(int deptId);

    int insert(Doctors doctor);

    int delectById(int doctorId);
}
