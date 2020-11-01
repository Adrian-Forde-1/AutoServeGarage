<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        String usrEmail = request.getParameter("login-email");
        String usrPassword = request.getParameter("login-password");

        String dbURL = "jdbc:mysql://localhost:3306/autoserve";
        String username = "root";
        String password = "rootUsr";

        try {
    
          Connection connection = null;
          Class.forName("com.mysql.jdbc.Driver");
          connection = DriverManager.getConnection(dbURL, username, password);
          
          String queryString = "SELECT * FROM User WHERE email = '" + usrEmail + "' AND password = '" + usrPassword + "'";

          Statement statement = connection.createStatement();
          Statement roleStatement = connection.createStatement();
          ResultSet resultSet = statement.executeQuery(queryString);
    
          if(resultSet.next()) {
            %> <p>Not Empty</p> <%
            int roleID = resultSet.getInt("role_id");
            ResultSet roleSet = roleStatement.executeQuery("SELECT role FROM Role WHERE role_id = '"+ roleID +"'");

            if(roleSet.next()) {
              session.setAttribute("fname", resultSet.getString("fname"));
              session.setAttribute("lname", resultSet.getString("lname"));
              session.setAttribute("role", roleSet.getString("role"));
              response.sendRedirect("../index.jsp");
            } else {
                out.println("Something went wrong!");
            }
          } else {
            %> <p>Empty</p> <% 
              out.println("Something went wrong in 1st query");
          }
        }

        catch(Exception ex) {
          out.println(ex);
        }
    %>
</body>
</html>