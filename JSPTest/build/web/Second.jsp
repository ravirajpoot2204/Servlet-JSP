
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random,java.util.ArrayList,java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 2</title>
    </head>
    <body>
        <script>

        </script>

        <%@include file = "First.jsp" %>
        <h1>Random Number: <%            Random r = new Random();
            int n = r.nextInt(15);

            %><%= n%></h1>
    </body>
</html>
