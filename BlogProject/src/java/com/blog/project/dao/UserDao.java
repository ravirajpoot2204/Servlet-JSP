package com.blog.project.dao;

import com.blog.project.entities.User;
import java.sql.*;

public class UserDao {
    
    private Connection con;
    
    public UserDao(Connection con) {
        this.con = con;
    }
//method to insert user data

    public boolean saveUser(User user) {
        boolean f = false;
        try {
            //user data -----> database

            String query = "insert into user(user_name,user_email,user_gender,user_password) values(?,?,?,?)";
            PreparedStatement preparedStatement = this.con.prepareStatement(query);
            preparedStatement.setString(1, user.getUser_name());
            preparedStatement.setString(2, user.getUser_email());
            preparedStatement.setString(3, user.getUser_gender());
            preparedStatement.setString(4, user.getUser_password());
            preparedStatement.executeUpdate();
            
            f = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
//    get user email and password

    public User getUserEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where user_email=? and user_password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                
                user = new User();
                //data from db
                String name = rs.getString("user_name");
                email = rs.getString("user_email");
                password = rs.getString("user_password");

                //set data into user obj
                user.setUser_gender(rs.getString("user_gender"));
                user.setUser_id(rs.getInt("user_id"));
                user.setUser_name(rs.getString("user_name"));
                user.setUser_email(rs.getString("user_email"));
                user.setUser_password(rs.getString("user_password"));
                user.setRdate(rs.getTimestamp("user_rdate"));
                user.setUser_profile(rs.getString("user_profile"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
        
    }
}
