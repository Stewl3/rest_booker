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
    html {
      height: 100%;
    }

    body {
      height: 100%;
      background-color: grey;
      background-image: linear-gradient(grey, darkorange);
    }

    h2 {
      margin-top: 5rem;
    }

    .buttonSubmit {
      padding-left: 3rem;
    }

    .submitBtn {
      padding-left: 3rem;
      padding-right: 3rem;
    }

    .formContainer {
      display: grid;
      justify-content: center;
      font-size: 1.2rem;
    }

    .login {
      width: fit-content;
      display: grid;
      font-size: 18px;
      justify-content: center;
      border: 3px solid black;
      padding: 1rem;
    }

    .submit {
      color: black;
      margin: 0;
      font-size: 1.2rem;
      cursor: pointer;
    }

    .header {
      display: grid;
      font-size: 20px;
      justify-content: center;
      padding-bottom: 1rem;
      font-style: italic;
    }

    .nav {
      background-color: orange;
      display: flex;
      border-radius: 20px;
      justify-content: space-between;
      flex-wrap: wrap;
      padding: 0 1rem;
      align-items: center;
      box-shadow: 5px 5px;
    }

    .navList {
      width: 100%;
      margin: 0;
      text-align: end;
    }

    .navItem {
      padding: 0.5rem 2rem;
      border-bottom: 1px solid #222;
    }

    .navItem > a {
      color: #d2d0db;
      transition: color 0.3s;
    }

    .navItem > a:hover {
      color: white;
    }

    .navToggler {
      opacity: 0.5;
      transition: box-shadow 0.15s;
      cursor: pointer;
    }

    .navBrand {
      transform: translateY(5px);
    }
  </style>
  <body>
    <nav class="nav collapsible">
      <a class="navBrand" href="/"
        ><img src="../Views/images/Honeypot_logo.webp" alt="Honeypot Logo"
      /></a>
      <uli class="list navList collapsibleContent">
        <button class="btn" href="/login">Login Here</button>
        <button class="btn" href="/">Register Here</button>
        <button class="btn" href="/">About Us</button>
      </uli>
    </nav>
    <header class="header">
      <h2>Reservation Form</h2>
    </header>
    <div class="formContainer">
      <form action="/user/success" method="post" class="login">
        <div>
          <label for="firstName">First Name:</label>
          <input type="text" id="fname" name="firstName" /><br /><br />
          <label for="lastName">Last Name:</label>
          <input type="text" id="lname" name="lastName" /><br /><br />
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" /><br /><br />
          <label for="date">Date:</label>
          <input type="date" id="date" name="date" /><br /><br />
          <label for="time">Time:</label>
          <input type="time" id="time" name="time" /><br /><br />
          <div class="buttonSubmit">
            <button
              type="button submit"
              class="btn submitBtn btn-outline-secondary"
            >
              Submit
            </button>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
