<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/listapro.css">
    <title>Inicio</title>
    <script src="js/listapro.js"></script>
</head>
<body>
    <?php
    $link = new PDO("mysql:host=localhost;dbname=sanbra11", "root", "");
    ?>
    <!-- Banner -->
    <div class="banner">
        <a href="index.html"><span class="katzen">Katzen</span><span class="tech">Tech</span></a>
    </div>
    <div class="cen">
        <a class="agg" href="index.html">Inicio</a>&nbsp&nbsp&nbsp&nbsp
        <a class="agg" href="factura.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Detalle de las facturas</h1>
        <table>
            <thead>
                <tr>
                    <th>ID Factura</th>
                    <th>ID Producto</th>
                    <th>Cantidad Producto</th>
                    <th>Valor Producto Cantidad</th>
                </tr>
            </thead>
            </tbody>
            <?php foreach ($link->query("SELECT * FROM detalle_factura") as $row) { ?>
                <tr>
                    <td><?php echo $row["fk_pk_Id_Factura"] ?></td>
                    <td><?php echo $row["fk_pk_Id_Producto"] ?></td>
                    <td><?php echo $row["Cantidad_Producto"] ?></td>
                    <td><?php echo $row["valor_producto_cantidad"] ?></td>
                    <td><a class="agg" href="#">Editar</a></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>