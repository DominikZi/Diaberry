<?php
include("../bin/header.php");
include("../bin/dbcon.php");
include("../lib/libtranslate.php");

if(strlen($_POST["hash"])<60)die("im stupid");
$uid=$db->query("select uid from UserLogin where hash='".$_POST["hash"]."%' limit 1")->fetch_object()->uid;


$out=array();
$q="%".str_replace(" ","%",$_POST["q"])."%";
$sql="select title,description as descr, concat( \"".path."/?site=dishes&subsite=view&id=\",id) as url from Dish where ( Dish.title like '".$q."' or Dish.description like '".$q."' ) and ( title != '' and status = 'public' ) union select concat('Diary',DiaryEntry.ts) as title,DiaryEntry.notice as descr, concat( \"".path."/?site=diary&subsite=view&id=\",DiaryEntry.id) as url from DiaryEntry where ( DiaryEntry.notice like '".$q."' and DiaryEntry.uid= '".$uid."' ) ";
$res=$db->query($sql);
if($res->num_rows)while($row=$res->fetch_object()) {
    $out[]=$row;
    $out->title="4";
}
echo json_encode($out);
