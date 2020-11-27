<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="../styles/notification.css">
    <link rel="stylesheet" href="../styles/util.css">
    <link rel="stylesheet" href="../styles/global.css">
    <link rel="stylesheet" href="../styles/dashboard.css">
    <title>Document</title>
  </head>
  <body>
    <%
        String serviceName = request.getParameter("service-name");
        String serviceCost = request.getParameter("service-cost");
        String sID = request.getParameter("service-id");
        int serviceID = Integer.parseInt(sID);
        
        String username = "root";
        String password = "rootUsr";

        try {
          Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/autoserve", username, password);;
          Class.forName("com.mysql.jdbc.Driver");

          PreparedStatement pstatement = null;
          int updateQuery = 0;

          String queryString = "UPDATE Services_Offered SET service=?, cost=? WHERE offered_service_id = '" + serviceID + "'";

          pstatement = connection.prepareStatement(queryString);
          pstatement.setString(1, serviceName);
          pstatement.setString(2, serviceCost);

          updateQuery = pstatement.executeUpdate();

          if(updateQuery != 0) { %>
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
                      <a href="register_customer.jsp">
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
                      <a href="view_customers.jsp">
                        <svg 
                          xmlns="http://www.w3.org/2000/svg"
                          width="1em" 
                          height="1em" 
                          preserveAspectRatio="xMidYMid meet" 
                          viewBox="0 0 24 24">
                          <path d="M24 14.6c0 .6-1.2 1-2.6 1.2c-.9-1.7-2.7-3-4.8-3.9c.2-.3.4-.5.6-.8h.8c3.1-.1 6 1.8 6 3.5zM6.8 11H6c-3.1 0-6 1.9-6 3.6c0 .6 1.2 1 2.6 1.2c.9-1.7 2.7-3 4.8-3.9l-.6-.9zm5.2 1c2.2 0 4-1.8 4-4s-1.8-4-4-4s-4 1.8-4 4s1.8 4 4 4zm0 1c-4.1 0-8 2.6-8 5c0 2 8 2 8 2s8 0 8-2c0-2.4-3.9-5-8-5zm5.7-3h.3c1.7 0 3-1.3 3-3s-1.3-3-3-3c-.5 0-.9.1-1.3.3c.8 1 1.3 2.3 1.3 3.7c0 .7-.1 1.4-.3 2zM6 10h.3C6.1 9.4 6 8.7 6 8c0-1.4.5-2.7 1.3-3.7C6.9 4.1 6.5 4 6 4C4.3 4 3 5.3 3 7s1.3 3 3 3z" fill="currentColor"/>
                        </svg>
                      </a>
                    </div>
                    <div>
                      <a href="register_mechanic.jsp">
                        <svg
                          width="1em"
                          height="1em"
                          viewBox="0 0 16 16"
                          class="bi bi-wrench"
                          fill="currentColor"
                          xmlns="http://www.w3.org/2000/svg"
                        >
                          <path
                            fill-rule="evenodd"
                            d="M.102 2.223A3.004 3.004 0 0 0 3.78 5.897l6.341 6.252A3.003 3.003 0 0 0 13 16a3 3 0 1 0-.851-5.878L5.897 3.781A3.004 3.004 0 0 0 2.223.1l2.141 2.142L4 4l-1.757.364L.102 2.223zm13.37 9.019L13 11l-.471.242-.529.026-.287.445-.445.287-.026.529L11 13l.242.471.026.529.445.287.287.445.529.026L13 15l.471-.242.529-.026.287-.445.445-.287.026-.529L15 13l-.242-.471-.026-.529-.445-.287-.287-.445-.529-.026z"
                          />
                        </svg>
                      </a>
                    </div>
                    <div>
                      <a href="view_mechanics.jsp">
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          aria-hidden="true"
                          focusable="false"
                          width="1em"
                          height="1em"
                          preserveAspectRatio="xMidYMid meet"
                          viewBox="0 0 16 16"
                        >
                          <g fill="currentColor">
                            <path
                              fill-rule="evenodd"
                              d="M0 1l1-1l3.081 2.2a1 1 0 0 1 .419.815v.07a1 1 0 0 0 .293.708L10.5 9.5l.914-.305a1 1 0 0 1 1.023.242l3.356 3.356a1 1 0 0 1 0 1.414l-1.586 1.586a1 1 0 0 1-1.414 0l-3.356-3.356a1 1 0 0 1-.242-1.023L9.5 10.5L3.793 4.793a1 1 0 0 0-.707-.293h-.071a1 1 0 0 1-.814-.419L0 1zm11.354 9.646a.5.5 0 0 0-.708.708l3 3a.5.5 0 0 0 .708-.708l-3-3z"
                            />
                            <path
                              fill-rule="evenodd"
                              d="M15.898 2.223a3.003 3.003 0 0 1-3.679 3.674L5.878 12.15a3 3 0 1 1-2.027-2.027l6.252-6.341A3 3 0 0 1 13.778.1l-2.142 2.142L12 4l1.757.364l2.141-2.141zm-13.37 9.019L3.001 11l.471.242l.529.026l.287.445l.445.287l.026.529L5 13l-.242.471l-.026.529l-.445.287l-.287.445l-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471l.026-.529l.445-.287l.287-.445l.529-.026z"
                            />
                          </g>
                        </svg>
                      </a>
                    </div>
                    <div>
                      <a href="create_job.jsp">
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
                      <a href="view_jobs.jsp?sID=3">
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
                      <a href="view_services.jsp">
                        <svg xmlns="http://www.w3.org/2000/svg" 
                            aria-hidden="true" 
                            focusable="false" 
                            width="1em" 
                            height="1em" 
                            preserveAspectRatio="xMidYMid meet" 
                            viewBox="0 0 36 36">
                              <path class="clr-i-solid clr-i-solid-path-1" d="M31 10H13a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V11a1 1 0 0 0-1-1zm-3 16H16v-2h12zm0-4H16v-2h12zm0-4H16v-2h12z" fill="currentColor"/><path class="clr-i-solid clr-i-solid-path-2" d="M6 24V4h18V3a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h1z" fill="currentColor"/><path class="clr-i-solid clr-i-solid-path-3" d="M10 28V8h18V7a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h1z" fill="currentColor"/>
                        </svg>
                      </a>
                    </div>
                    <div>
                      <a href="view_stock.jsp">
                        <svg xmlns="http://www.w3.org/2000/svg" 
                          aria-hidden="true" 
                          focusable="false" 
                          width="1.25em" 
                          height="1em" 
                          preserveAspectRatio="xMidYMid meet" 
                          viewBox="0 0 640 512">
                            <path d="M425.7 256c-16.9 0-32.8-9-41.4-23.4L320 126l-64.2 106.6c-8.7 14.5-24.6 23.5-41.5 23.5c-4.5 0-9-.6-13.3-1.9L64 215v178c0 14.7 10 27.5 24.2 31l216.2 54.1c10.2 2.5 20.9 2.5 31 0L551.8 424c14.2-3.6 24.2-16.4 24.2-31V215l-137 39.1c-4.3 1.3-8.8 1.9-13.3 1.9zm212.6-112.2L586.8 41c-3.1-6.2-9.8-9.8-16.7-8.9L320 64l91.7 152.1c3.8 6.3 11.4 9.3 18.5 7.3l197.9-56.5c9.9-2.9 14.7-13.9 10.2-23.1zM53.2 41L1.7 143.8c-4.6 9.2.3 20.2 10.1 23l197.9 56.5c7.1 2 14.7-1 18.5-7.3L320 64L69.8 32.1c-6.9-.8-13.5 2.7-16.6 8.9z" fill="currentColor"/>
                        </svg>
                      </a>
                    </div>
                  </nav>
                    <div class="dashboard__content">
                       <div class="flow-container center">
                        <div class="notification__wrapper">
                            <div class="notification__info">
                                <span>Successfully Updated Service</span>
                            </div>
                            <a href="../view_services.jsp" class="notification__button">
                                Go Back
                            </a>
                        </div>
                       </div>
                    </div>
                  </div>
                <%
              } 
        } catch(Exception ex) {
          out.println(ex);
        }
    %>
  </body>
</html>
