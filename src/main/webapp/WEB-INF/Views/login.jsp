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

    <jsp:include page="navbar.jsp" />
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
      margin-top: 3rem;
      font-size: 25px;
      justify-content: center;
      padding-right: 1rem;
      font-style: italic;
    }
  </style>
  <body>
    <div class="container text-center">
      <center>
        <form class="login" method="post" action="/login/user">
          Email : <input class="emailInput" type="text" name="name" />
          <br />
          Password : <input class="pwInput" type="password" name="password" />
          <br />
          <button
            type="button submit"
            class="btn submitBtn btn-outline-secondary submitBtn"
          >
            Submit
          </button>
        </form>
      </center>
    </div>
  </body>
</html>
