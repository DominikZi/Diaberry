<?php
if(!is_file("etc/config.php") && is_file("../etc/config.php"))$path="../";
include($path."etc/config.php");
include($path."bin/sql_sanitize.php");
$db=mysqli_connect(db_host,db_user,db_pass,db_name);
?>
