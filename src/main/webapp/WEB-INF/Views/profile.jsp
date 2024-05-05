<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile</title>
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

    <jsp:include page="navbarLoggedOut.jsp" />

    <script type="text/JavaScript"></script>
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
    }
  </style>
  <body>
    <h1 class="header">Profile Page</h1>

    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">User Information</h5>
              <p class="card-text">
                Name: ${userFirstName} ${userLastName}<br />
                Email: ${userEmail}
              </p>
              <a href="#" class="btn btn-primary">Change Password</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
