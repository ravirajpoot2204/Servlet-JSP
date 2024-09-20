
package com.servlets;
import jakarta.servlet.*;
import java.io.*;
import java.util.*;


public class firstServlet implements Servlet {
    //life cycle method
    ServletConfig conf;
    public void init(ServletConfig conf){
        this.conf = conf;
    System.out.println("Creating Object:...");
    }
    public void service(ServletRequest req, ServletResponse resp) throws ServletException , IOException
    {
      System.out.println("Servicing...");
    //Set the  content type of response
    resp.setContentType("Text/html");
  PrintWriter out =  resp.getWriter();
  out.println("<h1>this is my output from servlet method : </h1>");
    
  out.println("<h1>Today's date and time is : "+new Date().toString() +"</h1>");
    }
    public void destroy(){
      System.out.println("Going To Destroy servlet object...");
    }
    /// non life cycle method
    
    public ServletConfig getServletConfig()
    {
    return this.conf;
    } 
    public String getServletInfo()
    {
    return "This Servlet is created by ravi";
    }
}
