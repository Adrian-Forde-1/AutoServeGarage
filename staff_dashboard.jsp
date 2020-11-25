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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <!-- <link rel="stylesheet" href="./styles/styles.css" /> -->
    <link rel="stylesheet" href="./styles/dashboard.css" />
    <link rel="stylesheet" href="./styles/global.css" />
    <title>Dashboard</title>
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
        <!-- <div>
          <a href="register_vehicle.html">
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
        </div> -->
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
      </nav>
      <div class="dashboard__content">
        <div class="dashboard__card-container">
          <div class="dashboard__card">
            <a href="register_customer.jsp">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">Register Customer</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="view_customers.jsp">
              <div class="dashboard__card-icon">
                <svg xmlns="http://www.w3.org/2000/svg"
                aria-hidden="true" 
                focusable="false" 
                width="1em" 
                height="1em" 
                preserveAspectRatio="xMidYMid meet" 
                viewBox="0 0 24 24">
                <path d="M24 14.6c0 .6-1.2 1-2.6 1.2c-.9-1.7-2.7-3-4.8-3.9c.2-.3.4-.5.6-.8h.8c3.1-.1 6 1.8 6 3.5zM6.8 11H6c-3.1 0-6 1.9-6 3.6c0 .6 1.2 1 2.6 1.2c.9-1.7 2.7-3 4.8-3.9l-.6-.9zm5.2 1c2.2 0 4-1.8 4-4s-1.8-4-4-4s-4 1.8-4 4s1.8 4 4 4zm0 1c-4.1 0-8 2.6-8 5c0 2 8 2 8 2s8 0 8-2c0-2.4-3.9-5-8-5zm5.7-3h.3c1.7 0 3-1.3 3-3s-1.3-3-3-3c-.5 0-.9.1-1.3.3c.8 1 1.3 2.3 1.3 3.7c0 .7-.1 1.4-.3 2zM6 10h.3C6.1 9.4 6 8.7 6 8c0-1.4.5-2.7 1.3-3.7C6.9 4.1 6.5 4 6 4C4.3 4 3 5.3 3 7s1.3 3 3 3z" fill="currentColor"/></svg>
              </div>
              <span class="dashboard__card-name">All Customers</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="register_mechanic.jsp">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">Register Mechanic</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="view_mechanics.jsp">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">View Mechanics</span>
            </a>
          </div>
          <!-- <div class="dashboard__card">
            <a href="register_vehicle.html">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">Register Vehicle</span>
            </a>
          </div> -->
          <div class="dashboard__card">
            <a href="create_job.html">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">Create Job</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">View Jobs</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="view_services.jsp">
              <div class="dashboard__card-icon">
                <svg xmlns="http://www.w3.org/2000/svg" 
                aria-hidden="true" 
                focusable="false" 
                width="1em" 
                height="1em" 
                preserveAspectRatio="xMidYMid meet" 
                viewBox="0 0 36 36">
                  <path class="clr-i-solid clr-i-solid-path-1" d="M31 10H13a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V11a1 1 0 0 0-1-1zm-3 16H16v-2h12zm0-4H16v-2h12zm0-4H16v-2h12z" fill="currentColor"/><path class="clr-i-solid clr-i-solid-path-2" d="M6 24V4h18V3a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h1z" fill="currentColor"/><path class="clr-i-solid clr-i-solid-path-3" d="M10 28V8h18V7a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v22a1 1 0 0 0 1 1h1z" fill="currentColor"/>
                </svg>
              </div>
              <span class="dashboard__card-name">Services Overview</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="add_specialization.jsp">
              <div class="dashboard__card-icon">
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
                    d="M13 8.58c.78 0 1.44.61 1.44 1.42s-.66 1.44-1.44 1.44s-1.42-.66-1.42-1.44s.61-1.42 1.42-1.42M13 3c3.88 0 7 3.14 7 7c0 2.8-1.63 5.19-4 6.31V21H9v-3H8c-1.11 0-2-.89-2-2v-3H4.5c-.42 0-.66-.5-.42-.81L6 9.66A7.003 7.003 0 0 1 13 3m3 7c0-.16 0-.25-.06-.39l.89-.66c.05-.04.09-.18.05-.28l-.8-1.36c-.05-.09-.19-.14-.28-.09l-.99.42c-.18-.19-.42-.33-.65-.42L14 6.19c-.03-.14-.08-.19-.22-.19h-1.59c-.1 0-.19.05-.19.19l-.14 1.03c-.23.09-.47.23-.66.42l-1.03-.42c-.09-.05-.17 0-.23.09l-.8 1.36c-.05.14-.05.24.05.28l.84.66c0 .14-.03.28-.03.39c0 .13.03.27.03.41l-.84.65c-.1.05-.1.14-.05.24l.8 1.4c.06.1.14.1.23.1l.99-.43c.23.19.42.29.7.38l.14 1.08c0 .09.09.17.19.17h1.59c.14 0 .19-.08.22-.17l.16-1.08c.23-.09.47-.19.65-.37l.99.42c.09 0 .23 0 .28-.1l.8-1.4c.04-.1 0-.19-.05-.24l-.83-.65V10z"
                    fill="currentColor"
                  />
                </svg>
              </div>
              <span class="dashboard__card-name">Add Specialization</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="view_specializations.jsp">
              <div class="dashboard__card-icon">
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
              </div>
              <span class="dashboard__card-name">View Specializations</span>
            </a>
          </div>
          <div class="dashboard__card">
            <a href="view_stock.jsp">
              <div class="dashboard__card-icon">
                <svg xmlns="http://www.w3.org/2000/svg" 
                  aria-hidden="true" 
                  focusable="false" 
                  width="1.25em" 
                  height="1em" 
                  preserveAspectRatio="xMidYMid meet" 
                  viewBox="0 0 640 512">
                    <path d="M425.7 256c-16.9 0-32.8-9-41.4-23.4L320 126l-64.2 106.6c-8.7 14.5-24.6 23.5-41.5 23.5c-4.5 0-9-.6-13.3-1.9L64 215v178c0 14.7 10 27.5 24.2 31l216.2 54.1c10.2 2.5 20.9 2.5 31 0L551.8 424c14.2-3.6 24.2-16.4 24.2-31V215l-137 39.1c-4.3 1.3-8.8 1.9-13.3 1.9zm212.6-112.2L586.8 41c-3.1-6.2-9.8-9.8-16.7-8.9L320 64l91.7 152.1c3.8 6.3 11.4 9.3 18.5 7.3l197.9-56.5c9.9-2.9 14.7-13.9 10.2-23.1zM53.2 41L1.7 143.8c-4.6 9.2.3 20.2 10.1 23l197.9 56.5c7.1 2 14.7-1 18.5-7.3L320 64L69.8 32.1c-6.9-.8-13.5 2.7-16.6 8.9z" fill="currentColor"/>
                </svg>
              </div>
              <span class="dashboard__card-name">Manage Stock</span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
