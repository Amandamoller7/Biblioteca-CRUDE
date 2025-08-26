<?php 
include('../../db/db.php');

$id = $_GET['id'];

$sql = "DELETE FROM autores WHERE id=$id";
if ($conn->query($sql)) {
    echo "Autor excluido";
} else {
    echo "Erro: " . $conn->error;
}
?>
<a href="read.php">Voltar para lista</a>