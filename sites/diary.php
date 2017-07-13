<br><h1><?php tt("Diary");?></h1>

<form method=post enctype="multipart/form-data" class="panel panel-body">
    <div class=col-md-12><input  autocomplete="off" placeholder="<?php tt("Title");?>" name="title" class=form-control>
    </div>
    <div class=col-md-2>
    <input  autocomplete="off" placeholder="<?php tt("Sugar value");?>" name="sugar_value" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php echo($user->getUsesKE())?t("KE"):t("BE");?>" name="ke" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php echo($user->getUsesKE())?t("KE factor"):t("BE factor");?>" name="ke_factor" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php tt("Bolus");?>"  name="bolus" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php tt("Basis");?>" name="basis" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php tt("Korrektur");?>" name="korrektur" class=form-control>
    </div><div class=col-md-2><input  autocomplete="off" placeholder="<?php tt("Time");?>" name="time" value="<?php  echo date("H:i"); ?>" class=form-control>
    </div><div class=col-md-6><input  autocomplete="off" type=file name=img class="btn btn-primary btn-raised " style=max-width:290px><div style="margin-top:-5px;margin-left:3px; color:lightgray"><?php tt("Click above to add a picture");?></div>
    </div><div class=col-md-6>

        <br>
        <div style=margin-top:10px; class="togglebutton">
          <label>
            <input  autocomplete="off" type="checkbox" name=is_workday value=1 checked> <?php tt("Workday");?>
          </label>
        </div>

    </div><div class=col-md-12><input  autocomplete="off" placeholder="<?php tt("Notice");?>" name="notice" class=form-control>
    </div><div class=col-md-12> <input  autocomplete="off" type=submit value="<?php tt("Save");?>" class='btn btn-primary btn-raised'>
    </div>
</form>


<div class=row>
    <div class=col-md-6>
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
    </div>
    <div class=col-md-6>
        <div class="panel panel-body">
	        <div style="padding:0 5px">
		        <div class="" id="searchresults-my-dictionary">
		
		        </div>
            </div>
        </div>
    </div>

</div>
    <div class="panel panel-body">
        <h1><?php tt("Stats (last 7 days)");?></h1>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <div id="chart_div"></div>
        <script>
            google.charts.load('current', {packages: ['corechart', 'line']});
            google.charts.setOnLoadCallback(drawLogScales);

            function drawLogScales() {
                  var data = new google.visualization.DataTable();
                  data.addColumn('number', 'X');
                  <?php /*for($i=0;$i<0;$i++) {
                     echo "data.addColumn('number', '".$i." days ago');";
                  } */?>
                    data.addColumn('number', 'sugar_value');

                  data.addRows([
                    <?php
                        $res=$db->query("select sugar_value,ts from DiaryEntry where status!='trash' and  uid = '".$user->getUid()."'");
                        while($row=$res->fetch_object()) {
                            echo "[".date(  "H",   ( time() - strtotime($row->ts) )    ).",".floatval($row->sugar_value)."],";
                        }

                    ?>[0,0]
                  ]);

                  var options = {
                    hAxis: {
                      title: '<?php tt("Time of day");?>',
                      logScale: true
                    },
                    vAxis: {
                      title: '<?php tt("Sugar value");?>',
                      logScale: false
                    },
                    colors: ['#a52714', '#097138']
                  };

                  var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
                  chart.draw(data, options);
                }
        </script>

    </div>
</div>

<div class=container>

<?php
if(isset($_POST["sugar_value"])) {
    
    //proccess the image
    include("lib/libimage.php");
    $uploads_dir = 'cdn/uploads/images';

    $path = $_FILES['img']['name'];
    $ext = pathinfo($path, PATHINFO_EXTENSION);


    $uniq=uniqid();
    $newname=$uploads_dir."/".$uniq.".".$ext;

    if(!strstr(".php","",$_FILES["img"]["name"]) && !move_uploaded_file($_FILES["img"]["tmp_name"], $newname)) echo("<hr>error uploading ".$_FILES["img"]["name"]." ".$_FILES["img"]["error"]."<br>");
        
    //create thumbs
    $newname=createThumbs($newname,$uploads_dir."/".$uniq."_thumb.".$ext, 700,"cdn/uploads/images/" ,true);



    //calc units
    if(!$user->getUsesKE())$_POST["ke"]=$_POST["ke"]*10/12;
    
    //store data entry
    if($db->query("INSERT INTO `DiaryEntry` (`korrektur`,`title` , `img_url`,`time`,`id`, `uid`, `ts`, `notice`, `status`, `is_workday`, `sugar_value`, `ke`, `ke_factor`, `bolus`, `basis`) VALUES ('".intval($_POST["korrektur"])."', '".$_POST["title"]."','".$newname."','".$_POST["time"]."', NULL, '".$user->getUid()."', CURRENT_TIMESTAMP, '".$_POST["notice"]."', 'private', '".(1+$_POST["is_workday"]-1)."', '".str_replace(",",".",$_POST["sugar_value"])."', '".str_replace(",",".",$_POST["ke"])."', '".str_replace(",",".",$_POST["ke_factor"])."', '".str_replace(",",".",$_POST["bolus"])."', '".str_replace(",",".",$_POST["basis"])."')"))
        echo "<div class='alert alert-success'>".t("Entry was saved.")."</div>";
    else echo $db->error;
}


$res=$db->query("select avg(sugar_value) as sugar_value,sum(ke) as ke_sum, avg(ke_factor) as ke_factor_avg,sum(bolus) as bolus,sum(basis) as basis from DiaryEntry where uid = '".$user->getUid()."' and status != 'trash'");
while($row=$res->fetch_object()) {

    $sum_ke_text=($user->getUsesKE())?t("Sum KE"):t("Sum BE");
    $avg_ke_factor_text=($user->getUsesKE())?t("Average KE factor"):t("Average BE factor");
    $ke_text=($user->getUsesKE())?t("KE"):t("BE");
    $ke_factor_text=($user->getUsesKE())?t("KE factor"):t("BE factor");


    $ke_sum=$row->ke_sum;
    if(!$user->getUsesKE())$ke_sum=(intval($ke_sum)/(10/12));


    echo "<div class='panel panel-body'>
        <h3>".t("Total today").":</h3>
        <table class='table'>
            <tr><td>".t("Average Sugar value")."</td><td>".$row->sugar_value."</td></tr>
            <tr><td>".$sum_ke_text."</td><td>".$ke_sum."</td></tr>
            <tr><td>".$avg_ke_factor_text."</td><td>".$row->ke_factor_avg."</td></tr>
            <tr><td>".t("Sum Bolus")."</td><td>".$row->bolus."</td></tr>
            <tr><td>".t("Sum Basis")."</td><td>".$row->basis."</td></tr>
        </table>
    </div>";
}

$type_of_day=array(t("Holdiday"),t("Workday"));
$res=$db->query("select * from DiaryEntry where uid = ".$user->getUid()." and status != 'trash' order by ts desc");
while($row=$res->fetch_object()) {
    
    $ke=$row->ke;
    if(!$user->getUsesKE())$ke=$ke/(10/12);

    echo "<div class='panel' onclick=\"\$(this).find('.panel-body').fadeIn();\$(this).find('.panel-footer').fadeIn();\"><div class='panel-heading'>".$row->title."<span style=opacity:.5> - (".date("d.m.y H:i",strtotime($row->ts)).")</spAN></div><div class='panel-body' style=display:none>
            <div class=row><div class=col-md-3><a title='".imgpath."/".str_replace(".","_large.",$row->img_url)."'><div class=diary-img style='background:url(".imgpath."/".str_replace(".","_thumb.",$row->img_url)."),url(".imgpath."/".str_replace(".","_xthumb.",$row->img_url)."),url(".path."/cdn/images/diary_bg.jpeg);' width=100%></div></a></div><div class=col-md-9><table class='table nofirstborder'>
            <tr><td>".t("Sugar value")."</td><td>".$row->sugar_value."</td></tr>
            <tr><td>".$ke_text."</td><td>".$ke." [".t("Factor")." ".$row->ke_factor."]</td></tr>
            <tr><td>".t("Bolus")."</td><td>".$row->bolus."</td></tr>
            <tr><td>".t("Basis")."</td><td>".$row->basis."</td></tr>
            <tr><td>".t("Time")."</td><td>".$row->time." Uhr (".$type_of_day[(1+$row->is_workday-1)].")</td></tr>
        </table></div></div>
        </div>
        <div class='panel-footer' style=display:none>".t("Notice").": ".$row->notice."</div>
    </div>";
}

?>
<style>
.nofirstborder tr:first-child td {
   border:none !important;
}
.nofirstborder {
    margin-bottom:-5px;
}
</style>
