<?php

$host = getenv("DB_HOST") ?: "localhost";
$usuario = getenv("DB_USER") ?: "root";
$senha = getenv("DB_PASS") ?: "";
$banco = getenv("DB_NAME") ?: "bd_sistema_vendas";

$conexao = mysqli_connect($host, $usuario, $senha, $banco);

if (!$conexao) {
    die("Erro na conexão: " . mysqli_connect_error());
}

mysqli_set_charset($conexao, "utf8mb4");

?>
