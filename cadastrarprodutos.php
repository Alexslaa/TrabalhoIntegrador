<?php

    if ((isset($_POST['imagem'])) && (!empty($_POST['imagem'])))
    {
        $conexao = mysqli_connect("127.0.0.1", "root", "", "integrador");

        $imagem = $_POST['imagem'];
        $nome = $_POST['nome'];
        $categoria = $_POST['categoria'];
        $estoque = $_POST['estoque'];
        $descricao = $_POST['descricao'];
        $preco = $_POST['preco'];

        $string_sql = "INSERT INTO produto (Imagem, nome, categoria, estoque, descrição, preço) VALUES ('$imagem', '$nome', '$categoria', '$estoque', '$descricao', '$preco')";
        $insert_member_res = mysqli_query($conexao, $string_sql);

        header('Location: cadastroprodutos.html')
    }
?>