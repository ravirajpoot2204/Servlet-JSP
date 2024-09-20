
package com.practice;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
public class MyServlet extends HttpServlet 
{
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
      System.out.println("This is get method..........");
  
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      out.println("<h1>This is get method.. </h1>");
      out.println("<h6>Today's date is "+new Date().toString()+"</h6>");
  
  }    

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
}
