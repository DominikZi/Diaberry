<?php
debug("started handle_nav_requesrt");
if($user->getUid() && $_GET["site"]!="register") {
    require("inc/navbar.php");
}
if(($user->getUid() && isset($_GET["site"])) || $_GET["site"]=="register" || $_GET["site"]=="pass-forgot") {
    if(isset($_GET["subsite"]))
        $file=("sites/".str_replace("/",null,$_GET["site"])."/".str_replace("/",null,$_GET["subsite"]).".php");
    else 
        $file=("sites/".str_replace("/",null,$_GET["site"]).".php");
    
    if(is_file($file)) include($file);else echo "<h1>".t("Error")."</h1><p>".t("Page not found.")."</p>";
} else {
    include("sites/login.php");
}
