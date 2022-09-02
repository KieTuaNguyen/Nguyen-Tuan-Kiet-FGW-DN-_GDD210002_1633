<?php
header('Content-Type: text/html; charset=utf-8');
// Kết nối cơ sở dữ liệu
$conn = mysqli_connect('localhost', 'root', '', 'shop_db') or die('Connection Errors');
mysqli_set_charset($conn, "utf8");
