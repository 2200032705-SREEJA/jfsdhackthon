package klu.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.model.LearningOutcome;
import klu.repository.LearningOutcomeRepository;
@Service
public class LearningOutcomeService {
	
	    public LearningOutcomeService() {
	        System.out.println("LearningOutcomeService bean created.");
	    }
	


	    @Autowired
	    private LearningOutcomeRepository outcomeRepository;

	    public LearningOutcome addLearningOutcome(LearningOutcome outcome) {
	        return outcomeRepository.save(outcome);
	    }

	    public List<LearningOutcome> getOutcomesByCourse(Long courseId) {
	        return outcomeRepository.findByCourseId(courseId);
	    }
	}


