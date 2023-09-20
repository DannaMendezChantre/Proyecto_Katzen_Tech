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
            <!-- Campo de búsqueda -->
            <input type="text" id="buscar" placeholder="Buscar..." onkeyup="filtrarFacturas()">
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

    <script>
        // Función para filtrar facturas
        function filtrarFacturas() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("buscar");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Empezamos desde 1 para omitir la fila de encabezado
                td = tr[i].getElementsByTagName("td")[0]; // Cambia el índice a la columna que deseas filtrar (ID Factura en este caso)
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
