<%@ page import="java.sql.*"%>
<%
  String userRole = (String)session.getAttribute("role");

  if(userRole == null) {
    response.sendRedirect("./login.jsp");
  } else if(!userRole.equals("Staff")) {
    response.sendRedirect("./not_found.html");
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mechanic</title>

    <link rel="stylesheet" href="./styles/filter_styles.css" />
    <link rel="stylesheet" href="./styles/styles.css" />
    <link rel="stylesheet" href="./styles/profile.css">

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
        <a href="staff_dashboard.jsp">
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
        <a href="register_customer.html">
          <svg
            width="1em"
            height="1em"
            viewBox="0 0 16 16"
            class="bi bi-person-fill"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"
            />
          </svg>
        </a>
      </div>
      <div>
        <a href="create_job.html">
          <svg
            width="1em"
            height="1em"
            viewBox="0 0 16 16"
            class="bi bi-pen-fill"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M13.498.795l.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"
            />
          </svg>
        </a>
      </div>
      <div>
        <a href="">
          <svg
            width="1em"
            height="1em"
            viewBox="0 0 16 16"
            class="bi bi-journals"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M3 2h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2z"
            />
            <path
              d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2v-1a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2zM1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"
            />
          </svg>
        </a>
      </div>
      <div>
        <a href="clientfilter.html">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            aria-hidden="true"
            focusable="false"
            width="1em"
            height="1em"
            preserveAspectRatio="xMidYMid meet"
            viewBox="0 0 1200 1200"
          >
            <path
              d="M910.143 91.119l-16.916 81.053a196.327 196.327 0 0 0-49.691 14.743l-58.229-58.825l-66.309 53.661l45.354 69.303c-10.104 13.862-18.357 29.104-24.623 45.503l-82.85-.374l-8.906 84.87l81.055 16.914c2.723 17.329 7.746 33.897 14.742 49.545l-58.824 58.376l53.66 66.31l69.303-45.43a195.996 195.996 0 0 0 45.504 24.698l-.375 82.774l84.871 8.904l16.838-81.053c17.346-2.722 34.035-7.666 49.695-14.669l58.301 58.825l66.309-53.735l-45.428-69.229a195.81 195.81 0 0 0 24.697-45.503l82.773.3l8.906-84.87l-81.053-16.765c-2.725-17.354-7.66-34.103-14.67-49.77l58.824-58.227l-53.734-66.309l-69.229 45.354c-13.869-10.111-29.17-18.428-45.578-24.697l.373-82.774l-84.79-8.903zm14.068 197.131c2.668.009 5.373.09 8.084.374c43.355 4.555 74.756 43.384 70.201 86.741c-4.555 43.355-43.385 74.83-86.742 70.274c-43.355-4.555-74.83-43.384-70.275-86.739c4.269-40.647 38.724-70.789 78.732-70.65zm-608.981 6.96l-11.375 112.711c-23.205 6.187-45.185 15.324-65.486 27.092l-87.714-71.696l-82.55 82.55l71.698 87.788c-11.768 20.308-20.91 42.272-27.092 65.484L0 610.44v116.751l112.71 11.376a268.028 268.028 0 0 0 27.092 65.41l-71.698 87.789l82.55 82.55l87.789-71.697a268.061 268.061 0 0 0 65.411 27.093l11.375 112.71h116.752l11.301-112.71c23.212-6.183 45.178-15.325 65.484-27.093l87.788 71.697l82.55-82.55l-71.697-87.714c11.768-20.302 20.906-42.281 27.092-65.485l112.711-11.376V610.44L634.5 599.138c-6.186-23.225-15.314-45.243-27.092-65.561l71.697-87.714l-82.55-82.549l-87.713 71.696c-20.316-11.775-42.336-20.905-65.562-27.093l-11.301-112.71H315.23v.003zm58.376 265.61c59.649 0 107.996 48.348 107.996 107.996c0 59.647-48.347 107.994-107.996 107.994c-59.648 0-107.996-48.347-107.996-107.994c0-59.648 48.348-107.996 107.996-107.996zm495.673 144.219l-11.9 59.273c-12.188 1.993-23.873 5.653-34.877 10.776l-41.012-43.033l-46.553 39.292l31.883 50.667c-7.102 10.143-12.959 21.308-17.363 33.306l-58.15-.301l-6.287 62.118l56.955 12.35a147.66 147.66 0 0 0 10.328 36.298l-41.312 42.659l37.721 48.497l48.721-33.229a135.985 135.985 0 0 0 31.957 18.037l-.225 60.621l59.648 6.511l11.824-59.349c12.189-1.991 23.869-5.579 34.875-10.702l41.014 43.033l46.625-39.291l-31.957-50.668c7.104-10.139 12.959-21.312 17.363-33.306l58.229.226l6.211-62.043l-56.953-12.35c-1.914-12.695-5.402-24.911-10.328-36.372l41.311-42.585l-37.719-48.572l-48.646 33.229c-9.746-7.396-20.498-13.449-32.031-18.036l.299-60.546l-59.651-6.51zm9.879 144.144c1.873.009 3.783.092 5.688.301c30.473 3.331 52.521 31.745 49.32 63.465c-3.201 31.719-30.449 54.748-60.922 51.416s-52.596-31.746-49.395-63.466c3.001-29.738 27.19-51.818 55.309-51.716z"
              fill="currentColor"
            />
          </svg>
        </a>
      </div>
      <div id="settings">
        <a href="">
          <svg
            width="1em"
            height="1em"
            viewBox="0 0 16 16"
            class="bi bi-gear-fill"
            fill="currentColor"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 0 0-5.86 2.929 2.929 0 0 0 0 5.858z"
            />
          </svg>
        </a>
      </div>
    </nav>
    <div class="dashboard__content">
      <div class="profile__wrapper">
        <%
        String dbURL = "jdbc:mysql://localhost:3306/autoserve";
        String username = "root";
        String password = "rootUsr";
        
        try {
                
            Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, username, password);
            int mechanicID = Integer.parseInt(request.getParameter("ID"));
            
            String queryString = "SELECT m.mechanic_id as mechanic_id, m.fname as fname, m.lname as lname, g.name as garage, m.address as address, m.sex as sex, m.contact as contact, m.dob as dob FROM Mechanic m JOIN Garage g ON m.garage_id = g.garage_id WHERE mechanic_id = '" + mechanicID + "'";
    
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(queryString);
            
           if(resultSet.next()) { 
            String mechanicSpecializationQueryString = "SELECT specialization_id FROM Mechanic_Specialization WHERE mechanic_id = '" + resultSet.getInt("mechanic_id") + "'";
            Statement mechanicSpecializationStatement = connection.createStatement();
            ResultSet mechanicSpecializationResultSet = mechanicSpecializationStatement.executeQuery(mechanicSpecializationQueryString);

            if(mechanicSpecializationResultSet.next()) {
              String specializationQueryString = "SELECT specialization FROM Specialization WHERE specialization_id = '" + mechanicSpecializationResultSet.getInt("specialization_id") + "'";
              Statement specializationStatement = connection.createStatement();
              ResultSet specializationResultSet = specializationStatement.executeQuery(specializationQueryString);
              
              if(specializationResultSet.next()) {%>
                <span class="profile__name"><%= resultSet.getString("fname") %> <%= resultSet.getString("lname") %> - Mechanic</span>
                <div class="profile__data-field">
                  <span>ID: </span> <span><%= resultSet.getInt("mechanic_id") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Address: </span> <span><%= resultSet.getString("address") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Contact: </span> <span><%= resultSet.getString("contact") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Date of birth: </span> <span><%= resultSet.getString("dob") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Sex: </span> <span><%= resultSet.getString("sex") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Specialization: </span> <span><%= specializationResultSet.getString("specialization") %></span>
                </div>
                <div class="profile__data-field">
                  <span>Garage: </span> <span><%= resultSet.getString("garage") %></span>
                </div>
                <div class="profile__data-field">
                  <a href='./edit_mechanic.jsp?ID=<%= resultSet.getInt("mechanic_id")%>' class="profile__link">Edit Mechanic</a>
                </div>
            <%  
            }
          }
        }
    
          } catch(Exception ex) {
            out.println(ex);
          }
    
      %>
      </div>
     
    </div>
  </div>
  
</body>
</html>