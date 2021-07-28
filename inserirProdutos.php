<?php
include 'conexao.php';
include 'script.php';

$array = include 'lista-de-compras.php';

foreach (formataArray($array) as $value) {
    $mes = $value[0];
    $categoria = $value[1];
    $produto = $value[2];
    $quantidade = $value[3];

  $insertProdutos = $conn->prepare('INSERT INTO listaprodutos (mes, categoria, produto, quantidade) VALUES (:mes, :categoria, :produto, :quantidade)');

  $insertProdutos->execute(array(
    ':mes' => $mes,
    ':categoria' => $categoria,
    ':produto' => $produto,
    ':quantidade' => $quantidade,

  ));
}
