package klu.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
@Entity
@Table(name = "performance")
public class Performance {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY) // Generates primary key automatically
    private Long id; // Primary key field

   
	 @ManyToOne
	    @JoinColumn(name = "student_id")
	    private Student student;

	    @ManyToOne
	    @JoinColumn(name = "outcome_id")
	    private LearningOutcome learningOutcome;

		@Column(name = "studentid")
		 Long studentid;
		@Column(name = "studentname")
		 String studentname;
		@Column(name = "coursecode")
		 String coursecode;
		@Column(name = "coursename")
		 String coursename;
		@Column(name = "performancescore")
		 Long performancescore;
		public Long getStudentid() {
	        return studentid;
	    }

	    public void setStudentid(Long studentid) {
	        this.studentid = studentid;
	    }

	    // Getter and Setter for studentname
	    public String getStudentname() {
	        return studentname;
	    }

	    public void setStudentname(String studentname) {
	        this.studentname = studentname;
	    }

	    // Getter and Setter for coursecode
	    public String getCoursecode() {
	        return coursecode;
	    }

	    public void setCoursecode(String coursecode) {
	        this.coursecode = coursecode;
	    }

	    // Getter and Setter for coursename
	    public String getCoursename() {
	        return coursename;
	    }

	    public void setCoursename(String coursename) {
	        this.coursename = coursename;
	    }

	    // Getter and Setter for performancescore
	    public Long getPerformancescore() {
	        return performancescore;
	    }

	    public void setPerformancescore(Long performancescore) {
	        this.performancescore = performancescore;
	    }
		
		
		
}
