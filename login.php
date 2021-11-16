<?php
session_start();
include('connect.php');

if(empty($_POST['usuario']) || empty($_POST['senha'])) {
	header('Location: loginpage.html');
	exit();
}

$usuario = mysqli_real_escape_string($conexao, $_POST['usuario']);
$senha = mysqli_real_escape_string($conexao, $_POST['senha']);

$query = "select usuario_id, usuario from login where usuario = '{$usuario}' and senha = '{$senha}'";

$result = mysqli_query($conexao, $query);

$row = mysqli_num_rows($result);

if($row == 1) 
{
    $_SESSION['usuario'] = $usuario;
    header('Location: index.html');
    exit();
}

else
{
    $_SESSION['nao_autenticado'] = true;
    header('Location: loginpage.html');
    exit();
}