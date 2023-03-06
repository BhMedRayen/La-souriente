<?php 
include 'connexion.php';
$requete = $pdo->prepare('SELECT * FROM produit');
$requete->execute();
$produits=$requete->fetchAll();
include 'index.phtml';
?>