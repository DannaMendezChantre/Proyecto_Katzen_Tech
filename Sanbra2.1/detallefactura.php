<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$idfactura = $_POST['txtidfac'];
$idproducto = $_POST['txtidpro'];
$cantidadproducto = $_POST['txtcantidadpro'];
$valorproducto = $_POST['txtvalorpro'];

$consulta = "INSERT INTO `detalle_factura` (`fk_pk_Id_Factura`, `fk_pk_Id_Producto`, `Cantidad_Producto`, `valor_producto_cantidad`) 
VALUES ('$idfactura', '$idproducto', '$cantidadproducto', '$valorproducto')";


$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo " registro exitoso";

mysqli_close($conexion);
?>