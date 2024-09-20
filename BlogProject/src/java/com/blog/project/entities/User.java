package com.blog.project.entities;

import java.sql.*;

public class User {

    private int user_id;
    private String user_name;
    private String user_email;
    private String user_gender;
    private String user_password;
    private Timestamp rdate;
    private String user_profile;

    public User(int user_id, String user_name, String user_email, String user_gender, String user_password, Timestamp rdate) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_email = user_email;
        this.user_gender = user_gender;
        this.user_password = user_password;
        this.rdate = rdate;
    }

    public User() {
    }

    public User(String user_name, String user_email, String user_gender, String user_password) {
        this.user_name = user_name;
        this.user_email = user_email;
        this.user_gender = user_gender;
        this.user_password = user_password;
    }

//getters and setters
    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public void setUser_gender(String user_gender) {
        this.user_gender = user_gender;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public String getUser_gender() {
        return user_gender;
    }

    public String getUser_password() {
        return user_password;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public void setUser_profile(String user_profile) {
        this.user_profile = user_profile;
    }

    public String getUser_profile() {
        return user_profile;
    }

}
