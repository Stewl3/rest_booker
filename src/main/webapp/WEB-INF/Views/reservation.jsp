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

    <jsp:include page="navbar.jsp" />
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
      padding: 1rem;
    }

    .header {
      display: grid;
      font-size: 20px;
      justify-content: center;
      padding-bottom: 1rem;
      font-style: italic;
    }
  </style>
  <body>
    <header class="header">
      <h2>Reservation Form</h2>
    </header>
    <div class="formContainer">
      <form action="/reservation/success" method="post" class="login">
        <div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >First name</label
            >
            <input
              type="text"
              class="form-control"
              name="firstName"
              placeholder="John"
            />
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Last Name</label
            >
            <input
              type="text"
              class="form-control"
              name="lastName"
              placeholder="Smith"
            />
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Email address</label
            >
            <input
              type="email"
              class="form-control"
              name="email"
              placeholder="name@example.com"
            />
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Date</label
            >
            <input type="date" class="form-control" name="date" />
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label"
              >Time</label
            >
            <input type="time" class="form-control" name="time" />
          </div>
          <!-- <label for="firstName">First Name:</label>
          <input type="text" id="fname" name="firstName" /><br /><br />
          <label for="lastName">Last Name:</label>
          <input type="text" id="lname" name="lastName" /><br /><br />
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" /><br /><br />
          <label for="date">Date:</label>
          <input type="date" id="date" name="date" /><br /><br />
          <label for="time">Time:</label>
          <input type="time" id="time" name="time" /><br /><br /> -->
          <div class="buttonSubmit">
            <button type="submit" class="btn submitBtn btn-outline-secondary">
              Submit
            </button>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
