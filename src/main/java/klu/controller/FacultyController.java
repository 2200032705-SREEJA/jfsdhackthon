package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import klu.model.Admin;
import klu.model.AdminManager;
import klu.model.Faculty;
import klu.model.FacultyManager;

@RestController
@RequestMapping("/faculty")
public class FacultyController {

    @Autowired
    FacultyManager FM;

    // Faculty Registration API
    @PostMapping("/register")
    public String registerFaculty(@RequestParam Long facultyid, @RequestParam String name,
                                  @RequestParam String department, @RequestParam String email) {
        Faculty faculty = new Faculty();
        faculty.setFacultyid(facultyid);
        faculty.setName(name);
        faculty.setDepartment(department);
        faculty.setEmail(email);

        return FM.SaveFaculty(faculty);
    }

   
	
	@PostMapping("/Facultylogin")
	public String adminlogin(@RequestBody Faculty F)
	{
		return FM.loginFaculty(F.getFacultyid() , F.getPassword());
	}
    
}
