<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
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
      background-image: linear-gradient(grey, darkorange);
    }

    .card {
      margin-top: 3rem;
      background-color: grey;
    }

    .form-control {
      background-color: grey;
    }
  </style>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card">
            <div class="card-header">
              <h3 class="text-center">Create your profile here</h3>
            </div>
            <div class="card-body">
              <form method="post" action="/registration/registered">
                <div class="mb-3">
                  <label for="first_name" class="form-label">First Name</label>
                  <input
                    type="text"
                    class="form-control"
                    name="first_name"
                    required
                  />
                </div>
                <div class="mb-3">
                  <label for="last_name" class="form-label">Last Name</label>
                  <input
                    type="text"
                    class="form-control"
                    name="last_name"
                    required
                  />
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label">Email</label>
                  <input
                    type="email"
                    class="form-control"
                    name="email"
                    required
                  />
                </div>
                <div class="mb-3">
                  <label for="password" class="form-label">Password</label>
                  <input
                    type="password"
                    class="form-control"
                    name="password"
                    required
                  />
                </div>
                <button type="submit" class="btn btn-primary btn-block">
                  Submit
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
