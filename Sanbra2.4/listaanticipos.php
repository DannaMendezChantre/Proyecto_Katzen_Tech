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
        <a class="agg" href="anticipos.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Abonos</h1>
        <table>
            <thead>
                <tr>
                    <th>ID abono</th>
                    <th>ID Factura</th>
                    <th>Valor abono</th>
                    <th>Fecha abono</th>
                </tr>
            </thead>

            <tbody>
                <?php foreach ($link->query("SELECT * FROM anticipo") as $row) { ?>
                    <tr>
                        <td><?php echo $row["Id_anticipo"] ?></td>
                        <td><?php echo $row["fk_pk_Id_factura"] ?></td>
                        <td><?php echo $row["Valor_abono"] ?></td>
                        <td><?php echo $row["Fecha_abono"] ?></td>
                    </tr>
                <?php } ?>
                
            </tbody>
        </table>
    </div>
</body>
</html>