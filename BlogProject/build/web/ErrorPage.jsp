<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something Went Wrong!!</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/mycss.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="container text-center">
            <<img src="img/error.png" class="img-fluid mt-5"/>

            <<h4 class="display-3">Something Went Wrong!!</h4>
            <%= exception%>
            <br>
            <a href="index.jsp" class=" btn btn-lg primary-background mt-3 text-white">Home</a>
        </div>

    </body>
</html>
