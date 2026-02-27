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
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/e8c5ddf50d.js" crossorigin="anonymous"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
        }

        .header {
            width: 100%;
            height: 70px;
            background-color: #008080;
            display: flex;
            align-items: center;
        }

        .nav-menu {
            margin-left: auto;
            margin-right: 40px;
        }

        .nav-menu ul {
            list-style: none;
            display: flex;
            gap: 30px;
        }

        .nav-menu ul li {
            color: white;
            font-weight: 500;
            cursor: pointer;
        }

        .nav-menu ul li:hover {
            text-decoration: underline;
        }

        .logo img {
            height: 55px;
        }

        .container {
            max-width: 600px;
            margin: 40px auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #008080;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }

        .btn-kembali {
            display: inline-block;
            margin-bottom: 15px;
            text-decoration: none;
            background-color: #008080;
            color: white;
            padding: 8px 14px;
            border-radius: 6px;
            font-size: 14px;
        }

        .btn-kembali:hover {
            background-color: #2980b9;
        }
    </style>
</head>

<body>

    <div class="header">
        <div class="logo">
            <img src="https://www.smkmutucikampek.sch.id/wp-content/uploads/2021/06/cropped-SMK-MUTU-500-x-160-px.png">
        </div>

        <div class="nav-menu">
            <ul>
                <a href="index.php">
                    <li>BERANDA</li>
                </a>
                <a href="../logout.php">
                    <li>LOGOUT</li>
                </a>
            </ul>
        </div>
    </div>

    <div class="container">

        <h2>Tambah Akun Siswa</h2>

        <a href="data_siswa.php" class="btn-kembali">← Kembali</a>

        <div class="form-box">
            <form action="proses_tambah_siswa.php" method="POST">

                <input type="text" name="nama" placeholder="Nama Siswa" required>

                <input type="text" name="username" placeholder="Username" required>

                <input type="text" name="nis" placeholder="NIS" required>

                <input type="text" name="kelas" placeholder="Kelas" required>

                <input type="password" name="password" placeholder="Password" required>

                <button type="submit">Simpan Akun</button>

            </form>
        </div>

    </div>

</body>

</html>