<%-- 
    Document   : register
    Created on : Jul 4, 2024, 12:57:49 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" 
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
    </head>
    <body style="background : url(img/pexels-pixabay-247671.jpg); background-size: cover; background-attachment : fixed;">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align">Register Here!!</h3>
                            <h5 id="msg" class="center-align"></h5>

                            <div class="myform center-align">
                                <!--creating form-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter user name" required/>
                                    <input type="password" name="user_password" placeholder="Enter user Password" required/>
                                    <input type="email" name="user_email" placeholder="Enter user email" required/>
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input name="image" type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn light-blue darken-4">Register</button>
                                </form>
                            </div>
                            <div class="loader center-align" style="margin-top: 10px; display: none;">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="gap-patch">
                                            <div class="circle"></div>
                                        </div>
                                        <div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h5>Please Wait...</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>

        <script>
            $(document).ready(function () {
                console.log("Page is ready..");

                $("#myform").on('submit', function (event) {
                    event.preventDefault();
                    //var f = $(this).serialize(); for only text input
                    let f = new FormData(this);    //this  = form data
                    console.log(f);
                    $(".loader").show();
                    $(".myform").hide();

                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success......");
                            $(".loader").hide();
                            $(".myform").show();
                            if (data.trim() === 'done') {
                                $('#msg').html("Successfully Registered");
                                $('#msg').addClass('green-text');

                            } else {
                                $('#msg').html("Something went wrong!");
                                $('#msg').addClass('red-text');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("Errors......");
                            console.log("Status: " + textStatus);
                            console.log("Error: " + errorThrown);
                            $(".loader").hide();
                            $(".myform").show();
                            $('#msg').html("Something went wrong!");
                            $('#msg').addClass('red-text');

                        }, processData: false,
                        contentType: false
                    });
                });
            });
        </script>
    </body>
</html>