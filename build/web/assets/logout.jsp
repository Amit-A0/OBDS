<%-- 
    Document   : logout
    Created on : May 6, 2024, 6:25:31 AM
    Author     : c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("user_login.html") ;
        %>
    </body>
</html>
