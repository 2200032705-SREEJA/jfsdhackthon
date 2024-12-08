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
@Table(name = "learning_outcomes") 
public class LearningOutcome {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "studentid")
	 Long studentid;
	@Column(name = "coursecode")
	 String coursecode;
	@Column(name = "coursename")
	 String coursename;
	@Column(name = "outcometype")
	 Long outcometype;
	public Long getStudentid() {
        return studentid;
    }

    public void setStudentid(Long studentid) {
        this.studentid = studentid;
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

    // Getter and Setter for outcomeType
    public Long getOutcomeType() {
        return getOutcomeType();
    }

    public void setOutcomeType(Long outcomeType) {
        this.outcometype = outcomeType;
    }
	@ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;
}
