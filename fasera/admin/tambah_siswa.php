<?php
session_start();
include "../koneksi.php";

if (!isset($_SESSION['login']) || $_SESSION['role'] != 'admin') {
    header("Location: ../login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tambah Akun Siswa</title>

    <style>
        body{
            font-family: Arial;
            background:#f4f6f9;
        }

        .container{
            width:400px;
            margin:60px auto;
            background:white;
            padding:25px;
            border-radius:10px;
            box-shadow:0 0 10px rgba(0,0,0,0.1);
        }

        input{
            width:100%;
            padding:10px;
            margin:8px 0;
        }

        button{
            width:100%;
            padding:10px;
            background:#2c7be5;
            color:white;
            border:none;
            border-radius:5px;
            cursor:pointer;
        }

        h2{
            text-align:center;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Tambah Akun Siswa</h2>

    <form action="proses_tambah_siswa.php" method="POST">

        <input type="text" name="nama" placeholder="Nama Siswa" required>

        <input type="text" name="username" placeholder="Username" required>

        <input type="text" name="nis" placeholder="NIS" required>

        <input type="text" name="kelas" placeholder="Kelas" required>

        <input type="password" name="password" placeholder="Password" required>

        <button type="submit">Simpan Akun</button>

    </form>
</div>

</body>
</html>