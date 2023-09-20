<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$codigo=$_POST['txtcodigo'];
$dotacion=$_POST['txtdotacion'];
$talla=$_POST['txttalla'];
$color=$_POST['txtcolor'];
$sexo=$_POST['txtsexo'];
$especificaciones=$_POST['txtespecificaciones'];

$consulta="INSERT INTO `dotaciones` (`Codigo`,`Dotacion`, `Talla	`, `Color`, `Sexo`, `Especificaciones`) 
VALUES ('$codigo', '$dotacion', '$talla', '$color', '$sexo', '$especificaciones');";


$resultado=mysqli_query($conexion,$consulta) or die ("error de registro");

echo "registro exitoso";

mysqli_close($conexion);

?>