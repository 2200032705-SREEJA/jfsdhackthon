package klu.model;



import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
@Entity
@Table(name = "courses")
public class Course {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "courseid")
	 Long courseid;
	@Column(name = "department")
	 String department;
	@Column(name = "Name")
	 String name;
    
    
	@OneToMany(mappedBy = "course", cascade = CascadeType.ALL)
    private List<LearningOutcome> learningOutcomes;
	public Long getCourseid() {
		// TODO Auto-generated method stub
		return courseid;
	}

}
