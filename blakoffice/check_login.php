<?php
session_start();

include"config.inc.php";

$sql_user = "SELECT * FROM tbl_user where username_user=$_POST[username_user] and  password_user=$_POST[password_user]"; 

$query_user = $conn->query($sql_user); 

$result_user = $query_user->fetch_assoc();

if($result_user)
	{

	    $_SESSION["id_user"] = $result_user["id_user"];
		$_SESSION["name_user"] = $result_user["name_user"];
		$_SESSION["last_user"] = $result_user["last_user"];
	    $_SESSION["level_user"] = $result_user["level_user"];
		
		session_write_close();
	
            echo "<script type='text/javascript'>";
			echo  "alert('ยินดีต้อนรับเข้าสู่ระบบ');";
		    echo "window.location='index.php'";
		    echo "</script>"; 
	
   }else{

            echo "<script type='text/javascript'>";
			echo  "alert(' User  หรือ  Pass ผิด.......!');";
		    echo "window.location='login.php'";
		    echo "</script>"; 

  }





?>
