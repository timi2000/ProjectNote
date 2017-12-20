package com.tim.projectnote.Dao;

import com.tim.projectnote.Entity.Student;
import org.springframework.stereotype.Repository;
import java.util.Map;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Repository

public class StudentDao {



    private static Map <Integer, Student> students;

    static{
        students = new HashMap<Integer, Student>() {
            {
                put(1, new Student(1, "Said", "computerScience"));
                put(2, new Student(2, "alec", "computerScience"));
                put(3, new Student(3, "tim", "computerScience"));
            }
        };// Warum hier ein Punkt strich.
    }
    public Collection<Student> getAllStudents(){
        return this.students.values();
    }
}
