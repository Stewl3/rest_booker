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
      width: 50%;
      margin: 0;
      text-align: end;
      font-size: 69px;
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
      text-decoration: none;
      font-size: 40px;
      color: black;
    }

    .navbarImg {
      height: 100px;
      margin-top: -10px;
    }

    .honeyPotLogo {
      height: 305px;
    }

    .emailInput {
      padding: 0;
    }

    .pwInput {
      padding: 0;
    }

    .submitBtn {
      padding: 0;
    }
  </style>
  <body>
    <nav class="nav collapsible">
      <a class="navBrand" href="/"
        ><img
          class="navbarImg"
          src="../Views/Images/Honeypot_logo.png"
          alt=""
        />
        Honey Pot Restaurant
      </a>
      <div class="title"></div>

      <uli class="list navList collapsibleContent">
        <button class="btn">
          <a type="submit" href="/menu">View our menu here</a>
        </button>
        <button class="btn">
          <a type="button submit" href="/registration">Register here</a>
        </button>
        <button class="btn"><a href="/profile">View Profile</a></button>
        <button class="btn"><a href="/about">About Us</a></button>
      </uli>
    </nav>
  </body>
</html>
