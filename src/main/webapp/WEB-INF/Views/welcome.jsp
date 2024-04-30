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
      background-color: grey;
      background-image: linear-gradient(grey, darkorange);
    }

    .container {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
    }

    .header {
      padding-top: 2rem;
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
  </style>
  <body>
    <div class="container text-center">
      <h1 class="header">Welcome user.</h1>
      <div class="row">
        <div class="col reservationBtn">
          <a
            type="button submit"
            class="btn btn-outline-warning"
            href="/user/reservation"
          >
            Make a Reservation here
          </a>

          <a class="btn btn-outline-warning" href="">Find a Restaurant</a>
        </div>
      </div>
      <div class="row">
        <div class="col reservationBtn">
          <a href="" class="btn btn-outline-warning">Place Holder</a>
          <a href="" class="btn btn-outline-warning">Place Holder</a>
        </div>
      </div>
    </div>
  </body>
</html>
