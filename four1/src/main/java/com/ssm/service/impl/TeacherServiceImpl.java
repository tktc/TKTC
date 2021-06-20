package com.ssm.service.impl;

import com.ssm.mapper.TeacherMapper;
import com.ssm.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TeacherServiceImpl")
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public List<Teacher> list() {
        return teacherMapper.list();
    }
}
