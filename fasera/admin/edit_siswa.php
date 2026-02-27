<?php
session_start();
include "../koneksi.php";

if (!isset($_SESSION['login']) || $_SESSION['role'] != 'admin') {
    header("Location: ../login.php");
    exit;
}

$id = $_GET['id'];

$data = mysqli_fetch_assoc(
    mysqli_query($koneksi, "SELECT * FROM users WHERE id='$id'")
);

if(isset($_POST['simpan'])){

    $nama = $_POST['nama'];
    $username = $_POST['username'];
    $nis = $_POST['nis'];
    $kelas = $_POST['kelas'];

    mysqli_query($koneksi,
        "UPDATE users SET
        nama='$nama',
        username='$username',
        nis='$nis',
        kelas='$kelas'
        WHERE id='$id'"
    );

    header("Location: data_siswa.php");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Siswa</title>
</head>

<body>

<h2>Edit Data Siswa</h2>

<form method="POST">

    Nama:<br>
    <input type="text" name="nama" value="<?= $data['nama']; ?>" required><br><br>

    Username:<br>
    <input type="text" name="username" value="<?= $data['username']; ?>" required><br><br>

    NIS:<br>
    <input type="text" name="nis" value="<?= $data['nis']; ?>" required><br><br>

    Kelas:<br>
    <input type="text" name="kelas" value="<?= $data['kelas']; ?>" required><br><br>

    <button type="submit" name="simpan">Simpan</button>

</form>

</body>
</html>