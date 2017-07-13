<?php
if(isset($_POST["title"])) {
	$dishid=-1;
	$sql="insert into Dish(difficulty,status,title,uid,description,portions,preparing_time_h,cooking_time_h,preparing_time_m,cooking_time_m) values('".$_POST["difficulty"]."','public','".substr($_POST["title"],0,256)."','".$user->getUid()."','".substr($_POST["description"],0,1024)."','".(1+$_POST["portions"]-1)."','".$_POST["preparing_time_h"]."','".$_POST["cooking_time_h"]."','".$_POST["preparing_time_m"]."','".$_POST["cooking_time_m"]."')";
	debug($sql);
	print_r($_POST);
	if($db->query($sql)) {
		$dishid=$db->insert_id;
        echo("<meta http-equiv=refresh content='0,".path."/?site=dishes&subsite=view&id=".$dishid."'>");
		foreach($_POST["ingredient-name"] as $i=>$name) {
            $ke=$_POST["ingredient-ke"][$i];
            
            if(!$user->getUsesKE())$ke=$ke*(10/12);                
            
			$sql="insert into Ingredient(title,ke) values('".$name."','".$ke."')";
			$db->query($sql);
			$sql="insert into DishIngredient(unit_id,dish_id,ingredient_id,amnt) values('".$_POST["ingredient-unit"][$i]."','".$dishid."','".$db->insert_id."','".$_POST["ingredient-amnt"][$i]."')";
			$db->query($sql);
		}
		foreach(array_reverse($_POST["step-title"]) as $i=>$name) {
			$sql="insert into DishStep(title,description,dish_id) values('".$_POST["step-title"][$i]."','".$_POST["step-description"][$i]."','".$dishid."')";
			$db->query($sql);
		}
        


    
        include("lib/libimage.php");
        $uploads_dir = 'cdn/uploads/images';



        foreach ($_FILES["image"]["name"] as $key=>$img) {

            $path = $_FILES['image']['name'][$key];
            $ext = pathinfo($path, PATHINFO_EXTENSION);

            $newname=$uploads_dir."/".uniqid().".".$ext;
            if(!strstr(".php","",$_FILES["image"]["name"]) && !move_uploaded_file($_FILES["image"]["tmp_name"][$key], $newname)) debug("<hr>error uploading ".$_FILES["image"]["name"][$key]."<br>");
            $sql="insert into DishPicture(title,ext,url,dish_id) values('".$_POST["image-title"][$key]."','".$ext."','".createThumbs( $newname, $pathToThumb)."','".$dishid."')";
            $db->query($sql);
        }
    

    } else 
    	debug("ins");
    	$db->error;
    
} else {

    $ke_text=($user->getUsesKE())?t("KE"):t("BE");

    $selectingredientunit="";   
    $row=$db->query("select * from IngredientUnit");
    while($r=$row->fetch_object()) {
        $selectingredientunit.="<option value=".$r->id.">".$r->title."</option>";
    }

    echo "<br><br><h1>".t("Add new Dish")."</h1><form method=post enctype=multipart/form-data>
        <div class='panel panel-body'><input required class=form-control  name=title placeholder='".t("title")."'>
        <input required class=form-control  name=description placeholder='".t("description")."'>
        <input required class=form-control type=number name=portions placeholder='".t("portions")."'><br>
        ".t("preparing_time").":<div class=row style=margin-left:0px;width:100px><div class=col-md-6 style=padding:0>
                <input required style=margin-top:-30px;text-align:center class=form-control value=00 type=number min=0 max=100 name=preparing_time_h placeholder='".t("HH")."'>
            </div><div class=col-md-6 style=padding:0>
                <input required style=margin-top:-30px;text-align:center class=form-control value=00 type=number min=0 max=59 name=preparing_time_m placeholder='".t("MM")."'>
           </div>
        </div>    
        <br>
        ".t("cooking_time").":<div class=row style=margin-left:0px;width:100px><div class=col-md-6 style=padding:0>
                <input required style=margin-top:-30px;text-align:center class=form-control value=00  type=number min=0 max=100 name=cooking_time_h placeholder='".t("HH")."'>
            </div><div class=col-md-6 style=padding:0>
                <input required style=margin-top:-30px;text-align:center class=form-control value=00  type=number min=0 max=59 name=cooking_time_m placeholder='".t("MM")."'>
           </div>
        </div>    

        ".t("Difficulty").':
        <div class="form-group" style=margin:0>
          <div class="col-md-7" style=padding-left:0>
            <div class="radio radio-primary">
              <label>
                <input type="radio" name="difficulty" id="optionsRadios1" value="1" checked="">
                '.t("Easy").'
              </label>
            </div>
            <div class="radio radio-primary">
              <label>
                <input type="radio" name="difficulty" id="optionsRadios2" value="2">
                '.t("Normal").'
              </label>
            </div>
            <div class="radio radio-primary">
              <label>
                <input type="radio" name="difficulty" id="optionsRadios3" value="3">
                '.t("Hard").'
              </label>
            </div>
          </div>
        </div>



        '."<div class=togglebutton>
          <label>
            <input type=checkbox checked> Rezept Veröffentlichen
          </label>
        </div>
        </div>


        <script>function addImage() {\$('#image-input-group').prepend('</div><br><div class=\"panel panel-body\"><input required class=btn type=file name=image[] ><input required  class=form-control name=image-title[] placeholder=Titel>');$.material.init();}$(function() {addImage();});</script>


        <br><h2>".t("Add Images")."</h2><a style=float:right;margin-top:-20px class='btn btn-primary' onclick=\"addImage();\">+ ".t("Add")."</a>
        <div id=image-input-group>
        </div>


        <script>function addIngredient() {\$('#ingredient-input-group').prepend(\"</div><br><div class='panel panel-body'><input required  class=form-control  name=ingredient-name[] placeholder='".t("ingredient name")."'><div class=row><div class=col-md-6><input  required class=form-control name=ingredient-amnt[] placeholder='".t("ingredient amnt")."'></div><div class=col-md-2><select class=form-control required  name=ingredient-unit[]>".$selectingredientunit."</select></div><div class=col-md-4><input class=form-control  required  name=ingredient-ke[] placeholder='".$ke_text."'></div></div>\");$.material.init()}$(function() {addIngredient();});</script>


        <br><h2>".t("Add ingredient")."</h2><a style=float:right;margin-top:-20px class='btn btn-primary' onclick=\"addIngredient();\" class='btn btn-default'>+ ".t("Add")."</a>
        <div id=ingredient-input-group>
        </div>




        <script>function addStep() {\$('#step-input-group').prepend(\"</div><br><div class='panel panel-body'><input required  class=form-control name=step-title[] placeholder='".t("step title")."'><textarea class=form-control name=step-description[] required  placeholder='".t("step description")."'></textarea>\");$.material.init()}$(function() {addStep();});</script>


        <br><h2>".t("Add steps")."</h2><a style=float:right;margin-top:-20px class='btn btn-primary' onclick=\"addStep();\" class='btn btn-default'>+ ".t("Add")."</a>
        <div id=step-input-group>
        </div>


        <input class='btn btn-primary btn-raised'  type=submit>
    </form>";
}
