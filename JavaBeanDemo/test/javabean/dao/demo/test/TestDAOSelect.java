/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.test;

import java.util.Date;
import java.util.List;
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
public class TestDAOSelect {

    public TestDAOSelect() {
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
        List<Emp> all = DAOFactory.getIEmpDAOInstance().loadAll();
        for (int i = 0; i < all.size(); i++) {
            Emp emp = all.get(i);
            System.out.println(emp.getEmpno() + " " + emp.getEname() + " " + emp.getJob() + " " + emp.getSal());
        }
    }
}
