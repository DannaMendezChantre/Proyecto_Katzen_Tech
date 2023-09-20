<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$tipodocumento = $_POST['txttipodoc'];
$estadodocumento = $_POST['txtestadodoc'];

$consulta = "INSERT INTO `tipo_documento` (`Tipo_documento`, `Estado_documento`) 
VALUES ('$tipodocumento', '$estadodocumento')";

$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo " registro exitoso";

mysqli_close($conexion);
?>
