<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
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
  </style>
  <body>
    <div class="container">
      <h1 class="formTitle">Please Login Below</h1>
      <form method="post" action="/login/database">
        Email : <input type="text" name="name" /><br />
        <br />
        Password : <input type="password" name="password" /><br />
        <br />
        <input class="submit" type="submit" />
      </form>
    </div>
  </body>
</html>
