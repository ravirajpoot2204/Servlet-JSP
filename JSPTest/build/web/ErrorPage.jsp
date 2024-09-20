<%-- 
    Document   : ErrorPage
    Created on : Jul 11, 2024, 11:24:09 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something went wrong!!!!</title>
        <style>
            *{
                padding : 0px;
                margin : 0px;

            }
        </style>
    </head>
    <body>
        <div style="padding : 20px; color: blue; background : #e2e2e2;">
            <h1>Something went wrong!!!!</h1>
            <br>
            <p style="padding-up : 10px;"><%=exception%></p>
        </div>
    </body>
</html>
