<?php
echo "<br><div class='panel panel-body'><h1>".t("Create a new account")."</h1>"; 
if(!isset($_POST["register"])) {
	?>
	<form method=POST action=?site=register&token=<?php $rand=md5(uniqid()); echo $rand;?>>
		<input class=form-control autofocus required name=fname placeholder="<?php echo t("Firstname");?>">
		<input class=form-control required name=lname placeholder="<?php echo t("Lastname");?>">
		<input  class=form-control required name=email type=email placeholder="<?php echo t("Email");?>">
		<input class=form-control required name=pass type=password placeholder="<?php echo t("Please choose a password");?>">
		<input class="btn btn-raised btn-primary" required name=register type=submit value="<?php tt("Register now");?>">
		<input type=hidden name=token value="<?php echo $rand;?>">
	</form>
	<?php 
} else {
	
	
	require("bin/dbcon.php");
	if(!$db)debug("no db");	
	
	require_once("lib/liblogin.php");
	
	if(strlen($_POST["fname"])<2) echo t("Firstname not long enough");
	elseif($_GET["token"]!=$_POST["token"]) echo t("Token mismatch");
	elseif(strlen($_POST["lname"])<2) echo t("Lastname not long enough");
	elseif(strlen($_POST["email"])<4 || !strstr($_POST["email"],"@")) echo t("Email seems to not be valid");
	elseif($db->query("select * from User where email like '".$_POST["email"]."'")->num_rows) echo t("Please choose another email adress"); 
	elseif(strlen($_POST["pass"])<8) echo t("Password is too short");
	elseif(strlen($_POST["pass"])>100) echo t("Password is too long");
	elseif(strlen($_POST["email"])>100) echo t("Email is too long");
	elseif(strlen($_POST["fname"])>100) echo t("Vorname is too long");
	elseif(strlen($_POST["lname"])>100) echo t("Nachname is too long");
	else {
		if($db->query("insert into User(lang,is_active,fname,lname,email,gid) values('de','1','".$_POST["fname"]."','".$_POST["lname"]."','".$_POST["email"]."','1')") && $db->query("insert into UserPassword(password,uid) values('".hash_pass($_POST["pass"])."','".$db->insert_id."')"))
			echo t("Registration was successful. You can now log in.")."<br><a href=".path." class='btn btn-primary btn-raised'>".t("Log-in now")."</a>";
		else 
			echo $db->error.t("Registration failed. We're sorry.").$db->error;
		
	}
	
}?>
