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
        String specialization = request.getParameter("specialization");

        String username = "root";
        String password = "rootUsr";

        try {
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/autoserve", username, password);;
          Class.forName("com.mysql.jdbc.Driver");

          PreparedStatement pstatement = null;
          int updateQuery = 0;

          String queryString = "INSERT INTO Specialization (specialization) VALUES(?)";

          pstatement = connection.prepareStatement(queryString);
          pstatement.setString(1, specialization);

          updateQuery = pstatement.executeUpdate();

          if(updateQuery != 0) { %>
            <br>
            <table>
              <tr>
                <th>Data inserted into database</th>
              </tr>
            </table>
            <%
          }
        } catch(Exception ex) {
          out.println(ex);
        }
    %>
</body>
</html>