<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$id=$_POST['txtid'];
$categoria=$_POST['txtcategoria'];
$nombre=$_POST['txtnombre'];
$valor=$_POST['txtvalor'];
$cantidad=$_POST['txtcantidad'];
$descripcion=$_POST['txtdescripcion'];
$stockmaximo=$_POST['txtstockmaximo'];
$stockminimo=$_POST['txtstockminimo'];

$consulta = "INSERT INTO `ingreso_producto` (`Id_producto`, `fk_Nombre_categoria`, `Nombre_producto`, `Valor_UNI`, `Cantidad`, `Descripcion`, `Stock_Maximo`, `Stock_Minimo`) 
VALUES ('$id', '$categoria', '$nombre', '$valor', '$cantidad', '$descripcion', '$stockmaximo', '$stockminimo')";
 


$resultado=mysqli_query($conexion,$consulta) or die ("error de registro");

echo "registro exitoso";

mysqli_close($conexion);

?>