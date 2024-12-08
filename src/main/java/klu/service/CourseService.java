package klu.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.model.Course;
import klu.repository.CourseRepository;
@Service
public class CourseService {
	

	    @Autowired
	    private CourseRepository courseRepository;

	    public Course addCourse(Course course) {
	        return courseRepository.save(course);
	    }

	    public List<Course> getAllCourses() {
	        return courseRepository.findAll();
	    }
	}


