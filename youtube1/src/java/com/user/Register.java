//package com.user;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.MultipartConfig;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.Part;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//@MultipartConfig // we can not use the multipart content if we dont add this antonation
//public class Register extends HttpServlet {
//
//    /**
//     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
//     * methods.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//
//            //getting all the data
//            String name = request.getParameter("user_name");
//            String password = request.getParameter("user_password");
//            String email = request.getParameter("user_email");
//            Part part = request.getPart("image"); // in part we can store image tyoe content or file type content
//            String FileName = part.getSubmittedFileName();
//            out.println(FileName);
////connection
//            try {
//                try {
//                    Thread.sleep(3000);
//                } catch (InterruptedException ex) {
//                    Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
//                }
//                Class.forName("com.mysql.cj.jdbc.Driver");
//                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "root", "localHost220*");
//                // ./././.query
//                String qInsert = "insert into user(name,password,email,imageName) values(?,?,?,?);";
//                PreparedStatement prstmt = con.prepareStatement(qInsert);
//                prstmt.setString(1, name);
//                prstmt.setString(2, password);
//                prstmt.setString(3, email);
//                prstmt.setString(4, FileName);
//
//                prstmt.executeUpdate();
//                //Uploading file
//                InputStream is = part.getInputStream();
//                Byte[] data = new Byte[is.available()];
//                is.read();
//
////Path
//                String path ="C:\\Users\\Dell\\Documents\\NetBeansProjects\\Registration\\web\\img" ;
//                out.println(path);
////FileoutputSrteam                
//                // FileOutputStream fos = new FileOutputStream(file);
//                out.println("done");
//            } catch (ClassNotFoundException | SQLException e) {
//                e.printStackTrace();
//                out.println("Error");
//            }
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//}
package com.user;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig // we cannot use the multipart content if we don't add this annotation
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Getting all the data
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            Part part = request.getPart("image"); // In part we can store image type content or file type content
            String fileName = part.getSubmittedFileName();
            out.println(fileName);

            // Connection
            try {
                Thread.sleep(3000);
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "admin", "123456");

                // Insert query
                String qInsert = "insert into user(user_name,user_password,user_email,user_imageName) values(?,?,?,?);";
                PreparedStatement prstmt = con.prepareStatement(qInsert);
                prstmt.setString(1, name);
                prstmt.setString(2, password);
                prstmt.setString(3, email);
                prstmt.setString(4, fileName);

                prstmt.executeUpdate();

                // Uploading file
                InputStream is = part.getInputStream();
                byte[] data = new byte[is.available()];
                is.read(data);

                // Path to save the file
                String path = "C:\\Users\\Dell\\Documents\\NetBeansProjects\\youtube1\\build\\web\\img" + fileName; // Change this to the desired folder on your PC

                // FileOutputStream
                try (FileOutputStream fos = new FileOutputStream(path)) {
                    fos.write(data);
                    fos.flush();
                }

                out.println("File uploaded and data inserted successfully.");
            } catch (ClassNotFoundException | SQLException | InterruptedException e) {
                e.printStackTrace();
                out.println("Error occurred: " + e.getMessage());
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
