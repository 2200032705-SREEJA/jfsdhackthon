package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import klu.model.Faculty;

public interface FacultyRepository extends JpaRepository<Faculty, Long> {
	@Query("select count(a) from Faculty a where a.facultyid=:facultyid and a.password=:pwd")
	public int validateCredentials(@Param("facultyid") Long facultyid, @Param("pwd") String pwd);

}
