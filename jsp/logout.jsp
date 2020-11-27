<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
</head>
<body>
    <%
        session.removeAttribute("fname");
        session.removeAttribute("lname");
        session.removeAttribute("role");
        response.sendRedirect("../index.jsp");
    %>
</body>
</html>