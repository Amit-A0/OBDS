<%-- 
    Document   : index
    Created on : May 6, 2024, 6:43:09 AM
    Author     : c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Book Donation System</title>

        <!--custom css link-->
        <link rel="stylesheet" href="assets/css/books.css">
        <link rel="stylesheet" href="assets/css/navbar.css">
        <link rel="stylesheet" href="assets/css/footer.css">

        <!-- bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

        <!-- Icons8 CDN -->
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

        <!-- font awesome link -->
        <script src="https://kit.fontawesome.com/f4c2fc2ec2.js" crossorigin="anonymous"></script>

    </head>

    <body>

        <!--Nev bar start-->

        <nav class="navbar navbar-expand-lg p-0 main-navbar">
            <div class="container-fluid header-top pt-3 pb-2">
                <div class="container">
                    <div class="row justify-content-between align-items-center">
                        <div class="col-8 col-sm-4">
                            <!-- <img src="assets/images/logo.png" alt="LOGO" id="LOGO"> -->
                            <h3 style="color: #388ca8; font-weight: 700; text-align: center;">Online Book donation System</h3>
                        </div>
                        <div class="col-4 col-sm-auto register-box-section">
                            <div class="register-box">
                                <%
                                    String name = (String) session.getAttribute("NAME");
                                    if (name == null || name == "") {
                                %>
                                <h6>New User Register Here</h6>
                                <a style="--clr: #2f5391" class="register-btn" href="assets/user_reg.html">
                                    <span class="button__icon-wrapper">
                                        <i class="fa-solid fa-arrow-up fa-rotate-by btn_icon"
                                           style="--fa-rotate-angle: 45deg;"></i>
                                        <i class="fa-regular fa-hand-point-right btn_icon btn_icon_copy"></i>
                                    </span>
                                    Register Now
                                </a>
                                <%
                                } else {
                                %>
                                <h6><% out.print(name); %></h6>
                                <a style="--clr: #2f5391" class="register-btn" href="assets/logout.jsp">
                                    <span class="button__icon-wrapper">
                                        <i class="fa-solid fa-arrow-up fa-rotate-by btn_icon"
                                           style="--fa-rotate-angle: 45deg;"></i>
                                        <i class="fa-regular fa-hand-point-right btn_icon btn_icon_copy"></i>
                                    </span>
                                    Logout
                                </a>
                                <%
                                    }
                                %>
                            </div>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid header-bottom">

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto navbar-list">
                        <li class="nav-item">
                            <a class="nav-link active" id="main-link" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="donation-link" aria-current="page" href="assets/donation_form.jsp">Donate
                                Book</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="all_books-link" href="assets/all_books.jsp">Available Book</a>
                        </li>
                        
                        <%
                            if (name == null || name == "") {
                        %>
                        <li class="nav-item">
                            <a class="nav-link" id="login-link" href="assets/user_login.html">Login</a>
                        </li>
                        <li class="nav-item register_link">
                            <a class="nav-link" id="reg-link" href="assets/user_reg.html">Register</a>
                        </li>
                        <%
                        } else {
                        %>
                        <li class="nav-item register_link">
                            <a class="nav-link" id="logout-link" href="logout.jsp">Logout</a>
                        </li>
                        <%
                            }
                        %>

                    </ul>
                </div>
            </div>
        </nav>

        <!--Nev bar end-->

        <!-- cards -->

        <div class="container-fluid">
            <!-- <div class="container"> -->

            <div class="row mb-4" id="content11">

                <div class="col-md-4" id="content12">

                    <div class="block">

                        <div class="innerBlock">

                            <div class="row col-md-12 align-items-center" id="content13">

                                <div class="col-md-6" id="content14">
                                    <h4>Donate Book</h4>
                                    <p>Book donations support education and learning in impactful ways.</p>
                                    <!-- <p>Fill up the Book Donation form clicking below <i class="fa-solid fa-arrow-down"></i></p> -->

                                    <div class="form_btn">
                                        <a href="assets/donation_form.jsp"> <input
                                                style="font-weight: 500; background-color: #98c1d9; border:#b69d78;"
                                                type="submit" value="Donate Book" name="submit" class="btn btn-primary"
                                                id="submit"> </a>
                                    </div>

                                </div>
                                <div class="col-md-6" id="content14">
                                    <img src="assets/images/book.png" alt="" width="100%">

                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-4" id="content12">

                    <div class="block">

                        <div class="innerBlock">

                            <div class="row col-md-12 align-items-center" id="content13">

                                <div class="col-md-6" id="content14">
                                    <h4>Search Book</h4>
                                    <p>Search for available Books on our portal by class or board.</p>
                                    <div class="form_btn">
                                        <a href="assets/all_books.jsp"> <input
                                                style="font-weight: 500; background-color: #98c1d9; border:#b69d78;"
                                                type="submit" value="Search Book" name="submit" class="btn btn-primary"
                                                id="submit"> </a>
                                    </div>
                                </div>
                                <div class="col-md-6" id="content14">
                                    <img src="assets/images/search1.png" alt="" width="100%">
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

                <div class="col-md-4" id="content12">

                    <div class="block">

                        <div class="innerBlock">

                            <div class="row col-md-12 align-items-center" id="content13">

                                <div class="col-md-6" id="content14">
                                    <h4>Mark As Donated</h4>
                                    <p>Update your Book status after donating, for avoid calls form users.</p>
                                    <div class="form_btn">
                                        <a href="assets/mark_donated.jsp"> <input
                                                style="font-weight: 500; background-color: #98c1d9; border:#b69d78;"
                                                type="submit" value="Update Status" name="submit" class="btn btn-primary"
                                                id="submit"> </a>
                                    </div>
                                </div>
                                <div class="col-md-6" id="content14">
                                    <img src="assets/images/about3.png" alt="" width="100%">
                                </div>
                            </div>

                        </div>
                    </div>

                </div>

            </div>

        </div>

        <div class="container-fluid" id="content1">

            <img src="assets/images/b1.png" alt="" width="100%">

        </div>


        <!--Nev bar start-->

        <div class="container-fluid footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 py-3">
                        <h3 style="color: #388ca8; font-weight: 700; text-align: center;">Online Book donation System</h3>
                    </div>
                    <div class="col-md-4 py-3">
                        <h6>Important Links</h6>
                        <div class="row">
                            <div class="col">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="assets/user_login.html">Login</a></li>
                                <li><a href="assets/user_reg.html">Register</a></li>
                            </div>
                            <div class="col">
                                <li><a href="assets/donation_form.jsp">Donate Book</a></li>
                                <li><a href="assets/all_books.jsp">Search Book</a></li>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 py-3">
                        <h6>Follow Us</h6>

                        <div class="social-icons">
                            <a class="social-link1">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <a class="social-link2">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                            <a class="social-link3">
                                <i class="fa-brands fa-youtube"></i>
                            </a>
                            <a class="social-link4">
                                <i class="fa-brands fa-instagram"></i>
                            </a>
                        </div>

                    </div>
                </div>

            </div>
            <div class="row">
                <hr class="mb-1">
                <p style="text-align: center;">Designed By: Amit Ahirwar</p>
            </div>
        </div>

        <!--Nev bar end-->

        <!-- Form end -->

        <!-- custom js link-->
        <script src="js/script.js"></script>
        <script src="profile.js"></script>

        <!-- ionicon link-->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    </body>

</html>