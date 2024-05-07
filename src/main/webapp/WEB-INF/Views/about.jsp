<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us</title>
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
      height: 100%;
    }

    body {
      height: 100%;
      background-image: linear-gradient(grey, darkorange);
    }

    .header {
      text-align: center;
      padding-top: 2rem;
    }

    .about {
      text-align: center;
      font-size: 20px;
      padding-top: 2rem;
      padding-left: 30rem;
      padding-right: 30rem;
    }
    .contact {
      text-align: center;
      font-size: 24px;
      margin-top: 15rem;
    }
  </style>
  <body>
    <h1 class="header">About Us</h1>
    <p class="about">
      We are a small start up Restaurant set in the hills of Buckhannon, WV. We
      offer a variety of dishes and appetizers with the perfect drinks to wash
      them down with. Stop by on Main St and come hang out with us.
    </p>

    <div class="contact">
      <h2 class="header"><u>Contact Us</u></h2>
      <p>304-420-0690</p>
      <p>HoneyPotRestaurant@honey.pot</p>
    </div>
  </body>
</html>
