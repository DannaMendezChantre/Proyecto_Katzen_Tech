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
        <a class="agg" href="agregarproducto.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Tabla de Productos</h1>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Categoría</th>
                    <th>Nombre</th>
                    <th>Valor</th>
                    <th>Cantidad</th>
                    <th>Descripcion</th>
                    <th>Imagen</th>
                    <th>Stock Máximo</th>
                    <th>Stock Mínimo</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($link->query("SELECT * FROM ingreso_producto") as $row) { ?>
                    <tr>
                        <td><?php echo $row["Id_producto"] ?></td>
                        <td><?php echo $row["fk_Nombre_categoria"] ?></td>
                        <td><?php echo $row["Nombre_producto"] ?></td>
                        <td><?php echo $row["Valor_UNI"] ?></td>
                        <td><?php echo $row["Cantidad"] ?></td>
                        <td><?php echo $row["Descripcion"] ?></td>
                        <td><?php echo $row["Imagen"] ?></td>
                        <td><?php echo $row["Stock_Maximo"] ?></td>
                        <td><?php echo $row["Stock_Minimo"] ?></td>
                        <td><a class="agg" href="#">Editar</a></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>