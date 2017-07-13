<?php
function kbe($ke) {
	//automaticly returns ke or be when ke is passed
	if(pref("use_ke")=="1") {
		return $ke;
	} else {
		return calc_ke2be($ke);
	}
}

function calc_gramm2ke($gramm) {
	return($gramm*10);
}

function calc_gramm2be($ke) {
	return($gramm*12);
}
