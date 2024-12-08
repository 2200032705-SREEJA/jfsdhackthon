package klu.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.AdminRepository;
import klu.repository.FacultyRepository;

@Service
public class FacultyManager {

    @Autowired
    FacultyRepository FR;

    // Save Faculty
    public String SaveFaculty(Faculty F) {
        try {
            if (FR.existsById(F.getFacultyid())) {
                return "Faculty ID already exists.";
            }
            FR.save(F);
            return "Faculty registered successfully.";
        } catch (Exception e) {
            return "Error registering faculty: " + e.getMessage();
        }
    }

    // Check if faculty exists (for login)
    public boolean facultyExists(Long facultyid) {
        return FR.existsById(facultyid);
    }
    
	  
	  public String loginFaculty(Long uname , String pwd )
	  {
		  try
		  {
			  if(FR.validateCredentials(uname, pwd)==0)
					throw new Exception("401");
				
				return "200";
		  }
		  catch(Exception e)
		  {
			 return  e.getMessage();
		  }
	  }

}
