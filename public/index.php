<?php
error_reporting(E_ALL);
ini_set('display_errors', true);

$pdo = new PDO(
    'pgsql:host=192.168.56.231;port=5432;dbname=enrise;sslmode=require', 'enrise', 'vagrant'
);

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$stmt = $pdo->prepare('SELECT :demo::text AS demo');

$stmt->execute([
    'demo' => 'Hello world!',
]);

echo $stmt->fetch()['demo'] . PHP_EOL;


