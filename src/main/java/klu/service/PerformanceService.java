package klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.model.Performance;
import klu.repository.PerformanceRepository;
@Service
public class PerformanceService {
	

	    @Autowired
	    private PerformanceRepository performanceRepository;

	    public Performance addPerformance(Performance performance) {
	        return performanceRepository.save(performance);
	    }

	    public List<Performance> getPerformanceByStudent(Long studentId) {
	        return performanceRepository.findByStudentId(studentId);
	    }
	}


