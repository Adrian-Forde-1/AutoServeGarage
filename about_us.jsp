<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>About Us</title>
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

    <link rel="stylesheet" href="./styles/styles.css" />
  </head>
  <body>
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
        <% if((String)session.getAttribute("role") != null) { %>
            <li class="navlist-item">
              <a href="index.jsp">Home</a>
            </li>
        <%
        String usrRole = (String)session.getAttribute("role");
        if(usrRole.equals("Staff")) { %>
              <li class="navlist-item">
                <a href="staff_dashboard.jsp">Dashboard</a>
              </li>
        <% } else if(usrRole.equals("Customer")) { %>
              <li class="navlist-item">
                <a href="customer_dashboard.jsp">Dashboard</a>
              </li>
        <% } %>
          <li class="navlist-item">
            <a href="about_us.jsp">About Us</a>
          </li>
          <li class="navlist-item">
            <a href="store.jsp">Store</a>
          </li>
          <li class="navlist-item">
            <form action="./jsp/logout.jsp" method="POST">
              <button>Logout</button>
            </form>
          </li>
        <% } else { %>
          <li class="navlist-item">
            <a href="index.jsp">Home</a>
          </li>
          <li class="navlist-item">
            <a href="login.jsp">Login</a>
          </li>
          <li class="navlist-item">
            <a href="about_us.jsp">About Us</a>
          </li>
          <li class="navlist-item">
            <a href="store.jsp">Store</a>
          </li>
        <% } %>
      </ul>
    </nav>
    <div class="about-us__wrapper">
      <div class="container">
        <h1 class="about-us__header">About Us</h1>

        <h3 class="about-us__sub-header">Our Background</h3>
        <div class="img-text">
          <div class="img-text__img-container">
            <img src="assets/mechanic.jpg" />
          </div>
          <div class="img-text__text-container" style="color: #fff;">
            <p>
              We are <b>AutoServe Inc.</b> We've been in existence for roughly
              10 years. It was all started by Winston Fields at his home in
              Arima. His talent as an auto mechanic and his reputation for
              quality work at a fair price, and excellent customer service, saw
              his small garage grow to be a major player in the auto-maintenance
              industry in Trinidad and Tobago. Winston attributes his success to
              ensuring his mechanics are well trained and most importantly, not
              being afraid to innovate in an effort to improve productivity and
              hence customer satisfaction.
            </p>
          </div>
        </div>

        <h3 class="about-us__sub-header bot-spacing-sm">Sales and Services</h3>
        <p class="about-us__services__desc bot-spacing-sm" style="color: #fff;">
          We offer a wide range of services
        </p>
        <div class="about-us__services">
          <div class="about-us__services__card">
            <span>Oil Changes</span>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              aria-hidden="true"
              focusable="false"
              width="1.25em"
              height="1em"
              preserveAspectRatio="xMidYMid meet"
              viewBox="0 0 640 512"
            >
              <path
                d="M629.8 160.31L416 224l-50.49-25.24a64.07 64.07 0 0 0-28.62-6.76H280v-48h56c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16c0 8.84 7.16 16 16 16h56v48h-56L37.72 166.86a31.9 31.9 0 0 0-5.79-.53C14.67 166.33 0 180.36 0 198.34v94.95c0 15.46 11.06 28.72 26.28 31.48L96 337.46V384c0 17.67 14.33 32 32 32h274.63c8.55 0 16.75-3.42 22.76-9.51l212.26-214.75c1.5-1.5 2.34-3.54 2.34-5.66V168c.01-5.31-5.08-9.15-10.19-7.69zM96 288.67l-48-8.73v-62.43l48 8.73v62.43zm453.33 84.66c0 23.56 19.1 42.67 42.67 42.67s42.67-19.1 42.67-42.67S592 288 592 288s-42.67 61.77-42.67 85.33z"
                fill="currentColor"
              />
            </svg>
          </div>

          <div class="about-us__services__card">
            <span>Suspension Checking</span>
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
                d="M18.92 2.01C18.72 1.42 18.16 1 17.5 1h-11c-.66 0-1.21.42-1.42 1.01L3 8v8c0 .55.45 1 1 1h1c.55 0 1-.45 1-1v-1h12v1c0 .55.45 1 1 1h1c.55 0 1-.45 1-1V8l-2.08-5.99zM6.5 12c-.83 0-1.5-.67-1.5-1.5S5.67 9 6.5 9S8 9.67 8 10.5S7.33 12 6.5 12zm11 0c-.83 0-1.5-.67-1.5-1.5S16.67 9 17.5 9s1.5.67 1.5 1.5s-.67 1.5-1.5 1.5zM5 7l1.5-4.5h11L19 7H5zm2 13h4v-2l6 3h-4v2z"
                fill="currentColor"
              />
            </svg>
          </div>

          <div class="about-us__services__card">
            <span>Alignment</span>
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

          <div class="about-us__services__card">
            <span>And much more</span>
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
        </div>

        <p class="about-us__ending-text" style="color: #fff;">
          We also sell basic auto accessories which are avaiable for purchase at
          our garage.
        </p>
      </div>
    </div>
    <div class="footer">
      <div class="left-section">
        <h5>Golden Quality</h5>
        <p>
          We are the golden company in the local industry. We repair, service
          and provide the best quality, rivaling even the best international
          companies
        </p>
      </div>
      <div class="right-section">
        <h5>Contact Us</h5>
        <div>
          <p>
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 16 16"
              class="bi bi-envelope-fill"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"
              />
            </svg>
            <span>Autoserve@gmail.com</span>
          </p>
          <p>
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 16 16"
              class="bi bi-telephone-fill"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M2.267.98a1.636 1.636 0 0 1 2.448.152l1.681 2.162c.309.396.418.913.296 1.4l-.513 2.053a.636.636 0 0 0 .167.604L8.65 9.654a.636.636 0 0 0 .604.167l2.052-.513a1.636 1.636 0 0 1 1.401.296l2.162 1.681c.777.604.849 1.753.153 2.448l-.97.97c-.693.693-1.73.998-2.697.658a17.47 17.47 0 0 1-6.571-4.144A17.47 17.47 0 0 1 .639 4.646c-.34-.967-.035-2.004.658-2.698l.97-.969z"
              />
            </svg>
            <span>444-4444</span>
          </p>
          <p>
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 16 16"
              class="bi bi-geo-alt-fill"
              fill="currentColor"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"
              />
            </svg>
            <span>26# Second Lane, Diego Martin</span>
          </p>
        </div>
      </div>
    </div>
  </body>
</html>
