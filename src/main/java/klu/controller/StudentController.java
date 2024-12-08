package klu.controller;


import klu.model.Student;
import klu.model.StudentManager;
import klu.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class StudentController {


    @Autowired
    StudentManager SM;

    @RequestMapping("/register")
    public String registerStudent(@RequestParam Long id, @RequestParam String username, @RequestParam String firstname, 
    		@RequestParam String Lastname,
            @RequestParam String department, @RequestParam String email,@RequestParam String password) {
    	 Student student = new Student();
    	 student.setId(id);
    	 student.setUsername(username);
    	 student.setUsername(firstname);
    	 student.setUsername(Lastname);
    	 student.setPassword(password);
    	 student.setEmail(email);

         return SM.savestudent(student);
    }

	@PostMapping("/Studentlogin")
	public String adminlogin(@RequestBody Student S)
	{
		return SM.loginFaculty(S.getId() , S.getPassword());
	}
    
}
