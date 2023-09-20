<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$nombrecategoria = $_POST['txtnombreca'];
$descripcion = $_POST['txtdescripcion'];

$consulta = "INSERT INTO `categoria_producto` (`Nombre_categoria`, `Descripcion`) 
VALUES ('$nombrecategoria', '$descripcion')";

$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo " registro exitoso";

mysqli_close($conexion);
?>
