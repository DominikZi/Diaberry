<?php
define("user",$_SESSION["user"]);
define("hash",$_COOKIE["hash"]);

$conf["haystack"]["sites_accessible_logged_out"]=array("register");

if(is_file("lib/libglob.php")) {
    include("lib/libglob.php");
    include("inc/header.php");
}
