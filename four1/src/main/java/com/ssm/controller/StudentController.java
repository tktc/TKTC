package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.model.Student;
import com.ssm.service.impl.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/Student")
@SessionAttributes("student")
public class StudentController {
    /*3*/
    @Autowired
    private StudentService studentServiceImpl;
/*    @RequestMapping("list.do")
    public String list(Model model) {
        List<Student> students = studentServiceImpl.list();
        model.addAttribute("students", students);
        return "listStudent";
    }*/

   /* @Autowired
    private StudentService studentService;
    @GetMapping("list.do")
    public String list(Model model) {
        List<Student> list = studentService.list();
        model.addAttribute("students", list);
        return "listStudent";
    }*/
        /*@RequestMapping("list.do")
        public String listStudent(Model model) {
            return "listStudent";
        }*/
        /*@RequestMapping("list.do")
        public String list(@CookieValue("city")String city) {
            System.out.println(city);
            return "listStudent";
        }*/
    /*旧list.do*/
        /*@RequestMapping("list.do")
        public String list(HttpSession session) {
            Student s1=(Student) session.getAttribute("student");
            System.out.println(s1.getName());
            return "listStudent";
        }*/

        /*@RequestMapping("add.do")
        public String addStudent() {
            return "addStudent";
        }*/

    @RequestMapping("toAdd.do")
    public String toAdd() {
        return "addStudent";
    }

        /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
        public String add(String username,String pwd){
            System.out.println(username);
            System.out.println(pwd);
            return "listStudent";
        }*/
        /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
        public String add(String username,String pwd,Model model){
            model.addAttribute("username",username);
            model.addAttribute("pwd",pwd);
            return "listStudent";
        }*/
        /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
        public ModelAndView add(Student student){
            ModelAndView mv=new ModelAndView();
            mv.addObject("student",student);
            mv.setViewName("listStudent");
            return mv;
        }*/

    /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
    public ModelAndView add(Student student, HttpServletResponse res){
        Cookie cookie=new Cookie("city","zhuhai");
        res.addCookie(cookie);
        ModelAndView mv=new ModelAndView();
        mv.addObject("student",student);
        mv.setViewName("redirect:list.do");
        return mv;
    }*/
    /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
    public ModelAndView add(Student student, Model model){
        model.addAttribute("student",student);
        ModelAndView mv=new ModelAndView();
        mv.addObject("student",student);
        mv.setViewName("redirect:list.do");
        return mv;
    }*/
    /*@RequestMapping(value = "add.do",method = RequestMethod.POST)
    public String add(@Validated Student student, BindingResult result){
        if (result.hasErrors()){
            List<ObjectError> errors=result.getAllErrors();
            for (ObjectError objectError:errors){
                System.out.println(objectError);
            }
            return "addStudent";
        }
        return "redirect:list.do";
    }*/

    @RequestMapping("list.do")
    public String list(@RequestParam(value = "page",defaultValue = "1") int page, Model model) {
        PageHelper.startPage(page, 5);
        List<Student> students = studentServiceImpl.list();
        System.out.println(students.get(0).toString());
        PageInfo pageInfo = new PageInfo(students);
        model.addAttribute("pageInfo", pageInfo);
        return "listStudent";
    }

    @GetMapping("add")
    public String add() {
        return "addStudent";
    }

    /*
     * 任务四
     * */
    @RequestMapping(value = "add.do", method = RequestMethod.POST)
    public String add(@RequestParam(value = "file") MultipartFile file, @Validated Student student, BindingResult bindingResult, Model model) throws IOException {
        if (bindingResult.hasErrors()) {
            List<ObjectError> errors = bindingResult.getAllErrors();
            for (ObjectError objectError : errors) {
                System.out.println(objectError);
            }
            return "addStudent";

        } else {
            uploadFile(file);
            student.setImage(file.getOriginalFilename());
            // 添加记录
            studentServiceImpl.insert(student);
            return "redirect:/Student/list.do";
        }
    }

    private void uploadFile(MultipartFile image) throws IOException {
        if (image != null) {
            File imageFile = new File(image.getOriginalFilename());
            image.transferTo(imageFile);
        }
    }


    /*
     * 任务五
     * */
    @RequestMapping("/delete.do")
    public String delete(int id) {
        studentServiceImpl.delete(id);
        return "redirect:list.do";
    }

    /*
     * 任务六
     * */
    @RequestMapping("/toUpdate.do")
    public String toUpdate(int id, Model model) {
        Student student = studentServiceImpl.find(id);
        model.addAttribute("student", student);
        return "updateStudent";
    }

    @RequestMapping(value = "update.do", method = RequestMethod.POST)
    public String update(Student student, @RequestParam(value = "file") MultipartFile file) throws IOException {
        uploadFile(file);
        student.setImage(file.getOriginalFilename());
        System.out.println(student.toString());
        int updateResult = studentServiceImpl.update(student);
        System.out.println(updateResult);
        return "redirect:list.do";
    }


}


