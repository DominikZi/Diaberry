<?php
function get_dish_picture($id,$size="medium") {
    global $db;
    $res=$db->query("select url, ext from DishPicture where dish_id = '".$id."' limit 1");
    while($row=$res->fetch_object()) {
        return imgpath."/".$row->url."_".$size.".".$row->ext;
    }
}

function the_dish($row) {
    $difficulties=array("N/a","Easy","Normal","Hard");
    ?><div class="media panel panel-body">
	  <div class="media-left">
      	<a  href="?site=dishes&subsite=view&id=<?php echo $row->id;?>">
            <img class="media-object" src="<?php echo get_dish_picture($row->id,"thumb");?>" alt="<?php echo $row->title;?>">   
        </a>
	  </div>
	  <div class="media-body">
	    <a  href="?site=dishes&subsite=view&id=<?php echo $row->id;?>"><h4 class="media-heading"><?php echo $row->title;?></h4></a>
	    <?php echo $row->description;?>
	   	<table width=300 style=margin-top:15px>
	   		<tr><td><?php tt("Portions");?>:<td><td><?php echo $row->portions;?></td></tr>
	   		<tr><td><?php tt("Preparing time");?>:<td><td><?php echo substr($row->preparing_time,3,5);?>h</td></tr>
	   		<tr><td><?php tt("Cooking time");?>:<td><td><?php echo substr($row->cooking_time,3,5);?>h</td></tr>
	   		<tr><td><?php tt("Difficulty");?>:<td><td><?php echo $difficulties[$row->difficulty];?></td></tr>
   		</table>
	  </div>
	</div><?php
}
