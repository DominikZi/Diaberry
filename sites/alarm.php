<br><h1><?php tt("Add alarm");?></h1><form class="panel panel-body" method=post>
    <div class=row>
        <div class=col-md-2>
            <p><?php tt("Every day at");?></p>
        </div>
        <div class=col-md-5>
            <p><?php tt("Repeat weekly on these days");?></p>
        </div>
        <div class=col-md-5>
            <p><?php tt("Message");?></p>
        </div>
    </div>
    <div class=row>
        <div class=col-md-2>
            <input class=form-control required min=0 max=23 type=number name=time_h placeholder="<?php echo("23");?>" style=text-align:center;display:inline-block;width:40px;float:left>
            <input class=form-control required min=0 max=59 type=number name=time_m placeholder="<?php echo("59");?>" style=text-align:center;display:inline-block;width:40px;float:left;margin-top:-35px;>
        </div>
        <div class="checkbox-float form-group col-md-5">
          <div class="checkbox" style="margin-top:-5px;">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on1> <?php tt("Mo");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on2> <?php tt("Tu");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on3> <?php tt("We");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on4> <?php tt("Th");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on5> <?php tt("Fr");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on6> <?php tt("Sa");?> | 
            </label>
          </div> 
          <div class="checkbox">
            <label> 
              <input checked="" type="checkbox" value=1 name=repeat_on7> <?php tt("Su");?> 
            </label>
          </div>
        </div>
        <div class=col-md-5>
            <input class=form-control name=msg  required placeholder="<?php tt("The message which should be send to you");?>">
        </div>
    </div>
    <input type=submit value="<?php tt("Add alarm");?>" class="btn btn-raised btn-primary">
</form>
<style>
.checkbox-float  .checkbox {
    float:left;
    display:inline-block;
    margin-right:8px;
} .bold {
    font-weight:bold
} .disabled {
    opacity:.2;
} .btn-wee {
    padding-top:20px !important
}   
</style>
<?php
if(isset($_POST["msg"])) {
    $db->query("INSERT INTO `Alarm` (`id`, `uid`, `time_h`,`time_m`, `msg`, `enabled`, `repeat0`, `repeat1`, `repeat2`, `repeat3`, `repeat4`, `repeat5`, `repeat6`) VALUES (NULL, '".$user->getUid()."', '".$_POST["time_h"]."', '".$_POST["time_m"]."', '".str_replace("'","",$_POST["msg"])."', '1', '".(1+str_replace("'","",$_POST["repeat_on1"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on2"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on3"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on4"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on5"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on6"])-1)."', '".(1+str_replace("'","",$_POST["repeat_on7"])-1)."')");
}

$res=$db->query("select * from Alarm where uid = '".$user->getUid()."'");
if($res) {
    while($row=$res->fetch_object()) {
        if($row->time_m<10)$m_leading_zero="0";else $m_leading_zero="";
        if($row->time_h<10)$h_leading_zero="0";else $h_leading_zero="";
        echo "<div class='panel panel-body'>
        <div style=float:right class=togglebutton>
          <label>
            <input type=checkbox checked> 
          </label>
        </div>
        <h1 style=margin-top:5px;padding-bottom:10px;>".$h_leading_zero.$row->time_h.":".$m_leading_zero.$row->time_m." ".tid(1135)."</h1><p style=margin-top:-20px>".$row->msg."</p>";
        $weekdays=array(t("Mo"),t("Tu"),t("We"),t("Th"),t("Fr"),t("Sa"),t("Su"));
        for($i=0;$i<7;$i++) {
            $r="repeat".$i;
            if($row->$r =="1") $class=" class='btn-primary"; else $class=" class='disabled";
            echo "<span $class btn btn-default btn-wee disabled btn-sm btn-fab '>".$weekdays[$i]."</span> ";
        }
        echo"</div>";
    }
} else {
    tt("You don't have created any Alarms yet.");
}
?>










































