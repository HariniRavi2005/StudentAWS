package com.example.Databasejsp.Service;

import com.example.Databasejsp.Entity.Student;
import com.example.Databasejsp.Entity.User;

import java.util.List;

public interface AppService {

    // =================== STUDENT METHODS ===================

    List<Student> getAllStudents();

    Student saveStudent(Student student);

    Student getStudentById(Long id);

    Student updateStudent(Student student);

    void deleteStudentById(Long id);

    // =================== USER METHODS ===================

    User saveOrLoginUser(String username, String password);

    User findByUsername(String username);

    List<User> getAllUsers(); // renamed for clarity
}
