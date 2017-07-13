<?php
function generateRandomPassword( $length = 8, $chars = '!!abcdefghijk!=mnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789' ) {
    return substr( str_shuffle( $chars ), 0, $length );
}
