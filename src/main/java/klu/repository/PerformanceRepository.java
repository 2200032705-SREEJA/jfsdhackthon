package klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import klu.model.Performance;

public interface PerformanceRepository extends JpaRepository<Performance, Long> {
	    List<Performance> findByStudentId(Long studentId);
	}


