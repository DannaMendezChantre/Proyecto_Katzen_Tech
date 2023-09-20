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
        <a class="agg" href="categoria.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Categorias</h1>
        <table>
            <thead>
                <tr>
                    <th>Nombre categoria</th>
                    <th>Descripcion</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($link->query("SELECT * FROM categoria_producto") as $row) { ?>
                    <tr>
                        <td><?php echo $row["Nombre_categoria"] ?></td>
                        <td><?php echo $row["Descripcion"] ?></td>
                        <td><a class="agg" href="#">Editar</a></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>