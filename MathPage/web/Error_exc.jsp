<%@ page isErrorPage="true" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something Went Wrong!!!</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <div class="container p-3 text-center mt-3 ">
            <img src="img/error.png" class="img-fluid"/>

            <h2 class="display-3">Something Went Wrong!!!</h2>
            <h4 class="display-6">Found the Error : <%=exception%></h4>

            <a href="index.html" type="button" class="btn btn-secondary btn-lg btn-block mt-3">Back To Home Page</a>
        </div>    </body>
</html>
