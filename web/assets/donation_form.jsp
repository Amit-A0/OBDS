<%-- 
    Document   : donation_form
    Created on : May 6, 2024, 7:00:33 AM
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
        <link rel="stylesheet" href="css/donation.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">

        <!--custom js link-->
        <script src="js/imgScript.js" defer></script>


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
                            <h3 style="color: #388ca8; font-weight: 700; text-align: center;">Online Book donation System</h3>
                        </div>
                        <div class="col-4 col-sm-auto register-box-section">
                            <div class="register-box">

                                <%
                                    String name = (String) session.getAttribute("NAME");
                                    String phone = (String) session.getAttribute("PHONE");
                                    if (name == null || name == "") {
                                        name = "";
                                        phone = "";
                                %>
                                <h6>New User Register Here</h6>
                                <a style="--clr: #2f5391" class="register-btn" href="user_reg.html">
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
                                <a style="--clr: #2f5391" class="register-btn" href="logout.jsp">
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
                            <a class="nav-link" id="main-link" aria-current="page" href="../index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="donation-link" aria-current="page" href="donation_form.jsp">Donate
                                Book</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="all_books-link" href="all_books.jsp">Available Book</a>
                        </li>

                        <%
                            if (name == null || name == "") {
                        %>
                        <li class="nav-item">
                            <a class="nav-link" id="login-link" href="user_login.html">Login</a>
                        </li>
                        <li class="nav-item register_link">
                            <a class="nav-link" id="reg-link" href="user_reg.html">Register</a>
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

        <span id="home_link" onclick='window.history.go( - 1); return false;'>
            <i class="fa-solid fa-chevron-left"></i>
        </span>

        <div class="container-fluid" id="content1">
            <div class="row justify-content-center py-4">
                <div class="col-md-6">

                    <section class="container donation-section">

                        <header>Book Donation Form</header>

                        <form action="donation.jsp" method="post" class="form" >
                            <div class="row">
                                <!--                            <div class="col-md-6">
                                                                <div class="imgContainer">
                                                                    <div class="wrapper">
                                                                        <div class="upload-box">
                                
                                                                            <input type="file" name="Pic" accept="image/*" hidden>
                                                                            <img src="upload-icon.svg" alt="">
                                
                                                                            <i class="fa fa-image"> </i>
                                                                            <p>Book Image</p>
                                
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                                <div class="col-md-12">
                                    <div class="input-box mt-1">
                                        <label>Boards :</label>
                                        <select id="board_field" name="Board" class="form-select mt-2" required>
                                            <option selected hidden>Choose Board</option>
                                            <option>MP Board</option>
                                            <option>CBSE</option>
                                        </select>
                                    </div>
                                    <div class="input-box mt-1">
                                        <label>Phone :</label>
                                        <input type="number" name="Phone" value="<% out.print(phone);%>" class="mt-0 mb-1" placeholder="Enter your number"
                                               required>
                                    </div>

                                </div>
                            </div>

                            <div class="column">
                                <div class="input-box">
                                    <label>Book Class :</label>
                                    <select name="B_Class" id="classField" onchange="streamField()" class="form-select mt-2"
                                            required>
                                        <option selected hidden disabled>Choose Class</option>
                                        <option>First</option>
                                        <option>Second</option>
                                        <option>Third</option>
                                        <option>Fourth</option>
                                        <option>Fifth</option>
                                        <option>Sixth</option>
                                        <option>Seventh</option>
                                        <option>Eight</option>
                                        <option>Ninth</option>
                                        <option>Tenth</option>
                                        <option>Eleventh</option>
                                        <option>Twelth</option>
                                    </select>
                                </div>
                                <div class="input-box" id="streamField" style="display: none;">
                                    <label>Stream :</label>
                                    <select name="Stream" class="form-select mt-2">
                                        <option selected hidden disabled>Choose Stream</option>
                                        <option>Science</option>
                                        <option>Commerce</option>
                                        <option>Humanities</option>
                                        <option>Arts</option>
                                        <option>Vocational</option>
                                        <option>Computer Science</option>
                                        <option>Engineering</option>
                                        <option>Medical</option>
                                        <option>Biotechnology</option>
                                        <option>Agriculture</option>
                                        <option>Fashion Designing</option>
                                        <option>Hotel Management</option>
                                        <option>Aviation</option>
                                        <option>Mass Communication</option>
                                        <option>Law</option>
                                        <option>Finance</option>
                                        <option>Accounting</option>
                                        <option>Banking</option>
                                        <option>Insurance</option>
                                        <option>Entrepreneurship</option>
                                        <option>Psychology</option>
                                        <option>Sociology</option>
                                        <option>Political Science</option>
                                        <option>Geography</option>
                                        <option>History</option>
                                        <option>Philosophy</option>
                                        <option>Languages</option>
                                        <option>Economics</option>
                                        <option>Statistics</option>
                                        <option>Mathematics</option>
                                        <option>Physics</option>
                                        <option>Chemistry</option>
                                        <option>Biology</option>
                                        <option>Geology</option>
                                        <option>Environmental Science</option>
                                        <option>Applied Science</option>
                                        <option>Music</option>
                                        <option>Fine Arts</option>
                                        <option>Dance</option>
                                        <option>Theatre</option>
                                        <option>Sports</option>
                                    </select>
                                </div>
                            </div>

                            <div class="input-box mt-1">
                                <label>Full name :</label>
                                <input type="text" name="Name" value="<% out.print(name);%>" class="mt-0 mb-1" placeholder="Enter full name" required>
                            </div>

                            <div class="input-box address">
                                <label>Address (Optional) :</label>
                                <input class="mt-0" type="text" name="Address" placeholder="Enter your address">



                                <div class="column">
                                    <input type="text" name="City" placeholder="Enter your city">
                                    <input type="text" name="Ward" placeholder="Enter your ward no.">
                                    <input type="number" name="Pin" placeholder="Enter postal code">
                                </div>
                            </div>

                            <input type="submit" value="Submit" id="donate_btn" name="Donate">

                        </form>
                    </section>

                </div>
            </div>
        </div>
        <!-- Form end -->

        <!--footer start-->
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
                                <li><a href="../index.jsp">Home</a></li>
                                <li><a href="user_login.html">Login</a></li>
                                <li><a href="user_reg.html">Register</a></li>
                            </div>
                            <div class="col">
                                <li><a href="donation_form.jsp">Donate Book</a></li>
                                <li><a href="all_books.jsp">Search Book</a></li>
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
        <!--footer end-->

        <script>
                    function streamField() {
                    let classField = document.getElementById("classField").value;
                            let streamField = document.getElementById("streamField");
                            if (classField == "Eleventh" || classField == "Twelth") {
                    streamField.style.display = "block";
                    } else {
                    streamField.style.display = "none";
                    }
                    }
        </script>

        <!-- ionicon link-->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>


    </body>

</html>