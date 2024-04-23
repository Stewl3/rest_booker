<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
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
      background-image: linear-gradient(grey, darkorange);
    }

    h2 {
      margin-top: 2rem;
      font-size: 25px;
    }

    .container {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
    }

    .header {
      margin-top: 2rem;
      font-style: italic;
    }

    .login {
      display: grid;
      font-size: 25px;
      justify-content: center;
      padding-right: 1rem;
      margin-top: 20px;
      font-style: italic;
    }

    .honeyPotLogo {
      margin-top: 8rem;
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
        ><img
          src="../../../resources/Images/Honeypot_logo.png"
          alt="Honeypot
        Logo"
      /></a>
      <uli class="list navList collapsibleContent">
        <button class="btn" href="/">Register Here</button>
        <button class="btn" href="/">About Us</button>
      </uli>
    </nav>
    <div class="container text-center">
      <div class="row row-cols-2">
        <div class="col">
          <header class="header">
            <h1>Welcome to Honey Pot Restaurant!!</h1>
            <h2>Login To Continue:</h2>
          </header>
        </div>
        <div class="col"></div>
        <div class="col">
          <form class="login" method="post" action="/login/user">
            Email : <input type="text" name="name" />
            <br />
            Password : <input type="password" name="password" />
            <br />
            <button
              type="button submit"
              class="btn submitBtn btn-outline-secondary"
            >
              Submit
            </button>
          </form>
        </div>
        <div class="col">
          <img
            class="img-fluid honeyPotLogo"
            src="../../../resources/Images/Honeypot_logo.png"
            alt="Honeypot image"
          />
        </div>
      </div>
    </div>
  </body>
</html>
