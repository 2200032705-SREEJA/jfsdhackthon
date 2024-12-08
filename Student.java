package com.klu.Lab4;


import java.util.Date;

public class Student {
    private String type;
    private String name;
    private String color;
    private int noofdoors;

    public Student(String type, String name, String color, int noofdoors) {
        this.type = type;
        this.name = name;
        this.color = color;
        this.noofdoors = noofdoors;
    }

    public void settype(String type) {
        this.type = type;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGender(String color) {
        this.color = color;
    }

    public void setAge(int noofdoors) {
        this.noofdoors = noofdoors;
    }    

    public void displayDetails() {
        System.out.println("type: " + type);
        System.out.println("Name: " + name);
        System.out.println("color: " + color);
        System.out.println("noofdoors: " + noofdoors);
    }
}
