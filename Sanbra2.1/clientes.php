<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

include('db.php');
$tipodocumento = $_POST['txttipodoc'];
$id = $_POST['txtid'];
$numerodocumento = $_POST['txtnumerodoc'];
$nombreempresa = $_POST['txtnombreempre'];
$telefono = $_POST['txttelefono'];
$direccion = $_POST['txtdireccion'];

$consulta = "INSERT INTO `cliente` (`pk_fk_Tipo_documento`, `Id_cliente`, `Numero_documento`, `Nombre_empresa`, `Telefono`, `Direccion`) 
VALUES ('$tipodocumento', '$id', '$numerodocumento', '$nombreempresa', '$telefono', '$direccion')";

$resultado = mysqli_query($conexion, $consulta) or die ("error de registro");

echo "registro exitoso";

mysqli_close($conexion);
?>
