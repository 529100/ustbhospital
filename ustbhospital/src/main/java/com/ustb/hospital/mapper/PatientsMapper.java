package com.ustb.hospital.mapper;

import com.ustb.hospital.entity.Patients;

import java.util.List;

public interface PatientsMapper {
    List<Patients> selectAll();
}
