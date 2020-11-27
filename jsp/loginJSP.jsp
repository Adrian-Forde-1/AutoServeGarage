<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../styles/login.css" />
    <link rel="stylesheet" href="../styles/global.css" />
    <link rel="stylesheet" href="../styles/navbar.css" />
    <link rel="stylesheet" href="../styles/notification.css">
    <link rel="stylesheet" href="../styles/util.css">
    <title>Login</title>
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
            int roleID = resultSet.getInt("role");
            ResultSet roleSet = roleStatement.executeQuery("SELECT role FROM Role WHERE role_id = '"+ roleID +"'");

            if(roleSet.next()) {
              session.setAttribute("fname", resultSet.getString("fname"));
              session.setAttribute("lname", resultSet.getString("lname"));
              session.setAttribute("role", roleSet.getString("role"));
              session.setAttribute("userID", resultSet.getString("user_id"));
              response.sendRedirect("../index.jsp");
            } 
          } else {%> 
            <div class="login__wrapper">
              <nav class="navbar">
                <a href="index.jsp">
                  <svg
                    class="nav-logo"
                    xmlns="http://www.w3.org/2000/svg"
                    aria-hidden="true"
                    focusable="false"
                    width="1em"
                    height="1em"
                    preserveAspectRatio="xMidYMid meet"
                    viewBox="0 0 50 50"
                  >
                    <path
                      d="M21.434 7.689L19 11h-5.684c.701 2 2.996 3.886 6.201 3.26c.95-.064 4.155-.573 5.483-.26c1.768.424 1.031.426 4.201 2.97L45 30c.968.855 2.206.505 3.063-.461c.857-.968.905-2.684-.063-3.539L28 10c-1.252-1.005-1.568-2.397-2-4c-.84-2.755-3.929-4.965-6.961-4.965C16.596 1.035 13.967 3.148 13 5h6l2.434 2.689zM35.154 32l-6.182-10.73c-.244-.445-.861-1.27-1.368-1.27H10.396c-.507 0-1.124.825-1.369 1.27L3 32h-.154C1.831 32 1 32.369 1 33.385v9.23C1 43.631 1.831 44 2.846 44H5v3.23C5 48.754 5.938 50 7.461 50h.923C9.908 50 11 48.754 11 47.23V44h16v3.23c0 1.523 1.092 2.77 2.615 2.77h.923C32.062 50 33 48.754 33 47.23V44h2.154C36.169 44 37 43.631 37 42.615v-9.23C37 32.369 36.169 32 35.154 32zM6.077 38.923a2.308 2.308 0 1 1 0-4.615a2.308 2.308 0 0 1 0 4.615zM7.923 32l3.741-7.828C11.891 23.718 12.493 23 13 23h12c.507 0 1.108.718 1.336 1.172L30.077 32H7.923zm24 6.923a2.308 2.308 0 1 1 0-4.616a2.308 2.308 0 0 1 0 4.616z"
                      fill="currentColor"
                    />
                  </svg>
                </a>
                <ul class="nav-list">
                  <li class="navlist-item">
                    <a href="index.jsp" style='font-size: 10px; font-family: "Montserrat", sans-serif !important;'>Home</a>
                  </li>
                  <li class="navlist-item">
                    <a href="login.jsp" style='font-size: 10px; font-family: "Montserrat", sans-serif !important;'>Login</a>
                  </li>
                  <li class="navlist-item">
                    <a href="about_us.jsp" style='font-size: 10px; font-family: "Montserrat", sans-serif !important;'>About Us</a>
                  </li>
                  <li class="navlist-item">
                    <a href="store.jsp" style='font-size: 10px; font-family: "Montserrat", sans-serif !important;'>Store</a>
                  </li>
                </ul>
              </nav>
              <div class="flow-container center">
                <div class="notification__wrapper">
                    <div class="notification__info">
                        <span>Incorrect Credentials. Try Again.</span>
                    </div>
                    <a href="../login.jsp" class="notification__button">
                        Go Back
                    </a>
                </div>
               </div>
              </div>
            </div><% 
          }
        }

        catch(Exception ex) {
          out.println(ex);
        }
    %>
</body>
</html>