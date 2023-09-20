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
    <header>
        <nav class="men">
            <a href="index.html">Inicio</a>
        </ul>
        </nav>
    </header>
    <div class="cen">
        <a class="agg" href="index.html">Inicio</a>&nbsp&nbsp&nbsp&nbsp
        <a class="agg" href="factura.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Facturas</h1>
        <table>
            <thead>
                <tr>
                    <th>ID Factura</th>
                    <th>ID Administrador</th>
                    <th>ID Cliente</th>
                    <th>Fecha de Factura</th>
                    <th>Total de Factura</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach ($link->query("SELECT * FROM factura") as $row) { ?>
                <tr>
                    <td><?php echo $row["Id_factura"] ?></td>
                    <td><?php echo $row["Administrador_id"] ?></td>
                    <td><?php echo $row["Cliente_id"] ?></td>
                    <td><?php echo $row["Fecha_factura"] ?></td>
                    <td><?php echo $row["Total_factura"] ?></td>
                    <td><a class="agg" href="#">Editar</a></td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>