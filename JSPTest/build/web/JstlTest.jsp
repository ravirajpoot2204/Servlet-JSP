<%-- 
    Document   : JstlTest
    Created on : Jul 11, 2024, 10:15:57 AM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorPage.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 3 taglib</title>
    </head>
    <body>
        <h1>Taglib </h1>
        <hr>
        <c:set var="name" value="Ravi"></c:set>
        <c:out value="${name}"></c:out>
        <c:if test="${3<4}"> 
            <h2>OK</h2>
        </c:if>
        <!-- Declarative tag -->
        <%! int n1 = 20;
            int n2 = 0;%>
        <!--Scriptlet Tag-->
        <%
            int division = n1 / n2;%>
        <!-- Expression Tag -->
        <<h1>Division is  : <%=division%></h1>
    </body>
</html>
