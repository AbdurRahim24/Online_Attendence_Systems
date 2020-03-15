<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
  
  <style>
      .background{
          background-color: white;
      }
      .font-color{
          color: white;
      }
      .nav-link:hover {
          color: black;
          background-color:whitesmoke; 
          margin: 0;
          display: block;
      }
      .link:hover{
           color: tomato; 
           text-decoration: none;
          margin: 0;
      }
      .profile-font{
          color: black;
          padding-left: 30px;
      }
      .card-font{
          color: black;
          text-decoration: none;
          background-color: whitesmoke ;
      }
      
  </style>
  
</head>
<body class="background">
<header>
<nav class="navbar navbar-expand-sm bg-dark fixed-top">
  <!-- Links -->
  <ul class="navbar-nav" >
    <li class="nav-item">
        <a class="nav-link font-color" href="home.jsp" style="padding-left:20px;"><i class="fas fa-home"></i> Home</a>
    </li>
    <li class="nav-item ">
      <a class="nav-link font-color" href="joinClass.jsp" style="padding-left:20px;"><i class="fas fa-plus"></i> Join Class</a>
    </li>
    <li class="nav-item">
      <a class="nav-link font-color" href="createClass.jsp" style="padding-left:20px;"><i class="fas fa-plus"></i> Create Class</a>
    </li>   
  </ul>
  
  <ul class="navbar-nav ml-auto">           
     <li class="nav-item">
        <a class="nav-link font-color" href="about.jsp" style="padding-left:20px;"><i class="fas fa-user-circle"></i> Profile</a>
     </li>
     <li class="nav-item">
        <a class="nav-link font-color" href="LogoutController" style="padding-left:20px;"><i class="fas fa-sign-out-alt"></i> Logout</a>
     </li>
  </ul>

</nav>
<br>
</header>