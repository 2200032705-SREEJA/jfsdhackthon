package klu.repository;

import klu.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CourseRepository extends JpaRepository<Course, Long> {
    @Query("SELECT COUNT(C) FROM Course C WHERE C.id = :id")
    int validateUsername(@Param("id") Long id);
}


