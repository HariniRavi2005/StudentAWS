package com.example.Databasejsp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.Databasejsp.Entity.Student;
import com.example.Databasejsp.Repository.StudentRepository;

@SpringBootApplication
public class DatabasejspApplication implements CommandLineRunner{

	public static void main(String[] args) {
		SpringApplication.run(DatabasejspApplication.class, args);
	}
	
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void run(String... args) throws Exception {
		Student student1=new Student(null, "Harini","Ravi","harini1@gmail.com");
		studentRepository.save(student1);
		Student student2=new Student(null, "sud","Ravi","sud1@gmail.com");
		studentRepository.save(student2);
		Student student3=new Student(null, "kamali","Ravi","kamali1@gmail.com");
		studentRepository.save(student3);
	}

}
