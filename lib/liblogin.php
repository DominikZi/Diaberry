<?php
if(!is_file("lib/libhash.php"))require_once "../lib/libhash.php";
else require_once "lib/libhash.php";

function hash_pass($in) {
	return hash("sha512","fuuZzufe44440J(F)Sfjd14b3rry9jUJGF()RUWUTRW=()j900j9GHSEdfsfdsad0m1n1kUhfurz34r3dudIIfdiasuQQy".$in);
}

function sec_to_hour($sec) {
	$sec=$sec/60;
	$hour=0;
	while($sec>=60) {
		$hour++;
		$sec-=60;
	}
	if($sec<10)$bsec="0";else $bsec=null;
	return (1+$hour-1).":".$bsec.round(1+$sec-1);
}

function login($email,$pass) {

	global $db;
	
	$sql="select u.id as uid from User u,UserPassword up where up.uid = u.id and up.password like '".hash_pass($pass)."' and u.email like '".str_replace("'",null,$email)."' and u.email != '' and is_active='1' limit 1";
	$res=$db->query($sql);
	$uid=-1;
	$hash=hash;
	if($res->num_rows){while($row=$res->fetch_object()) {$uid=$row->uid;}}
	if($uid>0) {
		if($db->query("INSERT INTO `UserLogin` (`id`, `uid`, `hash`) VALUES (NULL, '".$uid."',  '".$hash."')")) {
			return true;
		}
	} else {
	}
	
}	

