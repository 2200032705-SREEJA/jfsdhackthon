package klu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import klu.model.LearningOutcome;
import klu.service.LearningOutcomeService;

@RestController
@RequestMapping("/api/learning-outcomes")
public class LearningOutcomeController {
	

	    @Autowired
	    private LearningOutcomeService outcomeService;

	    @PostMapping
	    public LearningOutcome addLearningOutcome(@RequestBody LearningOutcome outcome) {
	        return outcomeService.addLearningOutcome(outcome);
	    }

	    @GetMapping("/course/{courseId}")
	    public List<LearningOutcome> getOutcomesByCourse(@PathVariable Long courseId) {
	        return outcomeService.getOutcomesByCourse(courseId);
	    }
	}


