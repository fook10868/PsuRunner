<?php include"header.php";?>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>รายการงานวิ่ง
			
		 	</h1>
			
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">







<div class="row">



<?php 
include"config.inc.php";
$i=0;
$sql_running_event = "SELECT * FROM tbl_running_event , tbl_user where tbl_running_event.id_user=tbl_user.id_user  ORDER BY tbl_running_event.id_running_event ASC"; 
$query_running_event = $conn->query($sql_running_event); 
while($result_running_event = $query_running_event->fetch_assoc()){
$i++;
$id_running_event=$result_running_event['id_running_event'];
?>	

          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3><?=$result_running_event['name_running_event'];?></h3>

                <p><?=$result_running_event['date_running_event'];?></p>
				
				
				<?php
				$sql_run=" SELECT COUNT(tbl_register_run.id_register_run) AS c_run FROM tbl_register_run , tbl_event_type where
				              tbl_register_run.id_event_type=tbl_event_type.id_event_type and  tbl_event_type.id_running_event=$id_running_event ";
							  
							  
				$query_run = $conn->query($sql_run); 
				$result_run = $query_run->fetch_assoc();
				?>
				
				<h5><?=$result_run['c_run'];?></h5>
              </div>
              <div class="icon">
                <i class="ion ion-user"></i>
              </div>
             
            </div>
          </div>
          <!-- ./col -->
<?php }?>

 </div>
        <!-- /.row -->













    

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<?php include "footer.php";?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->




<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
  });
</script>
</body>
</html>

