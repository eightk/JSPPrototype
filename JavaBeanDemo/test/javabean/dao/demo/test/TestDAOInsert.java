/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.test;

import java.util.Date;
import javabean.dao.demo.dao.DAOFactory;
import javabean.dao.demo.vo.Emp;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;

/**
 *
 * @author hp
 */
public class TestDAOInsert {

    public TestDAOInsert() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    public static void main(String[] args) throws Exception {
        Emp emp = null;
        for (int i = 0; i < 5; i++) {
            emp = new Emp();
            emp.setEmpno(1000 + i);
            emp.setEname("employee" + i);
            emp.setJob("developer");
            emp.setHiredate(new Date());
            emp.setSal(500.55 * i);
            DAOFactory.getIEmpDAOInstance().doCreate(emp);
        }
    }
}
