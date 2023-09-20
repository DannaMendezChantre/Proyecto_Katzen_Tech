<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$idabono = $_POST['txtidabo'];
$idfactura = $_POST['txtidfac'];
$valorabono = $_POST['txtvalorabo'];
$fechaabono = $_POST['txtfechaabo'];

$consulta = "INSERT INTO `anticipo` (`Id_anticipo`, `fk_pk_Id_factura`, `Valor_abono`, `Fecha_abono`) 
VALUES ('$idabono', '$idfactura', '$valorabono', '$fechaabono')";

$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo "registro exitoso";

mysqli_close($conexion);
?>