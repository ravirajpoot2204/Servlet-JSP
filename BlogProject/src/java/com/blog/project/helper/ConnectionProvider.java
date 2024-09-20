package com.blog.project.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {

        try {
            if (con == null) {
                //Driver load
                Class.forName("com.mysql.jdbc.Driver");
                //Create a Conection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogproject", "admin", "123456");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
