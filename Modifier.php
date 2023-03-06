<?php
include 'connexion.php';
$id=$_GET['id'];
$requete = $pdo->prepare('SELECT * FROM produit where id=?');
$requete->execute([$id]);
$produits=$requete->fetch();

if(isset($_POST['edit']))
{
    $id=$_POST['id'];
    $image=$_POST['image'];
    $nom=$_POST['nom'];
    $prix=$_POST['prix'];
    $description=$_POST['description'];
    $requete=$pdo->prepare("UPDATE produit SET `image`=:image ,`nom`=:nom ,`prix`=:prix ,`description`=:description where id=:id");
    $requete->execute([
         'id'=>$id,
         'image'=>$image,
         'nom'=>$nom,
         'prix'=>$prix,
         'description'=>$description
        ]);
        header("location:MiseAjour.php?edit_succes");
        exit();
}

include 'Modifier.phtml'; 
?>
