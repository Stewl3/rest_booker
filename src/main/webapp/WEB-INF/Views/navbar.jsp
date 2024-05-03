<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <style>
    a {
      text-decoration: none;
      color: black;
    }

    .navbar {
      background-color: orange;
    }
  </style>
  <body>
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <a class="navbar-brand" href="/">Honey Pot Restaurant</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/menu"
                >Our Menu</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/registration">Register</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/reservation"
                >Make a Reservation Here</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/about">About Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </body>
</html>
