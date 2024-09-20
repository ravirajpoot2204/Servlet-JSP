<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error_exc.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //fecth number
            String N1 = request.getParameter("n1");
            String N2 = request.getParameter("n2");
            int n1 = Integer.parseInt(N1);
            int n2 = Integer.parseInt(N2);
            int c = n1 / n2;
        %>

        <h1>Result is :   <%=c%></h1>
    </body>
</html>
