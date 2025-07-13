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

    User validateUser(String username, String password); // ✅ login validation only

    User saveUser(User user); // for registration (optional)

    User findByUsername(String username);

    List<User> getAllUsers();
}
