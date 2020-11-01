// if (document.querySelector("#login-btn")) {
//   document.querySelector("#login-btn").addEventListener("click", () => {
//     if (
//       document.querySelector("#login-email") &&
//       document.querySelector("#login-role")
//     ) {
//       const emailElement = document.querySelector("#login-email");
//       const roleElement = document.querySelector("#login-role");
//       sessionStorage.setItem("username", emailElement.value);
//       sessionStorage.setItem("role", roleElement.value);
//     }
//   });
// }

// const headerCta = document.querySelector(".header__cta-container");

// if (sessionStorage.getItem("username") !== null) {
//   const role = sessionStorage.getItem("role");
//   const ctaLinks = [
//     {
//       name: "Dashboard",
//       class: "navlist-item",
//       link:
//         role === "client" ? "client_dashboard.html" : "staff_dashboard.html",
//     },
//     {
//       name: "Store",
//       class: "navlist-item",
//       link: "store.html",
//     },
//   ];
//   if (document.querySelectorAll(".header__cta-container a").length > 0) {
//     document.querySelectorAll(".header__cta-container a").forEach((item) => {
//       item.remove();
//     });
//   }

//   ctaLinks.forEach((link) => {
//     const linkItem = document.createElement("a");
//     linkItem.innerHTML = link.name;
//     linkItem.setAttribute("href", link.link);

//     headerCta.appendChild(linkItem);
//   });
// } else {
//   console.log(headerCta);
//   const ctaLinks = [
//     {
//       name: "Login",
//       class: "navlist-item",
//       link: "login.html",
//     },
//     {
//       name: "Store",
//       class: "navlist-item",
//       link: "store.html",
//     },
//   ];

//   if (document.querySelectorAll(".header__cta-container a").length > 0) {
//     document.querySelectorAll(".header__cta-container a").forEach((item) => {
//       item.remove();
//     });
//   }

//   ctaLinks.forEach((link) => {
//     const linkItem = document.createElement("a");
//     linkItem.innerHTML = link.name;
//     linkItem.setAttribute("href", link.link);

//     headerCta.appendChild(linkItem);
//   });
// }
