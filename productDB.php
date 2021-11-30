<?php

    $con = new PDO("mysql:host=localhost;dbname=integrador;charset=utf8","root","");    

    $codigo = $_GET['codigo'];

    $sql = "select * from produto where codigo = $codigo";
    $qry = $con->prepare($sql);
    $qry->execute();

    $produtosdb = $qry->fetchAll(PDO::FETCH_OBJ);

    echo json_encode($produtosdb);

?>
