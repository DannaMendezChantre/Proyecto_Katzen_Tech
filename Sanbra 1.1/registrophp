<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$codigo=$_POST['txtcodigo'];
$categoria=$_POST['txtcategoria'];
$nombre=$_POST['txtnombre'];
$valor=$_POST['txtvalor'];
$cantidad=$_POST['txtcantidad'];
$imagen_FILES['txtimagen'] ['name'];

$consulta="INSERT INTO `productos` (`Codigo`, `Categoria`, `Nombre_Producto`, `Valor UNI`, `Cantidad`, `Imagen`) 
VALUES ('$codigo', '$categoria', '$nombre', '$valor', '$cantidad', '$imagen');";


$resultado=mysqli_query($conexion,$consulta) or die ("error de registro");

echo "registro exitoso";

mysqli_close($conexion);

?>