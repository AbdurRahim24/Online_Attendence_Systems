<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <style>
      .background{
          background-image: url("includes/images/bgImage.jpg");
      }
      .font-color{
          color: white;
      }
      .form-color{
          color: black;
      }
      
  </style>
</head>
<body class="background">

<div class="container">
    <div class="row">
        
        <div class="col-md-6 col-sm offset-3">
            <br><br><br><br><br>
            <h2 align="center" class="font-color">Please Login here</h2>
            <form action="LoginController" method="post">
    <div class="form-group">
      <label for="username" class="font-color">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter your username" name="username" required>
    </div>
    <div class="form-group">
      <label for="pwd" class="font-color">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required>
    </div>
    <button type="submit" class="btn btn-info btn-block">Login</button>
  </form>
   <div align='center' >
    <a class="font-color" href="forgotPassword.jsp">Forgot password?</a>
   </div><br><br>
     <div align='center' class="font-color">
         Don't have an account? <a class="font-color" href="signUp.jsp">Sign up</a> 
    </div>
</div>
    </div>
        </div>
</body>
</html>
