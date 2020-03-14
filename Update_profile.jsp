<jsp:include page="includes/header.jsp"/>
<div class="container">
     <br><br>
     <div class="col-md-6 col-sm offset-3">
            <br>
            <h2 align="center" class="form-color"> Update Your profile </h2><br>
            
 <form action="RegisterController" method="post">
    <div class="form-group">
      <label for="name" >Name :</label>
      <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" required>
    </div>
    <div class="form-group">
      <label for="username" >Username :</label>
      <input type="text" class="form-control" id="username" placeholder="Enter your username" name="username" required>
    </div>            
    <div class="form-group">
      <label for="email" >Email :</label>
      <input type="email" class="form-control" id="email" placeholder="Enter your email" name="email" required>
    </div>
    <div class="form-group">
      <label for="mobile" >Mobile :</label>
      <input type="text" class="form-control" id="mobile" placeholder="Enter your mobile" name="mobile" required>
    </div>  
    
  
            <label for="image" >Image :</label>
    <div class="custom-file">

      <input type="file" class="custom-file-input" id="customFile" name="image" accept="image/x-png,image/jpg,image/jpeg" required>
      <label class="custom-file-label" for="customFile">Choose image</label>
    </div><br><br>
      
    <button type="submit" class="btn btn-info btn-block"> Update </button>
  </form>
            <br><br>
</div>
</div>
<jsp:include page="includes/footer.jsp"/>