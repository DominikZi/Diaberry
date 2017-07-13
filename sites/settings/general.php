<?php
echo "<br><h1>".t("General settings")."</h1>";

if(isset($_POST["save_uses_ke"])) {
    if(!$db->query("update User set uses_ke='".intval($_POST["uses_ke"])."' where id = '".$user->getUid()."'"))echo("Error while saving setting uses_ke to db: ".$db->error);
}

echo "<h2>".t("KE vs BE")."</h2>";
echo "
<form class='panel panel-body' method=post>
    <div class=togglebutton>
      <label>
        <input type=checkbox value=1 name=uses_ke ";
        $res=$db->query("select uses_ke from User where id = '".$user->getUid()."' limit 1");
        if($res&&$res->fetch_object()->uses_ke=='1')echo "checked";
        echo"> ".t("Use KE (vs. BE)")."
      </label>
    </div>
    <input class='btn-primary btn btn-raised' name=save_uses_ke value='".t("Save")."' type=submit>
</form>
";
