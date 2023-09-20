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
        <a class="agg" href="ingresarcliente.html">Volver</a>&nbsp&nbsp&nbsp&nbsp
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar...">
        </div>
        <h1>Clientes</h1>
        <table>
            <thead>
                <tr>
                    <th>Tipo de documento</th>
                    <th>Id</th>
                    <th>Numero documento</th>
                    <th>Nombre empresa</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($link->query("SELECT * FROM cliente") as $row) { ?>
                    <tr>
                        <td><?php echo $row["pk_fk_Tipo_documento"] ?></td>
                        <td><?php echo $row["Id_cliente"] ?></td>
                        <td><?php echo $row["Numero_documento"] ?></td>
                        <td><?php echo $row["Nombre_empresa"] ?></td>
                        <td><?php echo $row["Telefono"] ?></td>
                        <td><?php echo $row["Direccion"] ?></td>
                        <td><a class="agg" href="#">Editar</a></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>