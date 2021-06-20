package com.ssm.mapper;

import com.ssm.model.Admin;
import java.util.List;

public interface AdminMapper {
    int insert(Admin record);

    List<Admin> selectAll();
}