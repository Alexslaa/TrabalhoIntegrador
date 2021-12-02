<?php

$con = new PDO("mysql:host=localhost;dbname=integrador;charset=utf8","root","");

    $categoria = $_GET['categoria'];

    $sql = "select * from produto where categoria = $categoria";
    $qry = $con->prepare($sql);
    $qry->execute();

    $produtosdb = $qry->fetchAll(PDO::FETCH_OBJ);
    
    echo json_encode($produtosdb);

?>
