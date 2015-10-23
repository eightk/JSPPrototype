package jdbc.jsp.demo;

import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author hp
 */
public class JDBCConnectDemo {

    public static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/testdb";
    public static final String DBUSER = "sa";
    public static final String DBPASS = "Treviso1";

    public static void main(String args[]) throws SQLException {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
            String sql = "SELECT username, email, firstname, lastname, age, createdate, level from user ";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String username = rs.getString(1);
                String email = rs.getString(2);
                String firstname = rs.getString(3);
                String lastname = rs.getString(4);
                int age = rs.getInt(5);
                Date createdate = rs.getDate(6);
                int level = rs.getInt(7);
                
                System.out.println("user name: " + username);
                System.out.println("email: " + email);
                System.out.println("first name: " + firstname);
                System.out.println("last name: " + lastname);
                System.out.println("age: " + age);
                System.out.println("Create Date: " + createdate);
                System.out.println("level: " + level);
                System.out.println("-------------------------");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            rs.close();
            pstmt.close();
            conn.close();
        }

    }

}
