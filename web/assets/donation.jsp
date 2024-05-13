<%-- 
    Document   : donation
    Created on : May 5, 2024, 11:48:26 PM
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
           // String Pic=request.getParameter("Pic");
            String Board=request.getParameter("Board");
            String Phone=request.getParameter("Phone");
            String B_Class=request.getParameter("B_Class");
            String Stream=request.getParameter("Stream");
            String Name=request.getParameter("Name");
            String Address=request.getParameter("Address");
            String Ward=request.getParameter("Ward");
            String City=request.getParameter("City");
            String Pin=request.getParameter("Pin");
         

                Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/obds","root","907Amit@123");
                Statement st=con.createStatement();
                ResultSet rs;
                //st.executeUpdate("insert into donation values('"+"0101"+"','"+Board+"','"+Phone+"','"+B_Class+"','"+Stream+"','"+Name+"','"+Address+"','"+Ward+"','"+City+"','"+Pin+"')");
                st.executeUpdate("insert into donation(Pic,Board,Phone,B_Class,Stream,Name,Address,Ward,City,Pin) values('"+"0101"+"','"+Board+"','"+Phone+"','"+B_Class+"','"+Stream+"','"+Name+"','"+Address+"','"+Ward+"','"+City+"','"+Pin+"')");
                response.sendRedirect("all_books.jsp") ;
            %>
    </body>
</html>
