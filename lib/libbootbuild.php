<?php
function buildpanel($icon,$heading,$body) {
	echo "<div class='panel panel-default'>
	<div class=panel-heading><span class='glyphicon glyphicon-".$icon."' style=float:right;opacity:.5></span>".$heading."</div>
	<div class=panel-body>	
	$body
	</div>
	</div>";
}
?>
