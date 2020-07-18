<?php
    $host     = "localhost";
    $username = "id14365673_localhost";
    $password = "y)Jl57&V\SlsG^Dy";
    $database = "id14365673_zakat_db";
    $koneksi  = mysqli_connect($host, $username, $password, $database);

    if (! $koneksi) {
        die("Koneksi database gagal: " . mysqli_connect_error());
    }
?>
