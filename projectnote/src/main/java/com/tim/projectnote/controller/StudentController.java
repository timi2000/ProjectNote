package com.tim.projectnote.controller;

import com.tim.projectnote.Service.StudentService;
import com.tim.projectnote.Entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;


    @RequestMapping(  method = RequestMethod.GET)
    public Collection<Student> getAllStudents(){

        grades g = new grades(null);
        g.index();


        String s = "hallo";


        return studentService.getAllStudents();
    }

}
