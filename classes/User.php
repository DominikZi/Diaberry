<?php
class User {
    public function __construct($hash) {
        global $db;
        $res=$db->query("select uses_ke,uid,fname,lname, hash from UserLogin ul, User u where ul.hash = '".$hash."' and ul.uid=u.id limit 1");
        if($res->num_rows) {
            while($row=$res->fetch_object()) {
                $this->uid=$row->uid;
                $this->uses_ke=$row->uses_ke;
                $this->fname=ucfirst($row->fname);
                $this->lname=ucfirst($row->lname);
            }
        }
    }
    public function getUid() {
        return $this->uid;
    }
    public function getName() {
        return $this->fname." ".$this->lname;
    }
    public function getUsesKE() {
        return $this->uses_ke;
    }
}
