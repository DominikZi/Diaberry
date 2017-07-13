<?php

// create curl resource
$ch = curl_init();

// set url
curl_setopt($ch, CURLOPT_URL, "http://www.mynetdiary.com/openCatalogFindFoods.do?beanInputString=".str_replace(" ","+",$_POST["q"])."&detailsExpected=true&findContributed=true");

//return the transfer as a string
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

// $output contains the output string
$output = curl_exec($ch);

// close curl resource to free up system resources
curl_close($ch); 


$r=( json_decode(str_replace("OK `+`json ","",$output),1));
$entries=$r["entries"];

$food=array();

foreach($entries as $entry) {
    $food[]=array("title"=>str_replace("(contributed)","",$entry["desc"]),"details"=>$entry["details"]);
}

echo json_encode($food);
