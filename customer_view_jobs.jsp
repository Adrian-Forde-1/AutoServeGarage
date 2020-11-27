<%@ page import="java.sql.*"%>
<%
  String userRole = (String)session.getAttribute("role");
  int vehicleID = Integer.parseInt(request.getParameter("ID"));

  if(userRole == null) {
    response.sendRedirect("./login.jsp");
  } else if(!userRole.equals("Customer")) {
    response.sendRedirect("./not_found.html");
  }
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>View Jobs</title>

    <link rel="stylesheet" href="./styles/filter_styles.css" />
    <link rel="stylesheet" href="./styles/dashboard.css" />
    <link rel="stylesheet" href="./styles/global.css" />

    <!-- Montserrat Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&display=swap"
      rel="stylesheet"
    />
    <!-- Sacramento Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap"
      rel="stylesheet"
    />
  </head>

  <body>
    <div class="dashboard__wrapper">
      <nav class="dashboard__sidenav">
        <div>
          <a href="index.jsp">
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 16 16"
              class="bi bi-house-fill"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M8 3.293l6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"
              />
              <path
                fill-rule="evenodd"
                d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"
              />
            </svg>
          </a>
        </div>
        <div>
          <a href="customer_dashboard.jsp">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true"
              focusable="false"
              width="1em"
              height="1em"
              preserveAspectRatio="xMidYMid meet"
              viewBox="0 0 512 512"
            >
              <path
                d="M425.7 118.25A240 240 0 0 0 76.32 447l.18.2c.33.35.64.71 1 1.05c.74.84 1.58 1.79 2.57 2.78a41.17 41.17 0 0 0 60.36-.42a157.13 157.13 0 0 1 231.26 0a41.18 41.18 0 0 0 60.65.06l3.21-3.5l.18-.2a239.93 239.93 0 0 0-10-328.76zM240 128a16 16 0 0 1 32 0v32a16 16 0 0 1-32 0zM128 304H96a16 16 0 0 1 0-32h32a16 16 0 0 1 0 32zm48.8-95.2a16 16 0 0 1-22.62 0l-22.63-22.62a16 16 0 0 1 22.63-22.63l22.62 22.63a16 16 0 0 1 0 22.62zm149.3 23.1l-47.5 75.5a31 31 0 0 1-7 7a30.11 30.11 0 0 1-35-49l75.5-47.5a10.23 10.23 0 0 1 11.7 0a10.06 10.06 0 0 1 2.3 14zm31.72-23.1a16 16 0 0 1-22.62-22.62l22.62-22.63a16 16 0 0 1 22.63 22.63zm65.88 227.6zM416 304h-32a16 16 0 0 1 0-32h32a16 16 0 0 1 0 32z"
                fill="currentColor"
              />
            </svg>
          </a>
        </div>
        <div>
          <a href="customer_vehicles.jsp">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true"
              focusable="false"
              width="1em"
              height="1em"
              preserveAspectRatio="xMidYMid meet"
              viewBox="0 0 24 24"
            >
              <path
                d="M20.772 10.155l-1.368-4.104A2.995 2.995 0 0 0 16.559 4H7.441a2.995 2.995 0 0 0-2.845 2.051l-1.368 4.104A2 2 0 0 0 2 12v5c0 .738.404 1.376 1 1.723V21a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2h12v2a1 1 0 0 0 1 1h1a1 1 0 0 0 1-1v-2.277A1.99 1.99 0 0 0 22 17v-5a2 2 0 0 0-1.228-1.845zM7.441 6h9.117c.431 0 .813.274.949.684L18.613 10H5.387l1.105-3.316A1 1 0 0 1 7.441 6zM5.5 16a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 5.5 16zm13 0a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 18.5 16z"
                fill="currentColor"
              />
            </svg>
          </a>
        </div>
        <div>
          <a href="estimate_calculator.jsp">
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 16 16"
              class="bi bi-calculator-fill"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm2 .5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-2zm0 4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zM4.5 9a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM4 12.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zM7.5 6a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM7 9.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm.5 2.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1zM10 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm.5 2.5a.5.5 0 0 0-.5.5v4a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 0-.5-.5h-1z"
              />
            </svg>
          </a>
        </div>
      </nav>
      <div class="dashboard__content">
        <%
          int statusID = Integer.parseInt(request.getParameter("sID"));
        %>
        <div class="overview-header-container">
          <span>Services</span>
          <div>
            <a href="customer_view_jobs.jsp?ID=<%= vehicleID %>&sID=3">All Jobs</a>
            <a href="customer_view_jobs.jsp?ID=<%= vehicleID %>&sID=2">Completed Jobs</a>
            <a href="customer_view_jobs.jsp?ID=<%= vehicleID %>&sID=1">Incomplete Jobs</a>
          </div>
        </div>

        <input
          type="text"
          id="myInput"
          placeholder="Filter service by date"
          title="Type in a name"
        />

    <table id="myTable">
        <thead>
            <tr class="header">
              <th>Service ID</th>
              <th>Vehicle ID</th>
              <th>Vehicle Name</th>
              <th>Mechanic</th>
              <th>Service Date</th>
              <th>Status</th>
            </tr>
        </thead>
		<tbody>
        <%

        String dbURL = "jdbc:mysql://localhost:3306/autoserve";
        String username = "root";
        String password = "rootUsr";

        try {

        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbURL, username, password);

        ResultSet resultSet=null;
        Statement statement=null;

        statement = connection.createStatement();

        String queryString = "";

        if(statusID == 1) {
          queryString = "SELECT sh.service_id as service_id, v.vehicle_id as vehicle_id, v.vehicle_name as vehicle_name, m.fname as mFName, m.lname as mLName, sh.service_date as date, js.status as job_status FROM Service_History sh JOIN Vehicle v ON sh.vehicle_id = v.vehicle_id JOIN Mechanic m ON sh.mechanic_id = m.mechanic_id JOIN Job_Status js ON sh.status = js.status_id WHERE sh.status = 1 AND sh.vehicle_id = '" + vehicleID + "' ORDER BY date DESC";
        } else if (statusID == 2) {
          queryString = "SELECT sh.service_id as service_id, v.vehicle_id as vehicle_id, v.vehicle_name as vehicle_name, m.fname as mFName, m.lname as mLName, sh.service_date as date, js.status as job_status FROM Service_History sh JOIN Vehicle v ON sh.vehicle_id = v.vehicle_id JOIN Mechanic m ON sh.mechanic_id = m.mechanic_id JOIN Job_Status js ON sh.status = js.status_id WHERE sh.status = 2 AND sh.vehicle_id = '" + vehicleID + "' ORDER BY date DESC";
        } else {
          queryString = "SELECT sh.service_id as service_id, v.vehicle_id as vehicle_id, v.vehicle_name as vehicle_name, m.fname as mFName, m.lname as mLName, sh.service_date as date, js.status as job_status FROM Service_History sh JOIN Vehicle v ON sh.vehicle_id = v.vehicle_id JOIN Mechanic m ON sh.mechanic_id = m.mechanic_id JOIN Job_Status js ON sh.status = js.status_id WHERE sh.vehicle_id = '" + vehicleID + "' ORDER BY date DESC";
        }
        
        resultSet=statement.executeQuery(queryString);

        while(resultSet.next()) { %>
              <tr> 
        			<td> <a href='job.jsp?ID=<%=resultSet.getInt("service_id")%>'><%=resultSet.getInt("service_id")%></a>  </td>
        			<td> <%=resultSet.getInt("vehicle_id")%>  </td>
        			<td> <a href='job.jsp?ID=<%=resultSet.getInt("service_id")%>'><%=resultSet.getString("vehicle_name")%></a> </td>
        			<td> <%=resultSet.getString("mFName")%> <%=resultSet.getString("mLName")%> </td>
        			<td class="filter-by"> <%=resultSet.getString("date")%>  </td>
        			<td> <%=resultSet.getString("job_status")%>  </td>
        		</tr>

        <%
          }
        } catch(Exception ex) {
          out.println(ex);
        }
        %>
		</tbody>
    <script src="./scripts/table_filter.js"></script>
	
	</table>
	</body>
</html>
