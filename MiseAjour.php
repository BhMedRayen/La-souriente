<?php 
include 'connexion.php';
session_start();
if(!isset($_SESSION['id']))
{
    header("location:login.php");
    exit;
}
$requete = $pdo->prepare('SELECT * FROM produit');
$requete->execute();
$produits=$requete->fetchAll();

if(array_key_exists('id_delete',$_GET))
{
    $id=$_GET['id_delete'];
    $requete3=$pdo->prepare('DELETE from produit where id=:id');
    $requete3->execute(['id'=>$id]);
}


include 'MiseAjour.phtml';
?>