<?php
function t($str,$r=false) {
    global $db;
    // example use:  echo t("your password has been changed. you can now ###loginlink###log in</a>",array("loginlink"=>"?site=login"));
    // or simply: echo t("hw");

    if(count($r)) {
        foreach($r as $name=>$href) {
            $str=str_replace("###","</a>",str_replace("###".$name."###","<a href='".$href."'>",$str));
        }
    }

    $res=$db->query("select de as str from Translation where en = '".str_replace("'","\'",$str)."' limit 1");
    if($res->num_rows) {
        while($row=$res->fetch_object()) {
            if(strlen($row->str))
                $str=utf8_encode($row->str);
        }
    } else $db->query("insert into Translation(en,de) values('".str_replace("'","\'",$str)."','')");

	return $str;
}

function tid($str) {
    global $db;

    $res=$db->query("select de as str from Translation where id = '".str_replace("'","\'",$str)."' limit 1");
    if($res->num_rows) {
        while($row=$res->fetch_object()) {
            if(strlen($row->str))
                $str=utf8_encode($row->str);
        }
    } 
	return $str;
}

function tt($str,$r=false) {
    echo t($str,$r);
}

function ttid($str) {
    echo tid($str);
}

