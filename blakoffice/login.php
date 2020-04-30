<?php include"header.php";?>

 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
          
		 <section class="content-header">
		 <div class="container-fluid">
	      <div class="row mb-6">
          <div class="col-sm-6">
            <h1>เข้าสู่ระบบ</h1>
          </div>
		    <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Login</li>
            </ol>
			</div>
			</div>
			</div>
		</section>
			
			<!--main contain-->
			
	     <div align="center">
		 <section class="content">
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body login-card-body">
                  <p class="login-box-msg">LOGIN PSU RUNNER </p>
                  
				  
				  
				  <form action="check_login.php" method="post">
                     
					  <div class="input-group mb-3">                 
                            <input type="text" name="username_user" class="form-control" placeholder="Username" required="required" />
					      <div class="input-group-append">
                           <div class="input-group-text">
						   <span class="fas fa-user"></span>
						   </div>
						  </div>
				     </div>
					     
						   <div class="input-group mb-3">
						  
							<input type="password" name="password_user" class="form-control" placeholder="Password" required="required" />
							<div class="input-group-append">
                           <div class="input-group-text">
						   <span class="fas fa-lock"></span>
                           </p>
                        </div>
                      </div>
                    </div>
                    
                 <div class="form-group">
                      <button type="submit" class="btn btn-primary" >Sign In</button>&nbsp;&nbsp;
                      <a href="register_user.php"  role="button"class="btn btn-warning" >Register</a>
					  </div>
				

				  
					
                  
                  
                  
				</form>
              
            </div>
		    </div>
        </div>
  
    </section>  
	</div>
  </div>
 
	 
	 
      <!--main contain-->
      

	 
	 
	   <!-- /.content -->
   
   
 
	 
	   <!-- /.content-wrapper -->
	   
	   
       <?php include "footer.php";?>
       <!-- Control Sidebar -->
       <aside class="control-sidebar control-sidebar-dark">
         <!-- Control sidebar content goes here -->
       </aside>
       <!-- /.control-sidebar --><!-- ./wrapper -->
	   
       <!-- jQuery -->
       <script src="plugins/jquery/jquery.min.js"></script>
       <!-- Bootstrap 4 -->
       <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
       <!-- AdminLTE App -->
       <script src="dist/js/adminlte.min.js"></script>
       <!-- AdminLTE for demo purposes -->
       <script src="dist/js/demo.js"></script>
	 
  </body>
</html>
