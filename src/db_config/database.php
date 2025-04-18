<?php 

// $bag=mysqli_connect("localhost","root","","eticaret");


// Veritabanı bağlantı bilgileri
$host = "localhost";
$username = "root";
$password = "";
$database = "eticaret";

// Bağlantı oluşturma
$bag = new mysqli($host, $username, $password, $database);

// Bağlantı kontrolü
if ($bag->connect_error) {
    die("Veritabanı bağlantısı başarısız: " . $bag->connect_error);
}

// Karakter setini ayarlamak da iyi bir uygulamadır
$bag->set_charset("utf8mb4");
?>
