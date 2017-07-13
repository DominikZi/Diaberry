<?php
function createThumb( $pathToImage, $pathToThumb, $thumbWidth ) {
	error_reporting(-1);
	if(strstr($pathToImage,".jpg")||strstr($pathToImage,".jpeg")) {
		echo "create thumb at jpeg ".$pathToThumb;			
		// load image and get image size
		$img = imagecreatefromjpeg($pathToImage);
		$width = imagesx( $img );
		$height = imagesy( $img );

		// calculate thumbnail size
		$new_width = $thumbWidth;
		$new_height = floor( $height * ( $thumbWidth / $width ) );

		// create a new temporary image
		$tmp_img = imagecreatetruecolor( $new_width, $new_height );

		// copy and resize old image into new image 
		imagecopyresized( $tmp_img, $img, 0, 0, 0, 0, $new_width, $new_height, $width, $height );

		// save thumbnail into a file
		imagejpeg( $tmp_img, "$pathToThumb" );
	} elseif(strstr($pathToImage,".png")) {
		echo "create thumb at png ".$pathToThumb;			
		// load image and get image size
		$img = imagecreatefrompng($pathToImage);
		$width = imagesx( $img );
		$height = imagesy( $img );

		// calculate thumbnail size
		$new_width = $thumbWidth;
		$new_height = floor( $height * ( $thumbWidth / $width ) );

		// create a new temporary image
		$tmp_img = imagecreatetruecolor( $new_width, $new_height );

		// copy and resize old image into new image 
		imagecopyresized( $tmp_img, $img, 0, 0, 0, 0, $new_width, $new_height, $width, $height );

		// save thumbnail into a file
		if(!imagepng( $tmp_img, $pathToThumb ))echo"<br>error: no thumb written<br>";
	}
	else echo "no thumb created";
}
function createThumbs( $pathToImage, $pathToThumb, $thumbWidth ,$path="cdn/uploads/images/" , $ret_extension=false) {
    $info = pathinfo( $pathToImage );
    $no_extension =  basename( $file, '.'.$info['extension'] );
    $uniqid=rand(0,9e9).uniqid();

    $thumb=$path.$uniqid.'_thumb.'.$info['extension'];
    $xthumb=$path.$uniqid.'_xthumb.'.$info['extension'];
    $large=$path.$uniqid.'_large.'.$info['extension'];
    $xlarge=$path.$uniqid.'_xlarge.'.$info['extension'];
    $medium=$path.$uniqid.'_medium.'.$info['extension'];
    createThumb( $pathToImage, $xthumb, 50 );
    createThumb( $pathToImage, $thumb, 250 );
    createThumb( $pathToImage, $medium, 500 );
    createThumb( $pathToImage, $large, 1200 );
    createThumb( $pathToImage, $xlarge, 1600 );
    unlink($pathToImage);
    
    if($ret_extension)$uniqid.=".".$info['extension'];

    return $uniqid;
}
