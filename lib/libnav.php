<?php
function get_nav($nav) {
    $i=0;
    $out="?";
    foreach($nav as $index=>$val) {
        if($i=0)$i=1;else $out.="&";
        $out.=$index."=".$val;    
    }
    return $out;
}
