package com.klu.Lab4;


import com.klu.Lab4.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {

    public static void main(String[] args) {
        
        ApplicationContext context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        
        Student student = (Student) context.getBean("student");
        student.displayDetails();
    }
}
