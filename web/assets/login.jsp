<%-- 
    Document   : login
    Created on : May 5, 2024, 11:11:20 PM
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
        <%
            String Phone = request.getParameter("Phone");
            String Password = request.getParameter("Password");
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obds", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select Phone, Password, Name from user where Phone='" + Phone + "'");
            if (rs.next()) {
                if (Phone.equals(rs.getString(1)) && Password.equals(rs.getString(2))) {

                    session.setAttribute("PHONE", rs.getString(1));
                    session.setAttribute("NAME", rs.getString(3));
                    
                    response.sendRedirect("donation_form.jsp");
                } else {
                    out.print("Invalid Username OR Password");
                }
            } else {
                out.print("Invalid Username OR Password");
            }
        %>
    </body>
</html>
