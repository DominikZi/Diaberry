<?php
foreach($_GET as $index=>$val) {
    $_GET[$index]=str_replace("'",null,$val);
}
foreach($_POST as $index=>$val) {
    $_POST[$index]=str_replace("'",null,$val);
}
