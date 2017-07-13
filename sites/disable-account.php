<?php
echo "<br><h1>".t("Disable account")."</h1>";
if(strtolower($_POST["confirm"])==strtolower(t("confirm"))) {
    echo "Account was closed.";
    $db->query("update User set is_active='0' where id = '".$user->getUid()."'");
    $db->query("delete from UserLogin where uid = '".$user->getUid()."'");
} else {
    echo "<p>".t("If you really want to disable your account, please type <u><b>".t("confirm")."</b></u> into the textbox below and press &quot;Disable account&quot;").":</p><form method=post><input placeholder='".t("Type in \"confirm\" to disable your account")."' name=confirm class=form-control><input  class='btn btn-primary btn-raised' value='".t("Disable account")."' type=submit></form>";
}
