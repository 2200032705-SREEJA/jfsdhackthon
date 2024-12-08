package klu.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.Course;
import klu.service.CourseService;

@RestController
@RequestMapping("/api/courses")
public class CourseController {

	

	    @Autowired
	    private CourseService courseService;

	    @PostMapping
	    public Course addCourse(@RequestBody Course course) {
	        return courseService.addCourse(course);
	    }

	    @GetMapping
	    public List<Course> getAllCourses() {
	        return courseService.getAllCourses();
	    }
	}



