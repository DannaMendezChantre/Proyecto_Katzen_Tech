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
        <a class="agg" href="categoria.html">Volver</a>
        <div class="fil">
            <input type="text" id="buscar" placeholder="Buscar..." onkeyup="filtrarCategorias()">
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

    <script>
        // Función para filtrar categorías
        function filtrarCategorias() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("buscar");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Empezamos desde 1 para omitir la fila de encabezado
                td = tr[i].getElementsByTagName("td")[0]; // Columna Nombre

                if (td) {
                    txtValue = (td.textContent || td.innerText).toUpperCase();
                    if (txtValue.indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>
</body>
</html>
