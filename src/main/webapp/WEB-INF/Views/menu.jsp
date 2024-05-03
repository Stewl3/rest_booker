<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Menu</title>
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
    html {
      height: auto;
    }

    body {
      height: auto;
      background-image: linear-gradient(grey, darkorange);
    }

    h1 {
      text-align: center;
      margin-top: 2rem;
    }

    .honeyPotMenu {
      margin-bottom: 5rem;
    }
  </style>
  <body>
    <h1>Our Menu</h1>

    <center>
      <img
        class="img-fluid honeyPotMenu"
        src="../Views/Images/Menu.jpg"
        alt="Honey pot Restaurant Menu"
      />
    </center>
  </body>
</html>
