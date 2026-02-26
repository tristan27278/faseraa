<?php
session_start();
include "../koneksi.php";

if (!isset($_SESSION['login']) || $_SESSION['role'] != 'admin') {
    header("Location: ../login.php");
    exit;
}

$query = mysqli_query(
    $koneksi,
    "SELECT * FROM users WHERE role='user' ORDER BY id ASC"
);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Data Siswa</title>
    <meta charset="UTF-8">

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

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            max-width: 1200px;
            margin: auto;
            margin-top: 40px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            table-layout: fixed;
        }

        th {
            background-color: #008080;
            color: white;
            padding: 12px;
            font-size: 14px;
        }

        td {
            padding: 10px;
            text-align: center;
            font-size: 14px;
            border-bottom: 1px solid #eee;
            word-break: break-word;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            background-color: #008080;
            color: white;
            padding: 6px 12px;
            border-radius: 6px;
            font-size: 13px;
        }

        a:hover {
            background-color: #2980b9;
        }

        .btn-tambah {
            margin-bottom: 15px;
            display: inline-block;
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
            <a href="index.php"><li>BERANDA</li></a>
            <a href="../logout.php"><li>LOGOUT</li></a>
        </ul>
    </div>
</div>

<div class="container">

    <h2>Data Siswa</h2>

    <a href="tambah_siswa.php" class="btn-tambah">
        + Tambah Siswa
    </a>

    <table>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Username</th>
            <th>NIS</th>
            <th>Kelas</th>
            <th>Aksi</th>
        </tr>

        <?php $no = 1; ?>
        <?php while ($data = mysqli_fetch_assoc($query)) { ?>

        <tr>
            <td><?= $no++; ?></td>
            <td><?= $data['nama']; ?></td>
            <td><?= $data['username']; ?></td>
            <td><?= $data['nis']; ?></td>
            <td><?= $data['kelas']; ?></td>

            <td>
                <a href="edit_siswa.php?id=<?= $data['id']; ?>">Edit</a>
                <a href="hapus_siswa.php?id=<?= $data['id']; ?>"
                   onclick="return confirm('Yakin hapus siswa?')">
                   Hapus
                </a>
            </td>
        </tr>

        <?php } ?>

    </table>

</div>

</body>
</html>