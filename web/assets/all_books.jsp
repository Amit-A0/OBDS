<%-- 
    Document   : all_books
    Created on : May 6, 2024, 12:54:09 AM
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

        <!--favicon-->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

        <!--custom css link-->
        <link rel="stylesheet" href="css/all_books.css">
        <link rel="stylesheet" href="css/books.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">

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
                                    if (name == null || name == "") {
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
                            <a class="nav-link" id="donation-link" aria-current="page" href="donation_form.jsp">Donate
                                Book</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="all_books-link" href="all_books.jsp">Available Book</a>
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

        <!-- search bar -->

        <div class="container" id="content_1">

            <div class="row col-md-12 justify-content-center">

                <div class="col-md-8" id="content2">

                    <div class="container contant">
                        <header>
                            <div class="header-action">
                                <input class="form-control rounded-pill" id="myInput" onkeyup="searchFun()" type="search"
                                       placeholder="search book">
                            </div>
                        </header>
                    </div>

                </div>

            </div>
        </div>

        <!-- book section start  -->

        <div class="container-fluid" id="content16">
            <div class="card-container" id="hBody">
                <%@ page import ="java.sql.*" %>
                <%@ page import ="javax.sql.*" %>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obds", "root", "root");
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select* from donation where Status='Pending'");
                    while (rs.next()) {
                %>

                <section class="card">
                    <img class="my-2" src="images/default_book.png" alt="">
                    <div class="card-content">
                        <h6><span><%=rs.getString(2)%></span> (<span><%=rs.getString(4)%></span>)</h6>
                        <h6>Stream:  <span><%=rs.getString(5)%></span></h6>
                        <div class="my-2">
                            <center> <a href="book_detail.jsp?id=<%=rs.getString(11)%>" class="btn">View Details</a></center>
                        </div>
                    </div>
                </section>
                <%
                    }
                %>
            </div>

        </div>

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
                    function searchFun(){
                    let filter = document.getElementById('myInput').value.toUpperCase();
                            let hBody = document.getElementById('hBody');
                            let div = hBody.getElementsByTagName('section');
                            for (var i = 0; i < div.length; i++) {
                    let span1 = div[i].getElementsByTagName('span')[0];
                            let span2 = div[i].getElementsByTagName('span')[1];
                            let span3 = div[i].getElementsByTagName('span')[2];
                            if (span1 || span2 || span3) {
                    let textValue1 = span1.textContent || span1.innerHTML;
                            let textValue2 = span2.textContent || span2.innerHTML;
                            let textValue3 = span3.textContent || span3.innerHTML;
                            if (textValue1.toUpperCase().indexOf(filter) > - 1) {
                    div[i].style.display = '';
                    } else if (textValue2.toUpperCase().indexOf(filter) > - 1) {
                    div[i].style.display = '';
                    } else if (textValue3.toUpperCase().indexOf(filter) > - 1) {
                    div[i].style.display = '';
                    } else {
                    div[i].style.display = 'none';
                    }
                    }
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
