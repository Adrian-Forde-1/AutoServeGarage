<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <%
        String mechanicFName = request.getParameter("mechanic-f-name");
        String mechanicLName = request.getParameter("mechanic-l-name");
        String mechanicEmail = request.getParameter("mechanic-email");
        String mechanicAddress = request.getParameter("mechanic-address");
        String mechanicContact = request.getParameter("mechanic-contact");
        String mechanicDOB = request.getParameter("mechanic-dob");
        String mechanicSex = request.getParameter("mechanic-sex");
        int mechanicSpecialization = Integer.parseInt(request.getParameter("mechanic-specialization"));
        int mechanicGarageID = Integer.parseInt(request.getParameter("mechanic-garage-id"));
        
       

        String username = "root";
        String password = "rootUsr";

        try {
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/autoserve", username, password);;
          Class.forName("com.mysql.jdbc.Driver");

          PreparedStatement pstatement = null;
          int updateQuery = 0;

          String queryString = "INSERT INTO Mechanic (fname, lname, email, address, contact, dob, sex, garage_id) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

          pstatement = connection.prepareStatement(queryString);
          pstatement.setString(1, mechanicFName);
          pstatement.setString(2, mechanicLName);
          pstatement.setString(3, mechanicEmail);
          pstatement.setString(4, mechanicAddress);
          pstatement.setString(5, mechanicContact);
          pstatement.setString(6, mechanicDOB);
          pstatement.setString(7, mechanicSex);
          pstatement.setInt(8, mechanicGarageID);

          updateQuery = pstatement.executeUpdate();

          if(updateQuery != 0) {
            String getMechanicQuery = "SELECT mechanic_id FROM Mechanic ORDER BY mechanic_id DESC LIMIT 1";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(getMechanicQuery);

            if(resultSet.next()) {
              int mechanicID = resultSet.getInt("mechanic_id");

              PreparedStatement specStatement = null;
              String queryAddSpec = "INSERT INTO mechanic_specialization (mechanic_id, specialization_id) VALUES(?, ?)";

              specStatement = connection.prepareStatement(queryAddSpec);
              specStatement.setInt(1, mechanicID);
              specStatement.setInt(2, mechanicSpecialization);

              int mechSpecUpdateQuery = specStatement.executeUpdate();

              if(mechSpecUpdateQuery != 0) { %>
                  <h4>Mechanic was saved to the database</h4>
                <%
              } else {
                out.println("Something went wrong saving mechani's specialization to database");
              }
              
            } else {
              out.println("Something went wrong when added mechanic specialization");
            }

            
          }
        } catch(Exception ex) {
          out.println(ex);
        }
    %>
  </body>
</html>
