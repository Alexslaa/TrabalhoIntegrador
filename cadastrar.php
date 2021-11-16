<?php

session_start();

include('connect.php');

$email = mysqli_real_escape_string($conexao, trim($_POST['email']));
$usuario = mysqli_real_escape_string($conexao, trim($_POST['usuario']));
$senha = mysqli_real_escape_string($conexao, trim($_POST['senha']));

$sql = "select count(*) as total from login where usuario = '$usuario'";
$result = mysqli_query($conexao, $sql);
$row = mysqli_fetch_assoc($result);

if($row['total'] == 1)
{
    $_SESSION['usuario_existe'] = true;
    header('Location: cadastro.php');
    exit;
}

$sql = "INSERT INTO login(email, usuario, senha, data_cadastro) VALUES ('$email', '$usuario', '$senha', NOW())";

if($conexao->query($sql) === TRUE)
{
    $_SESSION['status_cadastro'] = true;
}

$conexao->close();

header('Location: cadastro.php');
exit;

?>