<?php
$passlink_expire=$passlink_expire; //duration of validatily of email links

if(isset($_POST["email"])) {
    $uid=false;
    $row=$db->query("select id as uid from User where email = '".$_POST["email"]."' limit 1");
    if($row)$uid=$row->fetch_object()->uid;
    $hash=random_hash().uniqid();
    debug($hash);
    $sql="insert into UserPasswordReset(uid,hash) values('".$uid."','".$hash."')";debug($sql);
    if($uid && $db->query($sql)) {
        $body=path."/?site=pass-forgot&method=hash&hash=".$hash;
        mail($_POST["email"],t("Reset your password for Diaberry"),$body);
        echo "<br><div class='panel panel-body'><h1>".t("Please check your emails")."</h1><p>".t("We've send you a verification link. There you can choose a new password.")."<br><br><a class='btn btn-primary btn-raised' href='".path."'>&larr; ".t("Go back")."</a>";
        debug($body);
    } else {
        echo "<br><div class='panel panel-body'><h1>".t("Error")."</h1><p>".t("Please check the email adress you entered.")."</p><form method=post action=?site=pass-forgot&method=email><input style=margin-top:-10px value='".$_POST["email"]."' class=form-control name=email placeholder='".t("Your email adress"),"'><input class='btn btn-raised btn-primary' type=submit></form>";
    }
} elseif(isset($_POST["hash"])) {
    $r=false;

    debug("select * from UserPassword up,UserPasswordReset upr where up.password = '".hash_pass($_POST["newpass"][0])."' and upr.hash = '".$_POST["hash"]."'");
    echo "<br><div class='panel panel-body'><h1>";

    if($_POST["newpass"][0]!=$_POST["newpass"][1])echo t("Passwords do'nt match")."";
    elseif(strlen($_POST["newpass"][0])<8)echo t("Password is less than 8 characters </h1><p>Please choose a longer password</p><h1>");
    elseif($db->query("select * from UserPassword up,UserPasswordReset upr where up.password = '".hash_pass($_POST["newpass"][0])."' and upr.hash = '".$_POST["hash"]."'")->num_rows)echo t("Please choose a new password. This password already has been used earlier by you.");
    elseif($db->query("select * from UserPassword up where up.password = '".hash_pass($_POST["newpass"][0])."'")->num_rows)echo t("Please choose a safer password. Dont be afraid of using your whole keyboard.");
    else {
        $uid=-1;
        $sql="select uid from UserPasswordReset where hash = '".$_POST["hash"]."' and ts > '".date("Y-m-d H:i:s",(time()-$passlink_expire))."' limit 1";
        $res=$db->query($sql);debug("$sql");
        $uid=$res->fetch_object()->uid;
        $sql="insert into UserPassword(uid,password) values('".$uid."','".hash_pass($_POST["newpass"][0])."')";debug("$sql");
        if($db->query($sql)) {
            echo t("Your password has been changed. </h1><p>You can now ###loginlink###log in</a>.",array("loginlink"=>"?site=login"));
        } else {
            echo t("Changing your password has failed. Please try again later. ").$db->error;
        }
        $r=true;
    }
    if(!$r) {
        echo "</h1><a class='btn btn-primary btn-raised' onclick='history.back();'>&larr; ".t("Go back")."</a>";
    }
} elseif(isset($_GET["hash"])) {
    echo "<br><div class='panel panel-body'><h1>".t("Please choose a new password")."</h1><form method=post action=?site=pass-forgot&method=hash><input class=form-control type=hidden name=hash value=".$_GET["hash"]."><input class=form-control name=newpass[] type=password min=8 max=256 placeholder='".t("New password")."' required><input class=form-control name=newpass[] type=password min=8 max=256 placeholder='".t("Confirm new password")."' required><input class='btn btn-primary btn-raised' type=submit></form>";
} else {
    echo "<br><div class='panel panel-body'><h1>".t("Password forgotten?")."</h1><p>".t("No problem. Please type in your Email, we'll give you a new one")."</p><form method=post action=?site=pass-forgot&method=email><input class=form-control name=email placeholder='".t("Your email adress"),"'><input class='btn btn-raised btn-primary' type=submit></form>";
}
