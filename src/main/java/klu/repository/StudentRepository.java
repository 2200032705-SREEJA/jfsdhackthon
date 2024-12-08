package klu.repository;

import klu.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("select count(a) from Faculty a where a.facultyid=:facultyid and a.password=:pwd")
	public int validateCredentials(@Param("facultyid") Long facultyid, @Param("pwd") String pwd);
}
