/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.basic.demo;

/**
 *
 * @author hp
 */
public class SimpleJavaBean {

    public SimpleJavaBean() {
    }   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
            
    private String name;
    private Integer age;
}
