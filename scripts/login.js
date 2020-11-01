if (document.querySelector("#login-form")) {
  const form = document.querySelector("#login-form");

  form.addEventListener("submit", (e) => {
    e.preventDefault();
    const email = document.querySelector("#login-email").value.split("@")[0];
    const role = document.querySelector("#login-role").value;

    sessionStorage.setItem("username", email);
    sessionStorage.setItem("role", role);

    window.location.href = "index.html";
  });
}
