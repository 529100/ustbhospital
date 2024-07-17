package com.ustb.hospital.mapper;

import com.ustb.hospital.entity.Admins;

import java.util.List;

public interface AdminsMapper {
    Admins selectByUsername(String username);

}
