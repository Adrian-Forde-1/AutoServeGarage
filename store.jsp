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
    <link rel="stylesheet" href="./styles/styles.css" />
    <title>Store</title>
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
                <a href="staff_dashboard.html">Staff Dashboard</a>
              </li>
        <% } else if(usrRole.equals("Customer")) { %>
              <li class="navlist-item">
                <a href="client_dashboard.html">Customer Dashboard</a>
              </li>
        <% } %>
          <li class="navlist-item">
            <a href="about_us.jsp">About Us</a>
          </li>
          <li class="navlist-item">
            <a href="store.jsp">Store</a>
          </li>
          <li class="navlist-item">
            <button>Logout</button>
          </li>
        <% } else { %>
          <li class="navlist-item">
            <a href="index.jsp">Home</a>
          </li>
          <li class="navlist-item">
            <a href="login.html">Login</a>
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
    <div class="container top-spacing">
      <h1 class="store-header">Store</h1>
      <div class="gallery">
        <div class="gallery__img">
          <img src="./assets/airfreshener.jpg" />
          <div class="desc">Air Fresheners For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/cover.jpg" />
          <div class="desc">Waterproof Car Cover For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/gauge.jpg" />
          <div class="desc">Tire Pressure Gauge For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/gps.jpg" />
          <div class="desc">Car GPS For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/mat.jpg" />
          <div class="desc">Car Floor Mat For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/phonestand.jpg" />
          <div class="desc">Car Phone Stand For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/puncture.jpg" />
          <div class="desc">Puncture Repair Kit For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/tirecleaners.png" />
          <div class="desc">Tire Cleaners For Sale</div>
        </div>

        <div class="gallery__img">
          <img src="./assets/vacuumcleaner.jpg" />
          <div class="desc">Car Vacuum Cleaner For Sale</div>
        </div>
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
