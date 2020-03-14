<jsp:include page="includes/header.jsp"/>
<div class="container">
    <br><br>
     <div class="col-md-6 col-sm offset-3">
            <br>
            <h2 align="center" class="form-color">Join a new class</h2><br>
            
  <form action="CreateClass" method="post">
    <div class="form-group">
      <label for="id" class="form-color">ID :</label>
      <input type="text" class="form-control" id="coursename" placeholder="Enter your id" name="id" required>
    </div>
    <div class="form-group">
      <label for="session" class="form-color">Session :</label>
      <input type="text" class="form-control" id="session" placeholder="Enter your session" name="session" required>
    </div>
    <div class="form-group">
      <label for="courseCode" class="form-color">Course Code :</label>
      <input type="text" class="form-control" id="courseCode" placeholder="Enter Course Code" name="courseCode" required>
    </div>
    <div class="form-group">
      <label for="classCode" class="form-color">Class Code :</label>
      <input type="text" class="form-control" id="classCode" placeholder="Enter Class Code" name="classCode" required>
    </div>  
    <button type="submit" class="btn btn-info btn-block">Join</button>
  </form>
</div>
    <br><br>
</div>
      
      
      <jsp:include page="includes/footer.jsp"/>


