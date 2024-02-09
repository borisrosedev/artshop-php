<?php
try {
    $pdo = new PDO('mysql:host=localhost:3306;dbname=artshop;charset=utf8', 'boris', 'caroline');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(\PDOException $e) {
    die("Erreur: ".$e->getMessage());
}