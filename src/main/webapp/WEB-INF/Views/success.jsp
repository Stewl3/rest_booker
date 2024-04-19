<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <title>Success!!</title>
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

    .col {
      margin-top: 5rem;
    }

    .confirmationMessage {
      display: flex;
      justify-content: center;
      font-size: 30px;
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
        <button class="btn" href="/login">Login Here</button>
        <button class="btn" href="/">Register Here</button>
        <button class="btn" href="/">About Us</button>
      </uli>
    </nav>
    <div class="container text-center">
      <div class="row">
        <div class="col">
          <header class="header"><h1>Success!!</h1></header>
        </div>
      </div>
      <div class="col">
        <p class="confirmationMessage">Your reservation has been confirmed</p>
      </div>
    </div>
  </body>
</html>
