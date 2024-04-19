<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </head>
  <style>
    /* * {
      border: 1px solid red;
    } */

    html {
      height: 100%;
    }

    body {
      height: 100%;
      background-color: grey;
      background-image: linear-gradient(grey, darkorange);
    }

    .container {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
    }

    .header {
      font-style: italic;
    }

    .login {
      display: grid;
      font-size: 18px;
      justify-content: center;
      padding-right: 1rem;
    }

    .submit {
      color: black;
      margin: 0;
      font-size: 1.2rem;
      cursor: pointer;
    }

    .reservationBtn {
      margin-top: 3rem;
    }

    .row {
      margin-top: 10rem;
    }

    .nav {
      background-color: orange;
      display: flex;
      border-radius: 20px;
      justify-content: space-between;
      flex-wrap: wrap;
      padding: 0 1rem;
      align-items: center;
      box-shadow: 5px 5px;
    }

    .navList {
      width: 100%;
      margin: 0;
      text-align: end;
    }

    .navItem {
      padding: 0.5rem 2rem;
      border-bottom: 1px solid #222;
    }

    .navItem > a {
      color: #d2d0db;
      transition: color 0.3s;
    }

    .navItem > a:hover {
      color: white;
    }

    .navToggler {
      opacity: 0.5;
      transition: box-shadow 0.15s;
      cursor: pointer;
    }

    .navBrand {
      transform: translateY(5px);
    }
  </style>
  <body>
    <nav class="nav collapsible">
      <a class="navBrand" href="/"
        ><img src="../Views/images/Honeypot_logo.webp" alt="Honeypot Logo"
      /></a>
      <uli class="list navList collapsibleContent">
        <button class="btn" href="/">Logout Here</button>
        <button class="btn" href="/">Register Here</button>
        <button class="btn" href="/">About Us</button>
      </uli>
    </nav>
    <div class="container text-center">
      <div class="row">
        <div class="col">
          <h1 class="header">Welcome User!!</h1>
        </div>
      </div>
      <div class="col reservationBtn">
        <a
          type="button submit"
          class="btn btn-outline-warning"
          href="/user/reservation"
        >
          Make a Reservation here
        </a>
      </div>
    </div>
  </body>
</html>
