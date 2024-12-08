package klu;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "klu.repository")
@EntityScan(basePackages = "klu.model")
public class TrackingAndManagingLearningOutcomesApplication {
    public static void main(String[] args) {
        SpringApplication.run(TrackingAndManagingLearningOutcomesApplication.class, args);
    }
}
