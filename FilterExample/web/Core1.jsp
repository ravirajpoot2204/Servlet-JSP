
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Core JSTL Tags Page</title>
    </head>
    <body>
        <h1>JSP Core JSTL Tags Page</h1>


        <!--1.set-->
        <c:set var="i" value="0" scope="application"></c:set>

            <!--2.Out-->                       

            <h2 ><c:out value="${i}" >This is default value</c:out></h2>
            <!--3. Remove-->
        <%--<c:remove var="i">--%>

        <%--</c:remove>--%>

        <h2 ><c:out value="${i}" >This is default value</c:out></h2>
            <hr>
            <!--4.IF--> 
        <%--<c:if test="${i==15}">--%>
        <!--<h2>i=15a</h2>-->
        <%--</c:if>--%>
        <!--5.Choose,When,Otherwise-->
        <%--<c:choose>--%>
        <%--<c:when test="${i<0}">--%>
        <!--<<h1>negative number, 1 case</h1>-->
        <%--</c:when>--%>
        <%--<c:when test="${i>0}">--%>
        <!--<<h1>positive number, 2 case</h1>-->
        <%--</c:when>--%>
        <%--<c:otherwise>--%>
        <!--<<h1>Default case, i = 0</h1>-->
        <%--</c:otherwise>--%>
        <%--</c:choose>--%>
        <!--6.foreach-->
        <c:forEach var="j" begin="1" end="10">
            <h1>Value of J is : <c:out value="${j}"></c:out></h1>
        </c:forEach>
        <!--7.re-direct-->
        <c:url var="myurl" value="https://www.google.com/search">
            <!--8.Param Tag-->
            <c:param name="q" value="learn code with durgesh"></c:param>

        </c:url>


        <c:out value="${myurl}"></c:out> 

        <c:redirect url="${myurl}">

        </c:redirect>
    </body>

</html>
