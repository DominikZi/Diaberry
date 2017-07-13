<br><h1><?php tt("Help Center");?></h1>
<form action="<?php echo get_nav(array("site"=>"help"));?>" method=post>
<input name=help_q class=form-control placeholder="<?php tt("Search for Threads");?>">
</form>
<hr>
<?php
if(isset($_POST["help_q"])) {
    echo "<h2>".t("Unfortunately there were no results")."</h2><p>".t("Sie können ###here###hier### eine neue Frage stellen.",array("here"=>get_nav(array("site"=>"help","subsite"=>"new-question"))))."</p>";
} elseif(is_numeric($_GET["view_id"])) {
    if(isset($_POST["answer"])) {
        if($db->query("INSERT INTO `Help` (`id`, `parent`, `uid`, `ts`, `text`) VALUES (NULL, '".$_GET["view_id"]."', '".$user->getUid()."', CURRENT_TIMESTAMP, '".$_POST["answer"]."')")) {
        
        }
    }
    $res=$db->query("SELECT * FROM `Help`, User where Help.id='".$_GET["view_id"]."' and User.id=Help.uid limit 1");
    while($row=$res->fetch_object()) {
        echo '<div class="panel panel-primary"><div class=panel-heading>'.$row->fname." ".$row->lname.", ".date("d.m.y H:i",strtotime($row->ts)).'</div><div class=panel-body>
            '.$row->text.'
        </div></div>';
    }
    echo "<h2>".t("Leave an answer")."</h2><div class='panel panel-body'>
       <form method=post> <textarea style=margin-top:-25px name=answer placeholder='".t("Please type in your answer. Try to be as precise as possible.")."' class=form-control></textarea>
        <input class='btn btn-raised btn-default' type=submit value='".t("Post answer")."'></form>
    </div>";
    $res=$db->query("SELECT * FROM `Help`, User where Help.parent='".$_GET["view_id"]."' and User.id=Help.uid order by ts desc limit 100");
    while($row=$res->fetch_object()) {
        echo '<div class="panel"><div class=panel-heading>'.$row->fname." ".$row->lname.", ".date("d.m.y H:i",strtotime($row->ts)).'</div><div class=panel-body>
            '.$row->text.'
        </div></div>';
    }
} else {
    echo "<h3>".t("Recently asked questions").":</h3>";
    $res=$db->query("SELECT * FROM `Help` where parent = '0' order by ts desc limit 20");
    while($row=$res->fetch_object()) {
        echo '<a href="'.get_nav(array("site"=>"help","view_id"=>$row->id)).'"><div class=well>
            <span class="badge" style=float:right>'.$db->query("select * from Help where parent='".$row->id."'")->num_rows.'</span>
            '.$row->text.'
        </div></a>';
    }
}
?>
