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

    <jsp:include page="navbarLoggedOut.jsp" />
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
      font-style: italic;
    }

    .honeyPotLogo {
      height: 305px;
    }
  </style>
  <body>
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
          <button type="button" class="btn btn-secondary">
            <a href="/login">Login Here</a>
          </button>
        </div>
        <div class="col">
          <img
            class="img-fluid honeyPotLogo"
            src="../Views/Images/Honeypot_logo.png"
            alt="Honeypot image"
          />
        </div>
      </div>
    </div>
  </body>
</html>
