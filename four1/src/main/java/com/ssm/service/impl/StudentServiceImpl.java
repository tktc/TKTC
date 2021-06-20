package com.ssm.service.impl;


import com.ssm.mapper.StudentMapper;
import com.ssm.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("StudentServiceImpl")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;

    /*
     * 任务3
     * */
    @Override
    public List<Student> list() {
        return studentMapper.selectAll();
    }

    /*
     * 任务9
     * */
    /*@Override
    public List<Student> list() {
        return studentMapper.list();
    }*/

    /*
     * 任务4
     * */
    @Override
    public int insert(Student student) {
        return studentMapper.insert(student);
    }

    /*
     * 任务5
     * */
    @Override
    public int delete(Integer id) {
        return studentMapper.deleteByPrimaryKey(id);
    }

    /*
     * 任务6
     * */
    @Override
    public Student find(Integer id) {
        return studentMapper.selectByPrimaryKey(id);
    }

    @Override
    public int update(Student student) {
        return studentMapper.updateByPrimaryKey(student);
    }
}
