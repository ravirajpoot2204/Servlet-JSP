package com.servlets;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class SecondServlet extends GenericServlet
{

    @Override
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException 
    {
        System.out.println("This is servlet using generic servlet..");
         resp.setContentType("text/html");
         PrintWriter out = resp.getWriter();
    out.println("<h1>This is second servlet using generic servlet</h1>");
    }
    
    
    
    
}
