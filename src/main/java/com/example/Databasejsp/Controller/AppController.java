package com.example.Databasejsp.Controller;

import com.example.Databasejsp.Entity.Student;
import com.example.Databasejsp.Entity.User;
import com.example.Databasejsp.Service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;



@Controller
public class AppController {

    private final AppService appService;

    @Autowired
    public AppController(AppService appService) {
        this.appService = appService;
    }

    // ==================== USER HANDLERS ====================

    @GetMapping("/login")
    public String showLoginPage(@RequestParam(value = "logout", required = false) String logout,
                                Model model) {
        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully!");
        }
        return "views/login"; // loads login.jsp
    }

    @PostMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Model model) {
        try {
            User user = appService.validateUser(username, password);
            model.addAttribute("username", user.getUsername()); // Pass username to home.jsp
            return "views/home"; // ✅ Go to home.jsp
        } catch (IllegalArgumentException e) {
            model.addAttribute("error", "Invalid username or password!");
            return "views/login"; // ❌ Stay on login.jsp
        }
    }


    @GetMapping("/home")
    public String showHomePage() {
        return "views/home"; // loads home.jsp
    }

    @GetMapping("/logout")
    public String logout() {
        return "redirect:/login?logout";
    }

    // ==================== STUDENT HANDLERS ====================

    @GetMapping("/students")
    public String listStudents(Model model) {
        model.addAttribute("students", appService.getAllStudents());
        return "views/Student"; // JSP file: /WEB-INF/views/Student.jsp
    }

    @GetMapping("/students/new")
    public String createStudentForm(Model model) {
        Student student = new Student();
        model.addAttribute("student", student);
        return "views/create_student"; // JSP file: /WEB-INF/views/create_student.jsp
    }

    @PostMapping("/students")
    public String saveStudent(@ModelAttribute("student") Student student) {
        appService.saveStudent(student);
        return "redirect:/students";
    }

    @GetMapping("/students/edit/{id}")
    public String editStudentForm(@PathVariable Long id, Model model) {
        model.addAttribute("student", appService.getStudentById(id));
        return "views/edit_student"; // JSP file: /WEB-INF/views/edit_student.jsp
    }

    @PostMapping("/students/{id}")
    public String updateStudent(@PathVariable Long id,
                                @ModelAttribute("student") Student student) {
        Student existingStudent = appService.getStudentById(id);
        existingStudent.setFirstName(student.getFirstName());
        existingStudent.setLastName(student.getLastName());
        existingStudent.setEmail(student.getEmail());
        appService.updateStudent(existingStudent);
        return "redirect:/students";
    }

    @GetMapping("/students/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        appService.deleteStudentById(id);
        return "redirect:/students";
    }
   
}
