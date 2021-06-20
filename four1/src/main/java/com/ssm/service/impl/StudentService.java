package com.ssm.service.impl;


import com.ssm.model.Student;

import java.util.List;

public interface StudentService {


    /*
     * 任务三
     * */
    public List<Student> list();

    /*
     * 任务四
     * */
    public int insert(Student student);

    /*
     * 任务五
     * */
    public int delete(Integer id);

    /*
     * 任务六
     * */
    public Student find(Integer id);

    public int update(Student student);
}

