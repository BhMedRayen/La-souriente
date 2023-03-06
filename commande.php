<?php
include 'connexion.php';
$requete = $pdo->prepare('SELECT * FROM achat');
$requete->execute();
$commandes=$requete->fetchAll();
if(array_key_exists('id_delete',$_GET))
{
    $id=$_GET['id_delete'];
    $requete=$pdo->prepare('DELETE from achat where idClient=:id');
    $requete->execute(['id'=>$id]);
    header("location:commande.php");
    exit;
}
include 'commande.phtml'; 
?>