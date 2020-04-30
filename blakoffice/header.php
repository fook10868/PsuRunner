<?php
session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PSU RUNNER</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">

    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kanit&display=swap" rel="stylesheet">
</head>

<body class="hold-transition sidebar-collapse sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper" >
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-light" style="background-color:#353a40;" >
            <!-- Left navbar links -->
            <ul class="navbar-nav" style="font-family: 'Kanit', sans-serif;
">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"
                            style="color:#FFFFFF;"></i></a> </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="../index.php" class="nav-link" style="color:#ffffff;" target="_blank">หน้าเว็บไซต์</a>
                </li>


                <li class="nav-item d-none d-sm-inline-block">
                    <a href="index.php" class="nav-link" style="color:#ffffff;">หน้าแรก</a>
                </li>


                <?php if(isset($_SESSION["id_user"])){?>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="logout.php" class="nav-link" style="color:#ffffff;">ออกจากระบบ</a></li>
                <?php }else{?>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="login.php" class="nav-link" style="color:#ffffff;">เข้าสู่ระบบ</a></li>
                <?php }?>


            </ul>




        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="#" class="brand-link">
                <img src="" style="opacity: .8">
                <span class="brand-text font-weight-light">&nbsp&nbsp&nbsp&nbsp<Strong>PSU RUNNER</Strong></span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <?php if(isset($_SESSION["id_user"])){?>

                    <div class="info">

                        <a href="#" class="d-block">ยินดีต้อนรับ : <?=$_SESSION["name_user"];?>
                            <?=$_SESSION["last_user"];?> </a>

                    </div>
                    <?php }?>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2" style="font-family: 'Kanit', sans-serif;
">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                        <?php if(isset($_SESSION["level_user"])){ 
			$level_user=$_SESSION["level_user"];
			}else{
			$level_user='';
			}
			?>



                        <?php if($level_user==1){?>

                        <li class="nav-item">
                            <a href="regisrun_list.php" class="nav-link">
                                <i class="fas fa-info-circle"></i>
                                <p>ข้อมูลการสมัครวิ่ง</p>
                            </a>
                        </li>

                        <?php }?>




                        <?php if($level_user==2){?>


                        <li class="nav-item">
                            <a href="runevent_list.php" class="nav-link">
                                <i class="far fa-calendar-alt"></i>
                                <p>ข้อมูลงานวิ่ง</p>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a href="bank_list.php" class="nav-link">
                                <i class="fas fa-university"></i>
                                <p>ข้อมูลธนาคาร</p>
                            </a>
                        </li>




                        <li class="nav-item">
                            <a href="runevent_list_reg.php" class="nav-link">
                                <i class="fas fa-user"></i>
                                <p>ข้อมูลผู้สมัคร</p>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a href="payment_list.php" class="nav-link">
                            <i class="fas fa-money-bill-alt"></i>
                                <p>ข้อมูลการชำระเงิน</p>
                            </a>
                        </li>





                        <?php }?>








                        <?php if($level_user==3){?>
                        <li class="nav-item">
                            <a href="user_list.php" class="nav-link">
                                <i class="fas fa-users"></i>
                                <p>ข้อมูลผู้ใช้งาน</p>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a href="bank_list.php" class="nav-link">
                                <i class="fas fa-university"></i>
                                <p>ข้อมูลธนาคาร</p>
                            </a>
                        </li>



                        <li class="nav-item">
                            <a href="typerun_list.php" class="nav-link">
                                <i class="fas fa-running"></i>
                                <p>ข้อมูลประเภทการวิ่ง</p>
                            </a>
                        </li>


                        <li class="nav-item">
                            <a href="runevent_list.php" class="nav-link">
                                <i class="far fa-calendar-alt"></i>
                                <p>ข้อมูลงานวิ่ง</p>
                            </a>
                        </li>



                        
                        <li class="nav-item">
                            <a href="contact_list.php" class="nav-link">
                            <i class="fas fa-address-card"></i>
                                <p>ข้อมูลผู้ขอจัดงาน</p>
                            </a>
                        </li>
                        <?php }?>



                        </li>

                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>