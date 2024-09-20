
<%@page import="com.blog.project.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/mycss.css" rel="stylesheet" type="text/css"/>
        <style>.banner-background{
                clip-path: polygon(0 0, 100% 0, 100% 100%, 84% 95%, 65% 98%, 43% 93%, 22% 100%, 0 96%);
            }</style>

    </head>
    <body >
        <%@include file="normal_navbar.jsp" %>
        <!--Connection-->
        <%
            Connection con = ConnectionProvider.getConnection();
        %>
        <div class="container-fluid m-0 p-0 banner-background  ">
            <div class="jumbotron primary-background text-white ">
                <div class="container " >   
                    <h3 class="display-3">Welcome to Blog-Project</h3>
                    <p>A blog (a truncation of "weblog")[1] is an informational website consisting of discrete, often informal diary-style text entries (posts). Posts are typically displayed in reverse chronological order so that the most recent post appears first, at the top of the web page. In the 2000s, blogs were often the work of a single individual, occasionally of a small group, and often covered a single subject or topic. In the 2010s, "multi-author blogs" (MABs) emerged, featuring the writing of multiple authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other "microblogging" systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or add content to a blog.</p>
                    <a href="register.jsp"  class="btn btn-outline-light btn-lg"><span class="fa fa-pencil"></span>    Sign-UP</a>
                    <a href="login_page.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o"></span>   LogIn</a>
                </div>
            </div>

        </div>
        <!--Cards-->
        <div class="container">

            <div class="row mb-3">

                <div class="col-md-4">

                    <div class="card-body">

                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card-body">

                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card-body">
                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">

            <div class="row">

                <div class="col-md-4">

                    <div class="card-body">
                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card-body">
                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card-body">
                        <h5 class="card-title">JAVA PROGRAMMING</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary text-white">READ MORE</a>
                    </div>
                </div>
            </div>
        </div>
    </div>





    <!--JavaScript-->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>
