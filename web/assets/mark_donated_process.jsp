<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mark Donated Process</title>
</head>

<body>
    <% 
        // Retrieve selected checkbox IDs from the form
        String[] selectedIds = request.getParameterValues("selectedIds");

        if (selectedIds != null && selectedIds.length > 0) {
            try {
                // Establish database connection
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/obds", "root", "907Amit@123");
                PreparedStatement ps = con.prepareStatement("UPDATE donation SET status = 'Donated' WHERE id = ?");
                
                // Iterate over the selected IDs and update the corresponding records
                for (String id : selectedIds) {
                    ps.setInt(1, Integer.parseInt(id));
                    ps.executeUpdate();
                }
                
                // Close database resources
                ps.close();
                con.close();
                
                // Redirect back to the mark_donated.jsp page
                response.sendRedirect("mark_donated.jsp");
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        } else {
            // No checkboxes were selected, handle accordingly
            out.println("No checkboxes were selected.");
        }
    %>
</body>

</html>
