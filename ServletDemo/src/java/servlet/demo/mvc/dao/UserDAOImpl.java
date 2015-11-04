/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.demo.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import servlet.demo.mvc.dbconn.MySQLDatabaseConnectionFactory;
import servlet.demo.mvc.dbconn.DatabaseConnection;
import servlet.demo.mvc.model.User;

/**
 *
 * @author hp
 */
public class UserDAOImpl implements IUserDAO {

    public UserDAOImpl() {
        try {
            DatabaseConnection mySQLconn = MySQLDatabaseConnectionFactory.getDatabaseConnection();
            this.conn = mySQLconn.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public UserDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean doCreate(User user) throws Exception {
        boolean flag = false;
        String sql = "INSERT INTO user VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, user.getUsername());
        if (user.getPassword()!= null) {
            this.pstmt.setString(2, user.getPassword());
        } else {
            this.pstmt.setNull(2, java.sql.Types.VARCHAR);
        }
        if (user.getEmail()!= null) {
            this.pstmt.setString(3, user.getEmail());
        } else {
            this.pstmt.setNull(3, java.sql.Types.VARCHAR);
        }
        if (user.getFirstname()!= null) {
            this.pstmt.setString(4, user.getFirstname());
        } else {
            this.pstmt.setNull(4, java.sql.Types.VARCHAR);
        }
        if (user.getLastname()!= null) {
            this.pstmt.setString(5, user.getLastname());
        } else {
            this.pstmt.setNull(5, java.sql.Types.VARCHAR);
        }
        if (user.getAge()!= null) {
            this.pstmt.setInt(6, user.getAge());
        } else {
            this.pstmt.setNull(6, java.sql.Types.INTEGER);
        }
        if (user.getCreatedate()!= null) {
            this.pstmt.setDate(7, new java.sql.Date(user.getCreatedate().getTime()));
        } else {
            this.pstmt.setNull(7, java.sql.Types.INTEGER);
        }
        if (user.getLevel()!= null) {
            this.pstmt.setInt(8, user.getLevel());
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
    public List<User> loadAll() throws Exception {
        List<User> all = new ArrayList<User>();
        String sql = "SELECT empno, ename, job, hiredate, sal, comm, mgr, deptno from emp";
        this.pstmt = this.conn.prepareStatement(sql);
        ResultSet rs = this.pstmt.executeQuery();
        User user = null;
        while (rs.next()) {
            user = new User();
            user.setUsername(rs.getString(1));
            user.setPassword(rs.getString(2));
            user.setEmail(rs.getString(3));
            user.setFirstname(rs.getString(4));
            user.setLastname(rs.getString(5));
            user.setAge(rs.getInt(6));
            user.setCreatedate(rs.getDate(7));
            user.setLevel(rs.getInt(8));
            all.add(user);
        }
        this.pstmt.close();
        return all;
    }

    @Override
    public User loadByKey(String username) throws Exception {
        String sql = "SELECT username, password, email, firstname, lastname, age, createdate, level from user WHERE username = ?";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, username);
        ResultSet rs = this.pstmt.executeQuery();
        User user = null;
        if (rs.next()) {
            user = new User();
            user.setUsername(rs.getString(1));
            user.setPassword(rs.getString(2));
            user.setEmail(rs.getString(3));
            user.setFirstname(rs.getString(4));
            user.setLastname(rs.getString(5));
            user.setAge(rs.getInt(6));
            user.setCreatedate(rs.getDate(7));
            user.setLevel(rs.getInt(8));
        }
        this.pstmt.close();
        return user;
    }

    @Override
    public boolean findLogin(User user) throws Exception {
        boolean flag = false;
        if(user.getUsername()==null ||"".equals(user.getUsername())) {
            return flag;
        }
        if(user.getPassword()==null ||"".equals(user.getPassword())) {
            return flag;
        }
        User temp = this.loadByKey(user.getUsername());
        if(temp!=null&&temp.getPassword().equals(user.getPassword())) {
            flag = true;
        }       
        return flag;        
    }
    
    private Connection conn = null;
    private PreparedStatement pstmt = null;
}
