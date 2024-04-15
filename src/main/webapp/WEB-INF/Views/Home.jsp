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
    body {
      height: 800px;
      width: 1519px;
      background-color: grey;
      background-image: linear-gradient(grey, darkorange);
    }

    .rec {
      margin-top: 15px;
      background-color: darkgrey;
      width: 1519px;
      display: grid;
      justify-content: center;
    }

    .container {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
    }

    .login {
      display: grid;
      font-size: 25px;
      justify-content: center;
      padding-right: 1rem;
      margin-top: 20px;
    }

    .imageContainer {
      display: flex;
      justify-content: center;
    }

    #image1 {
      padding-right: 500px;
    }
  </style>
  <body>
    <div class="container">
      <div class="rec">
        <h1>Welcome to Honey Pot Restaurant!!</h1>
      </div>
      <a class="login" href="/login">Login to make a reservation</a>
    </div>
    <div class="imageContainer">
      <img id="image1" src="Images/Honeypot_logo.webp" alt="" />
      <img id="image2" src="Images/Honeypot_logo.webp" alt="" />
    </div>
  </body>
</html>
