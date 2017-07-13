<br><br><h1><?php tt("My Dishes");?></h1>
<?php 

if($_GET["action"]=="delete"&&is_numeric($_GET["id"]) && $db->query("update Dish set status = 'trash' where id='".$_GET["id"]."' and uid = '".$user->getUid()."'")) {
    echo "<div class='alert alert-success alert-dismissible'>".'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'.t("Dish was deleted.")."</div>";
}

$res=$db->query("select * from Dish where uid = '".$user->getUid()."' and status != 'trash' and title != '' order by ts desc");
while($row=$res->fetch_object()) {
    the_dish($row);
}
debug($db->error);
?>
