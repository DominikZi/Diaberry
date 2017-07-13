<?php
echo "<br><h1>".t("Security settings")."</h1>";

echo "<h2>".t("Security questions")."</h2>";

if(strlen($_POST["q"]) && strlen($_POST["a"])) {
    echo "<div class='alert alert-primary'>";
    if($db->query("insert into UserSecurityQuestion(uid,q,a) values('".$user->getUid()."','".$_POST["q"]."','".$_POST["a"]."')"))
        tt("Security question was saved.");
    else 
        tt("Error saving security question.");
    echo "</div>";
}

$res=$db->query("select q,a from UserSecurityQuestion where uid = '".$user->getUid()."'");
if($res) while ($row=$res->fetch_object()) {
    echo "<div class=panel><div class=panel-heading>".$row->q."</div><div class=panel-body>".$row->a."</div></div>";
}
echo "
<form method=post class='panel '>
    <div class=panel-heading>".t("Add security question")."</div>
    <div class=panel-body>
        <input name=q class=form-control placeholder='".t("Question")."'><input name=a class=form-control placeholder='".t("Answer")."'><input class='btn-primary btn btn-raised' value='".t("Add security question")."' type=submit>
    </div>
</form>
";


if(isset($_GET["passreset"])) {
    $hash=random_hash().uniqid();
    $db->query("insert into UserPasswordReset(uid,hash) values('".$user->getUid()."','".$hash."')");
    header("location: ".path."/?site=pass-forgot&method=hash&hash=".$hash."");
}

if(isset($_GET["logoutall"])) {
    $db->query("delete from UserLogin where uid = '".$user->getUid()."' and hash !=  '".hash."'");
}

echo "<h2>".t("Logins")."</h2>
<form class='panel panel-body' method=post>
    <a href=?site=settings&subsite=security&passreset class='btn-primary btn btn-raised' >".t("Set new Password")."</a>
    <a href=?site=settings&subsite=security&logoutall class='btn-default ";if($db->query("select * from UserLogin where uid = '".$user->getUid()."'")->num_rows<2)echo" disabled ";echo" btn btn-raised' >".t("Logout everywhere else")."</a>
</form>

<h2>".t("Disable Account")."</h2>
<div class='panel panel-body'>
    <p>".t("If you want to close your account, please click on the button below. You can't undo this action !!!")."</p>
    <a href='".get_nav(array("site"=>"disable-account"))."' class='btn  btn-raised btn-danger'>".t("Disable Account")."</a>
</div>
";



   

