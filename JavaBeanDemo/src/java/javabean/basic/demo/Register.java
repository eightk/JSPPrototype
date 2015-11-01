/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.basic.demo;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author hp
 */
public class Register {

    public Register() {
        this.name = "";
        this.email = "";
        this.age = "";
        this.errors = new HashMap<String, String>();
    }

    public boolean isValidate() {
        boolean flag = true;
        if (!this.name.matches("\\w{6,15}")) {
            flag = false;
            this.name = "";
            errors.put("errname", "user name length should be number or letter with length of 6-15. ");
        }
        if (!this.email.matches("\\w+@\\w+\\.\\w+\\.?\\w")) {
            flag = false;
            this.email = "";
            errors.put("erremail", "invalid email address");
        }
        if (!this.age.matches("\\d+")) {
            flag = false;
            this.age = "";
            errors.put("errage", "age must be number");
        }
        return flag;
    }

    public String getErrorMsg(String key) {
        String value = this.errors.get(key);
        return value == null ? "" : value;
    }
    
    public Integer getErrorSize() {
        return errors.size();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Map<String, String> getErrors() {
        return errors;
    }

    public void setErrors(Map<String, String> errors) {
        this.errors = errors;
    }   
    
    private String name;
    private String age;
    private String email;
    private Map<String, String> errors = null;
}
