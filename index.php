<?php

if (isset($_GET['key']) && !empty($_GET['key'])) {
    $key = ""; // insert private key
    if ($key == $_GET['key']) {
        if (isset($_GET['action']) && !empty($_GET['action'])) {
            $myfile = fopen("status.txt", "w") or die("Unable to open file!");
            $txt = $_GET['action'];
            fwrite($myfile, $txt);
            fclose($myfile);
        }
    }else{
        die("Wrong key!");
    }
}
$file = fopen("status.txt", "r") or die("Unable to open file!");
echo fread($file, filesize("status.txt"));
fclose