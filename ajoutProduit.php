<?php

include 'connexion.php';
if(!empty($_POST))
{
    $image=$_POST['image'];
    $nom=$_POST['nom'];
    $prix=$_POST['prix'];
    $description=$_POST['description'];
    $sql="INSERT into produit (image,nom,prix,description) values(?,?,?,?)";
    $query=$pdo->prepare($sql);
    $query->execute([$image,$nom,$prix,$description]);
    if($query)
    {
        header("location:ajoutProduit.php?msg=Ajout effectue");
        exit();
    }
}
include 'ajoutProduit.phtml';
?>