package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.model.Teacher;
import com.ssm.service.impl.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/Teacher")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @RequestMapping("list.do")
    public String list(@RequestParam(value = "page",defaultValue = "1") int page, Model model) {
        PageHelper.startPage(page, 5);
        List<Teacher> teachers = teacherService.list();
        PageInfo pageInfo = new PageInfo(teachers);
        model.addAttribute("pageInfo", pageInfo);
        return "listTeacher";
    }
}
