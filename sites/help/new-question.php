<?php if(isset($_POST["question"])) {?>
<br><h1><?php tt("Help Center");?></h1>
<?php 
if($db->query("INSERT INTO `Help` (`id`, `parent`, `uid`, `ts`, `text`) VALUES (NULL, '0', '".$user->getUid()."', CURRENT_TIMESTAMP, '".$_POST["question"]."')")) {
    tt("Your question was submitted. You'll be notified when your question gets answered.");
}?>
<?php
}else {?>
<br><h1><?php tt("Help Center");?></h1>
<form class="panel panel-body" method=post>
<b><?php tt("Ask a question");?></b>
<textarea class=form-control name=question placeholder="<?php tt("Please type in your question. Try to be as precise as possible.");?>"></textarea>
<input type=submit class="btn btn-raised btn-primary" value="<?php tt("Ask question");?>">
</form><?php }?>
