/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javabean.dao.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javabean.dao.demo.dbconnection.DatabaseConnection;
import javabean.dao.demo.dbconnection.MySQLDatabaseConnectionFactory;
import javabean.dao.demo.vo.Emp;

/**
 *
 * @author hp
 */
public class EmpDAOImpl implements IEmpDAO {

    public EmpDAOImpl() {
        try {
            DatabaseConnection mySQLconn = MySQLDatabaseConnectionFactory.getDatabaseConnection();
            this.conn = mySQLconn.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public EmpDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean doCreate(Emp emp) throws Exception {
        boolean flag = false;
        String sql = "INSERT INTO emp VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setInt(1, emp.getEmpno());
        if (emp.getEname() != null) {
            this.pstmt.setString(2, emp.getEname());
        } else {
            this.pstmt.setNull(2, java.sql.Types.VARCHAR);
        }
        if (emp.getJob() != null) {
            this.pstmt.setString(3, emp.getJob());
        } else {
            this.pstmt.setNull(3, java.sql.Types.VARCHAR);
        }
        if (emp.getHiredate() != null) {
            this.pstmt.setDate(4, new java.sql.Date(emp.getHiredate().getTime()));
        } else {
            this.pstmt.setNull(4, java.sql.Types.DATE);
        }
        if (emp.getSal() != null) {
            this.pstmt.setDouble(5, emp.getSal());
        } else {
            this.pstmt.setNull(5, java.sql.Types.FLOAT);
        }
        if (emp.getComm() != null) {
            this.pstmt.setDouble(6, emp.getComm());
        } else {
            this.pstmt.setNull(6, java.sql.Types.FLOAT);
        }
        if (emp.getMgr() != null) {
            this.pstmt.setInt(7, emp.getMgr());
        } else {
            this.pstmt.setNull(7, java.sql.Types.INTEGER);
        }
        if (emp.getDeptno() != null) {
            this.pstmt.setInt(8, emp.getDeptno());
        } else {
            this.pstmt.setNull(8, java.sql.Types.INTEGER);
        }
        if (this.pstmt.executeUpdate() > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }

    @Override
    public List<Emp> loadAll() throws Exception {
        List<Emp> all = new ArrayList<Emp>();
        String sql = "SELECT empno, ename, job, hiredate, sal, comm, mgr, deptno from emp";
        this.pstmt = this.conn.prepareStatement(sql);
        ResultSet rs = this.pstmt.executeQuery();
        Emp emp = null;
        while (rs.next()) {
            emp = new Emp();
            emp.setEmpno(rs.getInt(1));
            emp.setEname(rs.getString(2));
            emp.setJob(rs.getString(3));
            emp.setHiredate(rs.getDate(4));
            emp.setSal(rs.getDouble(5));
            emp.setComm(rs.getDouble(6));
            emp.setMgr(rs.getInt(7));
            emp.setDeptno(rs.getInt(8));
            all.add(emp);
        }
        this.pstmt.close();
        return all;
    }

    @Override
    public Emp loadByKey(Integer empno) throws Exception {
        String sql = "SELECT empno, ename, job, hiredate, sal, comm, mgr, deptno from emp WHERE empno = ?";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setInt(1, empno);
        ResultSet rs = this.pstmt.executeQuery();
        Emp emp = null;
        if (rs.next()) {
            emp = new Emp();
            emp.setEmpno(rs.getInt(1));
            emp.setEname(rs.getString(2));
            emp.setJob(rs.getString(3));
            emp.setHiredate(rs.getDate(4));
            emp.setSal(rs.getDouble(5));
            emp.setComm(rs.getDouble(6));
            emp.setMgr(rs.getInt(7));
            emp.setDeptno(rs.getInt(8));
        }
        this.pstmt.close();
        return emp;
    }

    private Connection conn = null;
    private PreparedStatement pstmt = null;
}
