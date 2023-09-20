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
        <a class="agg" href="agregarproducto.html">Volver</a>
        <div class="fil">
            <!-- Campo de búsqueda -->
            <input type="text" id="buscar" placeholder="Buscar..." onkeyup="filtrarProductos()">
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

    <script>
        // Función para filtrar productos
        function filtrarProductos() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("buscar");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Empezamos desde 1 para omitir la fila de encabezado
                td = tr[i].getElementsByTagName("td")[2]; // Cambia el índice a la columna que deseas filtrar
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
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
