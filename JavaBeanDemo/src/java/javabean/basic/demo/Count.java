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
public class Count {

    public Count() {
        System.out.println("==count==");
    }

    public Integer getCount() {
        return ++count;
    }   
    
    private Integer count = 0;
}
