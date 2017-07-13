<?php
if(debug) {
    function debug($msg,$lvl=0) {
        if($lvl>=debug_lvl)echo "<tt class=debug-message style=display:block;margin:4px;background:black;color:#0f0>".$msg."</tt>";
    }
}
else {
    function debug($msg,$lvl) {}
}
