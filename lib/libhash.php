<?php
function random_hash() {
	return hash("sha512",rand(0,9e9).time()."lfjjasdfjweqrjfjewqfojiewqjfiwoijfewojiwfeiojweijofwiojfweijofweojikjh");
}
