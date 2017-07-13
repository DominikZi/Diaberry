<?php
if($_POST["action"]=="add_comment") {
	if($db->query("insert into DishComment(comment,uid) values('".$_POST["comment"]."','".$user->getUid()."'"))die("1");
}