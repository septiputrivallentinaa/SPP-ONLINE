<?php
$host = "localhost";
$user = "root";
$pass = ""; 
$db   = "db_spp_septi";

$koneksi = mysqli_connect($host,$user,$pass,$db);

if(mysqli_connect_errno()){
    echo "Gagal koneksi ke database: " . mysqli_connect_error();
}
?>