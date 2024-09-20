<%-- 
    Document   : Page2
    Created on : Jul 12, 2024, 6:24:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>This is page 2</h1>


        <%
//Redirection
            response.sendRedirect("Page3.jsp");

        %>
    </body>
</html>
