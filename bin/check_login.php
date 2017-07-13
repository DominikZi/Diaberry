<?php
$user=null;


if(!is_file("lib/liblogin.php"))require_once "../lib/liblogin.php";
else require_once "lib/liblogin.php";


if(!is_file("classes/User.php"))require_once "../classes/User.php";
else require_once "classes/User.php";


$logged_in=true;

if(isset($_POST["email"])&&isset($_POST["pass"])&&login($_POST["email"],$_POST["pass"])) {
    $user=new User($_SESSION["hash"]);
} else {
    $logged_in=false;
}

if(!is_object($user) || !$user->getUid()) {
    $user=new User(hash);
}

