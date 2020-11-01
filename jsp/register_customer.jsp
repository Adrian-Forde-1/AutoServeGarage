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
        String customerFName = request.getParameter("customer-f-name");
        String customerLName = request.getParameter("customer-l-name");
        String customerEmail = request.getParameter("customer-email");
        String customerAddress = request.getParameter("customer-address");
        String customerDOB = request.getParameter("customer-dob");
        String customerSex = request.getParameter("customer-sex");

        String vehicleName = request.getParameter("vehicle-name");
        String vehicleManufacturer = request.getParameter("vehicle-manufacturer");
        String vehicleMilage = request.getParameter("vehicle-milage");
        String vehicleManufactureredDate = request.getParameter("vehicle-manufacturered-date");
        String vehicleColor = request.getParameter("vehicle-color");

        vehicleMilage = Integer.parse(vehicleMilage);

        try {
          java.sql.Connection cn;
          Class.forName("com.mysql.jdbc.Driver");
          cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Distributed", "root", "rootUsr");

          PreparedStatement pstatement = null;
          int updateQuery = 0;

          String queryString = "INSERT INTO Customer (fname, lname, email, address, contact, dob, sex) VALUES(?, ?, ?, ?, ?, ?, ?)";

          pstatement = cn.preparedStatement(queryString);
          pstatement.setString(1, customerFname);
          pstatement.setString(2, customerLname);
          pstatement.setString(3, customerEmail);
          pstatement.setString(4, customerAddress);
          pstatement.setString(5, customerContact);
          pstatement.setString(6, customerDOB);
          pstatement.setString(7, customerSex);

          updateQuery = pstatement.executeUpdate();

          if(updateQuery != 0) { %>
            <br>
            <table>
              <tr>
                <th>Data successfully inserted into database</th>
              </tr>
            </table>
            <%
          }
        } catch(Exception ex) {
          out.println("Unable to connect to database")
        }
    %>
  </body>
</html>
