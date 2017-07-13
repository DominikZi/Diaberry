<?php
foreach(glob("classes/*.php") as $class) {
    require_once($class);
}
