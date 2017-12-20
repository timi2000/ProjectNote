package com.tim.projectnote.Service;

import com.tim.projectnote.Dao.StudentDao;
import com.tim.projectnote.Entity.Student;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Collection;

@Service
public class StudentService {

    @Autowired
    private StudentService studentDao;

    public Collection<Student> getAllStudents(){
        return studentDao.getAllStudents();
    }
}
