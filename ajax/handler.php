<?php
$path="../";
include("../bin/dbcon.php");
if($_GET["action"]=="addcomment") {
    $db->query("INSERT INTO `DishComment` (dish_id,`uid`, `comment`) VALUES ('".str_replace("'",null,$_POST["dish_id"])."',  '".str_replace("'",null,$_POST["uid"])."',  '".str_replace("'",null,$_POST["comment"])."')");
}
elseif($_GET["action"]=="search_my_database") {

    if($_GET["weight"]=="")$_GET["weight"]="0";

    $weight=$_GET["weight"];

    $_GET["weight"]=str_replace("g","",str_replace("ml","",strtolower(str_replace(",",".",$_GET["weight"]))));

    if(strstr($_GET["weight"],"l")&&!strstr($_GET["weight"],"ml"))$_GET["weight"]=(str_replace("l","",$_GET["weight"])*1000);
    if(strstr($_GET["weight"],"k"))$_GET["weight"]=(str_replace("k","",$_GET["weight"])*1000);

	$sql="select distinct name, ( `kh` ) from UserDatabase where name like '%".str_replace("'",null,$_GET["name"])."%' limit 5";
	$res=$db->query($sql);	
	if($res) {
		echo "<h2>Kohlenhydrate bei ".$weight."g</h2><table class='table table-hover table-striped'>";
		while($row=$res->fetch_object()) {
			echo "<tr>
				<td style=width:40%>".$row->name."</td>
				<td style=opacity:.5>(".($row->kh*100)."g / 100g * ".str_replace("'",null,str_replace(",",".",$_GET["weight"]))."g)</td>
				<td style=width:25%;font-weight:bold>&sum; = ".($row->kh * str_replace("'",null,str_replace(",",".",$_GET["weight"])))."g</td>
			</tr>";
		}
		echo "</table>";
	} else {
		echo "No results.";
	}
}
