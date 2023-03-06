<?php
include 'connexion.php';

$id=array_key_exists('id',$_GET)  ? $_GET['id'] : $_POST['id'];
$requete = $pdo->prepare('SELECT image,nom FROM produit where id=?');
$requete->execute([$id]);
$Produit=$requete->fetch();
$image=$Produit['image'];
$nom=$Produit['nom'];

if(isset($_POST['add']))
{   
    $nomClient=$_POST['nomClient'];
    $numcarte=$_POST['numcarte'];
    $adresse=$_POST['adresse'];
    $sql="INSERT into achat (nomClient,numcarte,nomProduit,adresse,idProduit,image) values(?,?,?,?,?,?)";
    $query=$pdo->prepare($sql);
    $query->execute([$nomClient,$numcarte,$nom,$adresse,$id,$image]);
    if($query)
        {
            header("location:index.php?msg=Achat effectue");
            exit();
        }
}
include 'achat.phtml';
?>