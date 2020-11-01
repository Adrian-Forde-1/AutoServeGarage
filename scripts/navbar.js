window.onload = () => {
  if (document.querySelector(".nav-list")) {
    const navlist = document.querySelector(".nav-list");

    if (sessionStorage.getItem("username") !== null) {
      const role = sessionStorage.getItem("role");
      const navLinks = [
        {
          name: "Home",
          class: "navlist-item",
          link: "index.html",
        },
        {
          name: "Dashboard",
          class: "navlist-item",
          link:
            role === "client"
              ? "client_dashboard.html"
              : "staff_dashboard.html",
        },
        {
          name: "About Us",
          class: "navlist-item",
          link: "about_us.html",
        },
        {
          name: "Store",
          class: "navlist-item",
          link: "store.html",
        },
        {
          name: "Logout",
          class: "navlist-item",
          id: "logout-btn",
          type: "button",
        },
      ];

      if (document.querySelectorAll(".navlist-item").length > 0) {
        document.querySelectorAll(".navlist-item").forEach((item) => {
          item.remove();
        });
      }

      navLinks.forEach((link) => {
        const listItem = document.createElement("li");
        listItem.classList.add(link.class);
        if (link["type"] && link.type === "button") {
          listItem.setAttribute("id", link.id);

          listItem.innerHTML = `<button>${link.name}</button>`;
          listItem.addEventListener("click", logout);
        } else {
          listItem.innerHTML = `<a href="${link.link}">${link.name}</a>`;
        }
        navlist.appendChild(listItem);
      });
    } else {
      const navLinks = [
        {
          name: "Home",
          class: "navlist-item",
          link: "index.html",
        },
        {
          name: "Login",
          class: "navlist-item",
          link: "login.html",
        },
        {
          name: "About Us",
          class: "navlist-item",
          link: "about_us.html",
        },
        {
          name: "Store",
          class: "navlist-item",
          link: "store.html",
        },
      ];

      if (document.querySelectorAll(".navlist-item").length > 0) {
        document.querySelectorAll(".navlist-item").forEach((item) => {
          item.remove();
        });
      }

      navLinks.forEach((link) => {
        const listItem = document.createElement("li");
        listItem.classList.add(link.class);
        listItem.innerHTML = `<a href="${link.link}">${link.name}</a>`;
        navlist.appendChild(listItem);
      });
    }
  }
};

const logout = () => {
  sessionStorage.removeItem("username");
  sessionStorage.removeItem("role");
  window.location.reload(false);
};
