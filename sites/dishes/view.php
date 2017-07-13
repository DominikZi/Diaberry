<?php 
if($_GET["action"]=="set_status" && is_numeric($_GET["id"]) && $db->query("update Dish set status='".$_GET["status"]."' where id='".$_GET["id"]."' and uid='".$user->getUid()."' and status != 'trash'")->num_rows)
    echo "<div class='alert alert-success'>".t("Post status was changed to ".$_GET["status"].".")."</div>";
echo "update Dish set status='".$_GET["status"]."' where id='".$_GET["id"]."' and uid='".$user->getUid()."' and status != 'trash'";
$res=$db->query("select Dish.status as dstatus, Dish.*,DishPicture.dish_id, DishPicture.url, DishPicture.ext from Dish,DishPicture where Dish.id = '".$_GET["id"]."' and ( (uid='".$user->getUid()."' and status='private') or status='public' ) and Dish.id=DishPicture.dish_id limit 1");
if($res->num_rows<1) {
    echo "<br><br><h1>".t("Dish not found")."</h1><p>".t("We are sorry, but either the post was deleted, never existed or you are not allowed to view it anymore").".</p>";
} else
while($row=$res->fetch_object()) {
	?>	
    </div>
    <div class=container-fluid style="height:300px;background:url('<?php echo imgpath."/".$row->url."_xlarge.".$row->ext;?>'),url('<?php echo imgpath."/".$row->url."_medium.".$row->ext;?>'), url('<?php echo imgpath."/".$row->url."_xthumb.".$row->ext;?>');background-size:cover;background-position:center center"></div>
    <div class=container style="margin-top:-200px">
	<div class=dish-container>
	    <div class="jumbotron">


            <div class="dropdown" style=float:right>
              <button class="btn btn-default btn-raised dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                <i class="fa fa-ellipsis-v" aria-hidden="true"></i>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="<?php echo get_nav(array("site"=>"dishes","subsite"=>"my-dishes","action"=>"delete","id"=>$row->id)); ?>"><?php tt("Delete"); ?></a></li>
                <?php
                    $newstatus=($row->dstatus=="public")?"private":"public";
                ?>
                <li><a href="<?php echo get_nav(array("site"=>"dishes","subsite"=>"view","action"=>"set_status","id"=>$row->id,"status"=>$newstatus)); ?>"><?php echo($row->dstatus=="public")?t("Make private"):t("Make public"); ?></a></li>
              </ul>
            </div>


	    <h1 class="media-heading"><?php echo $row->title;?></h1><br>
	    <?php echo $row->description;
        $difficulties=array(t("N/a"),t("Easy"),t("Normal"),t("Hard"));?><br><br>
	   	<table class=table>
	   		<tr><td><?php tt("Portions");?>:<td><td><?php echo $row->portions;?></td></tr>
	   		<tr><td><?php tt("Preparing time");?>:<td><td><?php echo substr($row->preparing_time,3,5);?>h</td></tr>
	   		<tr><td><?php tt("Cooking time");?>:<td><td><?php echo substr($row->cooking_time,3,5);?>h</td></tr>
	   		<tr><td><?php tt("Difficulty");?>:<td><td><?php echo $difficulties[$row->difficulty];?></td></tr>
   		</table>
   		</div><br>

   		<div class=dish-ingredients><h2><?php tt("Ingredients");?></h2>
        <div class="panel panel-body">
       		<table class="table table-hover table-striped">
       			<tr><td><?php tt("Ingredient");?></td><td><?php tt("Amount (g/ml/pcs)");?></td><td><?php echo ($user->getUsesKE())?t("KE"):t("BE");?></td></tr><?php
			    $res2=$db->query("select * from DishIngredient di,Ingredient i where i.id = di.ingredient_id and dish_id = '".$_GET["id"]."'");$sum=0;
			    while($row2=$res2->fetch_object()) {$i++;
				    ?>	
				    <tr><td><?php echo $row2->title;?></td><td><?php echo $row2->amnt;?></td><td><?php

                    $ke=$row2->ke;
                    if(!$user->getUsesKE())$ke=$ke/(10/12);              
                         echo $ke;?></td></tr>

				    <?php $sum+=$ke;
			    }
		    ?><tr><td><b><?php tt("Sum");?>:</b></td><td></td><td></b><?php echo $sum;?></b></td></tr></table>
       		</div>
   		</div>
        <h2><?php tt("Steps");?></h2>
        <div class="panel panel-body">
       		<div class=dish-steps>
       		<?php $i=0;
			    $res2=$db->query("select * from DishStep where dish_id = '".$_GET["id"]."'");
			    while($row2=$res2->fetch_object()) {$i++;
				    ?>	
				    <div class=dish-step>
					    <h3><?php echo $i.". ".$row2->title;?></h3>
					    <p><?php echo $row2->description;?></p>
				    </div>
				    <?php 
			    }
		    ?>
       		</div>
   		</div>
            

<script>
function commentSubmit() {
    $.post( "<?php echo path;?>/ajax/handler.php?action=addcomment", { dish_id:"<?php echo $row->dish_id;?>",  uid: "<?php echo $user->getUid();?>", comment: $("#thecomment").val() } );

    var currentdate = new Date(); 
    var datetime = currentdate.getDate() + "."
                + (currentdate.getMonth()+1)  + "." 
                + currentdate.getFullYear() + " "  
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes();
    $("#comment-section").prepend("<div class='panel'><div class=panel-heading><?php echo $user->getName().", ".date("d.m.y H:i");?> </div><div class=panel-body>"+$("#thecomment").val()+"</div></div>");
    $("#thecomment").val("").attr("placeholder","<?php tt("Leave another comment");?>");
}
</script>

    

   		<div class=dish-comments><h2><?php tt("Comments");?></h2><div class="panel panel-body"><textarea style="margin-top:-25px" class=form-control placeholder="<?php tt("Leave a comment");?>" rows="" id=thecomment cols=""></textarea>
   		<a onclick="commentSubmit();" class="btn btn-raised btn-default" onclick="">Leave comment</a></div>
   		</div><div id=comment-section><?php
            $res3=$db->query("select User.fname, User.lname, DishComment.comment, DishComment.ts from DishComment, User where User.id = DishComment.uid and DishComment.dish_id = ".$row->dish_id." order by DishComment.ts desc");
            while($row3=$res3->fetch_object()) {
                echo "<div class='panel'><div class=panel-heading>".$row3->fname." ".$row3->lname.", ".date("d.m.y H:i",strtotime($row3->ts))."</div><div class=panel-body>".$row3->comment."</div></div>";
            }
		 ?></div>
	  </div>
	</div>
	<?php 
}
?>
