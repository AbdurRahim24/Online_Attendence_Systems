<jsp:include page="includes/header.jsp"/>
<div class="container-fluid">  
    
    <div class="row">      
        <div class="col-sm-3" style="background-color:whitesmoke ;">
            <br><br>
          <div align="center" style="padding-bottom:20px;">
              <img src="includes/images/bgImage.jpg" class="rounded-circle"  width="200" height="200" ><br><br>             
              <a href="Update_profile.jsp" class="btn btn-primary">Update profile</a>
          </div>

          <h6 class="profile-font">Name :${name}</h6>
          <h6 class="profile-font">Username :${username}</h6>
          <h6 class="profile-font">E-mail :${email}</h6>
          <h6 class="profile-font">Mobile :${mobile}</h6>
          <br><br>
      </div>
  <div class="col-sm-9">
       <br><br>
      <div class="row">
         
          <div class="col-sm-4">
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-bookmark"></i> Total Bookmark</p>
              </div>
           </div>
    </a>
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-user-friends"></i> Total Contact</p>
              </div>
           </div>
    </a>
          </div>
          <div class="col-sm-4">
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-bookmark"></i> Trash Bookmark</p>
              </div>
           </div>
    </a>
    <a href="home.jsp" class="card-link">
          <div class="card  card-font">
              <div class="card-body">
                  <p align="center"><i class="fas fa-user-friends"></i> Trash Contact</p>
              </div>
           </div>
    </a>
          </div>
  </div>
  </div>
  </div>
  </div>
</div>
<jsp:include page="includes/footer.jsp"/>


