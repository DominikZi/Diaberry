<?php
include("thumb_generate.php");


$sucess=false;

$uploads_dir = '../cdn/uploads/images';

$tmp_name = $_FILES["file"]["tmp_name"];
$name = basename($_FILES["file"]["name"]);
$newname="$uploads_dir/".uniqid()."_$name";
$xthumb="$uploads_dir/xthumb_".uniqid()."_$name";
$thumb="$uploads_dir/thumb_".uniqid()."_$name";
$large="$uploads_dir/large_".uniqid()."_$name";
if (move_uploaded_file($tmp_name, $newname) && make_thumb($newname, $xthumb, 50) && make_thumb($newname, $thumb, 200) && make_thumb($newname, $large, 1000))
    $sucess=true;


// $output will be converted into JSON

if ($sucess) {
	$output = array("success" => true,"message" => "Success!");
} else {
	$output = array("success" => false, "error" => "Failure!");
}



if (($iframeId = (int)$_GET["_iframeUpload"]) > 0) { //old browser...

	header("Content-Type: text/html; charset=utf-8");

?>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<script type="text/javascript">

var data = {
	id: <?php echo $iframeId; ?>,
	type: "json",
	data: <?php echo json_encode($output); ?>
};

parent.simpleUpload.iframeCallback(data);

</script>
</body>
</html>
<?php

} else { //new browser...

	header("Content-Type: application/json; charset=utf-8");
	echo json_encode($output);

}


