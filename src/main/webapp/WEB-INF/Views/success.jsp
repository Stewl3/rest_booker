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

    .col {
      margin-top: 5rem;
    }

    .confirmationMessage {
      display: flex;
      justify-content: center;
      font-size: 30px;
    }
  </style>
  <body>
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
