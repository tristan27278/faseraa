<?php
session_start();
include "../koneksi.php";

if (!isset($_SESSION['login']) || $_SESSION['role'] != 'admin') {
    header("Location: ../login.php");
    exit;
}

$id = $_GET['id'];

mysqli_query($koneksi,"DELETE FROM laporan WHERE id_user='$id'");

mysqli_query($koneksi,"DELETE FROM users WHERE id='$id'");

header("Location: data_siswa.php");
exit;
?>