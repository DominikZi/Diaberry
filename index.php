<?php
require_once 'lib/libhash.php';
if(!isset($_COOKIE["hash"]) || $_GET["action"]=="logout"){setcookie("hash",random_hash());header("location: ?site=login");}
ini_set('session.use_strict_mode', 1);


require("etc/dev_config.php");

include("lib/libtranslate.php");
include("lib/libdebug.php");

include("bin/dbcon.php");

if(isset($_GET["ajax"])) {
	require("bin/ajax.php");
	die("");
}

include("bin/header.php");

include("bin/load_classes.php");


require("bin/check_login.php");

echo "<div class=container id=main-container>";

if(!is_object($user) && isset($_GET["site"]) && in_array($_GET["site"],$conf["haystack"]["sites_accessible_logged_out"])) {
    include("sites/".$_GET["site"].".php");
} else {
    include("bin/handle_nav_request.php");
}

echo "</div><br><br><br><br>";

echo "</body></html>";
