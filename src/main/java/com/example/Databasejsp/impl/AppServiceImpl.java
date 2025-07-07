package com.example.Databasejsp.impl;

import com.example.Databasejsp.Entity.Student;
import com.example.Databasejsp.Entity.User;
import com.example.Databasejsp.Repository.StudentRepository;
import com.example.Databasejsp.Repository.UserRepository;
import com.example.Databasejsp.Service.AppService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppServiceImpl implements AppService {

    private final StudentRepository studentRepository;
    private final UserRepository userRepository;

    @Autowired
    public AppServiceImpl(StudentRepository studentRepository, UserRepository userRepository) {
        this.studentRepository = studentRepository;
        this.userRepository = userRepository;
    }

    // =================== STUDENT METHODS ===================

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public Student getStudentById(Long id) {
        return studentRepository.findById(id).orElseThrow(
            () -> new IllegalArgumentException("Student not found with id: " + id)
        );
    }

    @Override
    public Student updateStudent(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public void deleteStudentById(Long id) {
        studentRepository.deleteById(id);
    }

    // =================== USER METHODS ===================

    @Override
    public User saveOrLoginUser(String username, String password) {
        User existingUser = userRepository.findByUsername(username);
        if (existingUser != null) {
            if (existingUser.getPassword().equals(password)) {
                return existingUser; // Login successful
            } else {
                throw new IllegalArgumentException("Invalid password");
            }
        }
        // Save new user
        User newUser = new User(username, password);
        return userRepository.save(newUser);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }
}
