<?php
function checkDatabaseConnection($pdo) {
    try {
        $stmt = $pdo->query("SELECT 1");
        if ($stmt) {
            return "Conexão com o banco de dados está ok. Nome do banco de dados: " . $_ENV['DB_DATABASE'];
        } else {
            return "Erro ao verificar o banco de dados.";
        }
    } catch (PDOException $e) {
        return "Erro ao verificar o banco de dados: " . $e->getMessage();
    }
}
