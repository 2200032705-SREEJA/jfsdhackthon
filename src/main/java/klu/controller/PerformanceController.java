package klu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.Performance;
import klu.service.PerformanceService;

@RestController
@RequestMapping("/api/performance")

public class PerformanceController {

	
	    @Autowired
	    private PerformanceService performanceService;

	    @PostMapping
	    public Performance addPerformance(@RequestBody Performance performance) {
	        return performanceService.addPerformance(performance);
	    }

	    @GetMapping("/student/{studentId}")
	    public List<Performance> getPerformanceByStudent(@PathVariable Long studentId) {
	        return performanceService.getPerformanceByStudent(studentId);
	    }
	}


