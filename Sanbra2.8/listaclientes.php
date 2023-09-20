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
        <a class="agg" href="ingresarcliente.html">Volver</a>&nbsp&nbsp&nbsp&nbsp
        <div class="fil">
            <!-- Campo de búsqueda -->
            <input type="text" id="buscar" placeholder="Buscar..." onkeyup="filtrarClientes()">
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

    <script>
        // Función para filtrar clientes
        function filtrarClientes() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("buscar");
            filter = input.value.toUpperCase();
            table = document.querySelector("table");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) { // Empezamos desde 1 para omitir la fila de encabezado
                td = tr[i].getElementsByTagName("td")[3]; // Cambia el índice a la columna que deseas filtrar (Nombre de la empresa en este caso)
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
