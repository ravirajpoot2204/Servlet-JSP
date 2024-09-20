<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="name" value="TECHSOFT INDIA">

        </c:set>
        <h1><c:out value="${name}"></c:out></h1>
        <h1>Length of Name : <c:out value="${fn:length(name)}"></c:out></h1>
        <h1><c:out value="${fn:toLowerCase(name)}"></c:out></h1>
        <h2><c:out value="${fn:contains(name, 'SOFT')}"></c:out></h2>
    </body>
</html>
