package com.practice;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        out.println("<h2>Welcome to register<h2>");

        String Name = request.getParameter("user_name");

        String Password = request.getParameter("user_password");

        String Email = request.getParameter("user_email");

        String Gender = request.getParameter("user_gender");

        String Course = request.getParameter("user_course");
        String cond = request.getParameter("condition");
        if (cond != null) {
            if (cond.equals("checked")) {
                out.println("<h2>Name:" + Name + "</h2>");
                out.println("<h2>Password:" + Password + "</h2>");
                out.println("<h2>Email:" + Email + "</h2>");
                out.println("<h2>Gender:" + Gender + "</h2>");
                out.println("<h2>Course:" + Course + "</h2>");
                RequestDispatcher rd = request.getRequestDispatcher("success");
                rd.forward(request, response);
            }
        } else {
            out.println("<h1>Please check the box</h1>");
            //in this situationwe are going to include index.html via using request dispatcher

            //get the object RequestDispatcher
            RequestDispatcher rd = request.getRequestDispatcher("index.html");
            //calling include method to include the page 
            rd.include(request, response);
        }
    }
}
