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
        <a class="agg" href="anticipos.html">Volver</a>
        <div class="fil">
            <!-- Campo de búsqueda -->
            <input type="text" id="buscar" placeholder="Buscar..." onkeyup="filtrarAbonos()">
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

    <script>
        // Función para filtrar abonos
        function filtrarAbonos() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("buscar");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Empezamos desde 1 para omitir la fila de encabezado
                td = tr[i].getElementsByTagName("td")[0]; // Cambia el índice a la columna que deseas filtrar (ID Abono en este caso)
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
