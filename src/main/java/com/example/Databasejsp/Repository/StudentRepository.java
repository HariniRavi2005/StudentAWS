package com.example.Databasejsp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Databasejsp.Entity.Student;

public interface StudentRepository extends JpaRepository<Student,Long> {
          
}
