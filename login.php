<?php
include 'connexion.php';
session_start();
if(isset($_POST['login']))
{
    $user_name=$_POST['user_name'];
    $requete = $pdo->prepare("SELECT * FROM `admin` where user_name=:user");
    $requete->execute(['user'=>$user_name]);
    $admin=$requete->fetch();
    if($user_name==$admin['user_name'])
    {
        if($admin['password']==$_POST['password']){
           $_SESSION['id']=$admin['id_user'];
           header("location:MiseAjour.php");
           exit;
        }
        else{
            header("location:login.php?msg=password ou user_name est incorrect");
        }
    }else{
        header("location:login.php?msg=user_name est incorrect");
    }
}
include 'login.phtml';
?>