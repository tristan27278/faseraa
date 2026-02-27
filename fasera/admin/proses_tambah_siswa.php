<?php
session_start();
include "../koneksi.php";

if ($_SESSION['role'] != 'admin') {
    header("Location: ../login.php");
    exit;
}

$nama     = $_POST['nama'];
$username = $_POST['username'];
$nis      = $_POST['nis'];
$kelas    = $_POST['kelas'];
$password = $_POST['password'];

$role = "user";

mysqli_query($koneksi,
"INSERT INTO users (nama, username, nis, kelas, password, role)
VALUES ('$nama','$username','$nis','$kelas','$password','$role')"
);

header("Location: data_siswa.php");