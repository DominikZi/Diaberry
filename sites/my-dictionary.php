<?php
if(isset($_POST["name"])) {
	$success=($db->query("insert into UserDatabase(`name`,`kh`) values('".$_POST["name"]."','".(str_replace(",",".",$_POST["kh"]) / 100 )."')"))?true:false;
}
?>
<br>
<br>
<form method=post id="ingredient-input-group">
    <div class="panel panel-body">
		<h2><?php tt("Add Entry");?></h2>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group is-empty">
                    <input required="" class="form-control" name="name" placeholder="<?php tt("Description");?>">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group is-empty">
                    <input class="form-control" required="" name="kh" placeholder="<?php tt("KH (100g)");?>">
                </div>
            </div>
        </div>
		<input type=submit class="btn btn-primary btn-raised" value="<?php tt("Save");?>">
    </div>
</form>

<div class="panel panel-body">
	<h2><?php tt("Search");?></h2>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group is-empty">
                <input required="" onkeyup="$('#searchresults-my-dictionary').load('<?php echo path;?>ajax/handler.php?action=search_my_database&weight='+$('#searchforweightmydb').val()+'&name='+$('#searchfornamemydb').val()+'');" class="form-control" id=searchfornamemydb name="name" placeholder="<?php tt("Enter keywords");?>">
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group is-empty">
                <input class="form-control" onkeyup="$('#searchresults-my-dictionary').load('<?php echo path;?>ajax/handler.php?action=search_my_database&weight='+$('#searchforweightmydb').val()+'&name='+$('#searchfornamemydb').val()+'');" id="searchforweightmydb" name="kh" value="100g" placeholder="<?php tt("Calculate for _ g/ml");?>">
            </div>
        </div>
    </div>
</div>


<div class="panel panel-body">
	<div style="padding:0 5px">
		<div class="" id="searchresults-my-dictionary">
		
		</div>
    </div>
</div>

