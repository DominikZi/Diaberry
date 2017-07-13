<?php
if(!$user->getUid()) {
?>
<br><br><br>
<h1 class=text-center>Diaberry</h1>
<br>
<form method=post style=max-width:400px;margin:auto;margin-top:3%; class="panel panel-body" action=?site=login>
<?php
if(isset($_POST["email"])) {
    echo "<div style=margin:-15px class='alert alert-danger'>".t("Wrong log-in data")."</div><br>";
}
?>
<input class="form-control" type="text" <?php if(!isset($_POST["email"]))echo " autofocus=autofocus ";?> value="<?php echo $_POST["email"];?>" placeholder="<?php echo t("Email");?>" name=email  autofocus=autofocus >
<input type="password" class=form-control  <?php if(isset($_POST["email"]))echo " autofocus=autofocus ";?>  name=pass placeholder=Passwort  > 
<input type=submit class="btn btn-raised btn-primary" value="Log-in"><br>
</form>
<br>
<p class=text-center> 
<a href=?site=pass-forgot class="btn btn-default"><?php echo t("forgot your password?"); ?></a>
<a href=?site=register class="btn btn-default"><?php echo t("register"); ?></a>
</p> 
<?php
} else {
    include("sites/diary.php");
}
?>
