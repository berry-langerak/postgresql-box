<?php
error_reporting(E_ALL);
ini_set('display_errors', true);

$pdo = new PDO(
    'pgsql:host=localhost;port=5432;dbname=enrise;sslmode=require', 'enrise', 'vagrant'
);

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$stmt = $pdo->prepare(
    "SELECT 'Hello world from ' || version() AS message"
);

$stmt->execute();

echo $stmt->fetch()['message'] . PHP_EOL;


