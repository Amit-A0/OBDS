<%-- 
    Document   : reg
    Created on : May 5, 2024, 11:12:57 PM
    Author     : c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
        <%@ page import ="java.sql.*" %>
        <%@ page import ="javax.sql.*" %>
          <%
                            String Name=request.getParameter("Name");
            String Phone=request.getParameter("Phone");
            String Password=request.getParameter("Password");

                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/obds","root","root");
                Statement st=con.createStatement();
                ResultSet rs;
                st.executeUpdate("insert into user values('"+Name+"','"+Phone+"','"+Password+"')");
                response.sendRedirect("user_login.html") ;
            %>
    </body>
</html>
