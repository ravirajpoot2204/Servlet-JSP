package com.user;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig // we can not use the multipart content if we dont add this antonation
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            //getting all the data
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            Part part = request.getPart("image"); // in part we can store image tyoe content or file type content
            String FileName = part.getSubmittedFileName();
            // out.println(FileName);
//connection
            try {
                try {
                    Thread.sleep(3000);
                } catch (InterruptedException ex) {
                    Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
                }
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube", "admin", "123456");
                // ./././.query
                String qInsert = "insert into user(name,password,email,imageName) values(?,?,?,?);";
                PreparedStatement prstmt = con.prepareStatement(qInsert);
                prstmt.setString(1, name);
                prstmt.setString(2, password);
                prstmt.setString(3, email);
                prstmt.setString(4, FileName);

                prstmt.executeUpdate();
                out.println("done");// this must be written after the prepared statement

                //fileUpload
                InputStream is = part.getInputStream();
                byte[] data = new byte[is.available()];
                is.read(data);

                //*/*/*/*/*/  Path Configuration to save images
                String path = request.getRealPath("/") + "img" + File.separator + FileName;
                // out.println(path);
                /* '\\' = windows os
                '/' = linus os
                File.seperator to adjust the slash according to os*/
                FileOutputStream fos = new FileOutputStream(path);
                fos.write(data);
                fos.close();

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                out.println("Error");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
