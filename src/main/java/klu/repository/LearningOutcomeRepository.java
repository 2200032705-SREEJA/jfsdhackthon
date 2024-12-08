package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.LearningOutcome;

public interface LearningOutcomeRepository extends JpaRepository<LearningOutcome, Long> {
	    List<LearningOutcome> findByCourseId(Long courseId);
	}


