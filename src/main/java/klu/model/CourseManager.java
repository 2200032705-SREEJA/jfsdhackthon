package klu.model;


import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import klu.repository.CourseRepository;
import klu.repository.FacultyRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class CourseManager {
	private static final Logger logger = LoggerFactory.getLogger(CourseManager.class);

    @Autowired
    CourseRepository CR;

    public String SaveCourse(Course C) {
        try {
            // Check if the faculty ID is already in use
            if (CR.validateUsername(C.getCourseid()) > 0) {
                throw new Exception("401"); // Faculty ID already exists
            }

            // Save the faculty entity
            CR.save(C);
            return "200"; // Success
        } catch (Exception e) {
            // Return or log the error message
            return e.getMessage(); // Log the error message or use a logger
        }
        
    }

    public List<Course> readData() {
        return CR.findAll();
    }
    public String updateFacultyData(Course C) {
        logger.info("Updating faculty with ID: {}", C.getCourseid());
        try {
            // Check if faculty exists before updating
            Optional<Course> existingFaculty = CR.findById(C.getCourseid());
            if (!existingFaculty.isPresent()) {
                logger.warn("Course with ID {} not found", C.getCourseid());
                return "Course not found"; // Handle not found case
            }

            // Update faculty data
            CR.save(C);
            logger.info("Successfully updated Course with ID: {}", C.getCourseid());
            return "Faculty updated successfully"; // Success message
        } catch (Exception e) {
            logger.error("Failed to update course: {}", e.getMessage());
            return "Error updating course: " + e.getMessage(); // Return error message
        }
    }


    public String deleteCourse(long id) {
        if (CR.existsById(id)) {
            CR.deleteById(id);
            return "Course deleted successfully";
        } else {
            return "Course not found";
        }
    }
}
