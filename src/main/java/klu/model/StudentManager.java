package klu.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.StudentRepository;

@Service
public class StudentManager {

    @Autowired
    StudentRepository SR;

    
    

    // Read All Students
    public List<Student> readAllStudents() {
        return SR.findAll();
    }

    // Update Student Data
    public String updateStudentData(Student S) {
        try {
            Optional<Student> existingStudent = SR.findById(S.getStudentId());
            if (!existingStudent.isPresent()) {
                return "Student not found";
            }
            SR.save(S);
            return "Student updated successfully";
        } catch (Exception e) {
            return "Error updating student: " + e.getMessage();
        }
    }
    public String loginFaculty(Long uname , String pwd )
	  {
		  try
		  {
			  if(SR.validateCredentials(uname, pwd)==0)
					throw new Exception("401");
				
				return "200";
		  }
		  catch(Exception e)
		  {
			 return  e.getMessage();
		  }
	  }

	public String savestudent (Student S) {
		try {
            if (SR.existsById(S.getId())) {
                return "Student ID already exists.";
            }
            SR.save(S);
            return "Student registered successfully.";
        } catch (Exception e) {
            return "Error registering student: " + e.getMessage();
        }
	}
}
