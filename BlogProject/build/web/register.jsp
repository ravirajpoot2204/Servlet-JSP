<%-- 
    Document   : SignUp
    Created on : Jul 23, 2024, 12:51:20 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>


        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body>
        <!--normal navbar-->
        <%@include file="normal_navbar.jsp" %>
        <main class="primary-background p-5" >
            <div class="container " >
                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-pencil fa-3x p "></span> 
                            <p>Sign-Up    </p>
                        </div>

                        <div class="card-body">

                            <form id="reg-form" action="registerServlet" method="POST">
                                <div class="form-group">
                                    <label for="user_name">User Name</label>
                                    <input type="text" class="form-control" id="user_name" name="user_name" aria-describedby="emailHelp" placeholder="Enter User Name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="user_email" name ="user_email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>

                                <div class="form-group">
                                    <label >Select Gender</label>
                                    <br>
                                    <input type="radio"  id="user_gender" name="user_gender" value="male">     Male
                                    <br>   
                                    <input type="radio"  id="user_gender" name="user_gender" value="female">  Female
                                    <br>                                


                                </div>


                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="user_password" placeholder="Password">
                                </div>


                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1">*Agree Terms & Condition </label>
                                </div>

                                <br>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-3x"></span>
                                    <<h4>Please Wait!</h4>
                                </div>
                                <br> 
                                <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>


                    </div>


                </div>



            </div>


        </main>




        <!--JavaScript-->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded...")

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $('#submit-btn').hide();
                    $('#loader').show();

                    //send data to servlet by using ajax function
                    $.ajax({
                        url: "registerServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $('#submit-btn').show();
                            $('#loader').hide();

                            if (data.trim() === 'done') {

                                swal("Resgistered Successfully!!")
                                        .then((value) => {
                                            window.location = "login_page.jsp";
                                        });
                            } else
                            {

                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);

                            $('#submit-btn').show();
                            $('#loader').hide();

                            swal("Something Went Wrong! Try Again..");



                        },
                        processData: false,
                        contentType: false

                    })



                });


            });
        </script>
    </body>
</html>
