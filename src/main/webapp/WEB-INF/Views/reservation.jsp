<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Reservation Form</title>
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

    body {
      height: 1000px;
      background-color: grey;
      background-image: linear-gradient(grey, darkorange);
    }

    .container {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
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
    .header {
      display: grid;
      font-size: 18px;
      justify-content: center;
      padding-right: 1rem;
    }
  </style>
  <body>
    <header class="header">
      <h2>Reservation Form</h2>
    </header>
    <form action="/submit-form" method="post" class="login">
      <div>
        <label for="fname">First Name:</label>
        <input type="text" id="fname" name="fname" /><br /><br />

        <label for="lname">Last Name:</label>
        <input type="text" id="lname" name="lname" /><br /><br />

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" /><br /><br />

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" /><br /><br />

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" /><br /><br />

        <input type="submit" value="Submit" class="submit" />
      </div>
    </form>
  </body>
</html>
