<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$idfactura = $_POST['txtidfa'];
$idadministrador = $_POST['txtidadmi'];
$idcliente = $_POST['txtidcli'];
$fechafactura = $_POST['txtfechafa'];
$totalfactura = $_POST['txttotalfa'];

$consulta = "INSERT INTO `factura` (`Id_factura`, `Administrador_id`, `Cliente_id`, `Fecha_factura`, `Total_factura`) 
VALUES ('$idfactura', '$idadministrador', '$idcliente', '$fechafactura', '$totalfactura')";

$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo " registro exitoso";

mysqli_close($conexion);
?>
