/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dao;

import java.util.List;
import javabean.dao.demo.dbconnection.DatabaseConnection;
import javabean.dao.demo.dbconnection.MySQLDatabaseConnection;
import javabean.dao.demo.vo.Emp;

/**
 *
 * @author hp
 */
public class EmpDAOProxy implements IEmpDAO {

    public EmpDAOProxy() throws Exception {
        this.dbc = new MySQLDatabaseConnection();
        this.dao = new EmpDAOImpl(this.dbc.getConnection());
    }

    @Override
    public boolean doCreate(Emp emp) throws Exception {
        boolean flag = false;
        try {
            if (this.dao.loadByKey(emp.getEmpno()) == null) {
                flag = this.dao.doCreate(emp);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return flag;
    }

    @Override
    public List<Emp> loadAll() throws Exception {
        List<Emp> all = null;
        try {
            all = dao.loadAll();
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return all;
    }

    @Override
    public Emp loadByKey(Integer empno) throws Exception {
        Emp emp = null;        
        try {
            emp = dao.loadByKey(empno);
        } catch (Exception e) {
            throw e;
        } finally {
            this.dbc.close();
        }
        return emp;
    }

    private DatabaseConnection dbc = null;
    private IEmpDAO dao = null;

}
