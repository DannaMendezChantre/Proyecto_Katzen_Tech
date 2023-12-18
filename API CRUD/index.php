<?php
$host = "localhost";
$usuario = "root";
$password = "";
$basededatos = "computer_advance";

$conexion = new mysqli($host, $usuario, $password, $basededatos);

if ($conexion->connect_error) {
    die("Conexión Establecida" . $conexion->connect_error);
}

header("Content-Type: application/json");
$metodo = $_SERVER['REQUEST_METHOD'];

$patch = isset($_SERVER['PATH_INFO']) ? $_SERVER['PATH_INFO'] : '/';
$buscarId = explode('/', $patch);
$id = ($patch == '/') ? end($buscarId) : null;

switch ($metodo) {
    case 'GET':
        echo "Consulta de registros - GET";
        consultas($conexion, $patch, $id);
        break;
    case 'POST':
        echo "Insertar registros - POST";
        insertar($conexion);
        break;
    case 'PUT':
        echo "Edición de registros - PUT";
        actualizar($conexion, $patch, $id);
        break;
    case 'DELETE':
        echo "Borrado de registros - DELETE";
        borrar($conexion, $patch, $id);
        break;
    default:
        echo "Método no permitido";
        break;
}

function consultas($conexion)
{
    $tabla = isset($_GET['tabla']) ? $conexion->real_escape_string($_GET['tabla']) : '';
    $id = isset($_GET['id']) ? $conexion->real_escape_string($_GET['id']) : null;

    if (empty($tabla)) {
        echo json_encode(array("error" => "No se proporcionó el nombre de la tabla."));
        return;
    }

    $sql = "SELECT * FROM $tabla";
    
    if ($id !== null) {
        $id = $conexion->real_escape_string($id);
        $condicion = ($tabla == 'usuarios') ? " WHERE id = '$id'" : (($tabla == 'marca') ? " WHERE idmar = '$id'" : '');
        $sql .= $condicion;
    }

    $resultado = $conexion->query($sql);

    if ($resultado) {
        $datos = array();
        while ($fila = $resultado->fetch_assoc()) {
            $datos[] = $fila;
        }
        echo json_encode($datos);
    }
}

function insertar($conexion)
{
    $dato = json_decode(file_get_contents('php://input'), true);

    // Verificar si se proporcionó el nombre de la tabla
    if (!isset($dato['tabla'])) {
        echo json_encode(array("error" => "No se proporcionó el nombre de la tabla."));
        return;
    }

    $tabla = $conexion->real_escape_string($dato['tabla']);

    // Verificar si la tabla es válida
    if ($tabla !== 'usuarios' && $tabla !== 'marca') {
        echo json_encode(array("error" => "Tabla no válida."));
        return;
    }

    // Filtrar solo las columnas permitidas
    $columnasPermitidas = obtenerColumnasPermitidas($tabla);
    $columnasFiltradas = array_intersect_key($dato, array_flip($columnasPermitidas));

    // Obtener los nombres de las columnas y valores
    $columnasStr = implode(', ', array_keys($columnasFiltradas));
    $valoresStr = "'" . implode("', '", array_map(array($conexion, 'real_escape_string'), array_values($columnasFiltradas))) . "'";

    // Construir la consulta SQL
    $sql = "INSERT INTO $tabla ($columnasStr) VALUES ($valoresStr)";

    $resultado = $conexion->query($sql);

    if ($resultado) {
        echo json_encode(array("mensaje" => "Registro insertado correctamente."));
    } else {
        echo json_encode(array("error" => "Error al insertar el registro: " . $conexion->error));
    }
}

function actualizar($conexion)
{
    $dato = json_decode(file_get_contents('php://input'), true);

    // Verificar si se proporcionó el nombre de la tabla y el ID
    if (!isset($dato['tabla']) || !isset($dato['id'])) {
        echo json_encode(array("error" => "No se proporcionó el nombre de la tabla o el ID."));
        return;
    }

    $tabla = $conexion->real_escape_string($dato['tabla']);
    $id = $conexion->real_escape_string($dato['id']);

    // Verificar si la tabla es válida
    if ($tabla !== 'usuarios' && $tabla !== 'marca') {
        echo json_encode(array("error" => "Tabla no válida."));
        return;
    }

    // Construir la lista de asignaciones para la actualización
    $asignaciones = array();
    foreach ($dato as $columna => $valor) {
        if ($columna !== 'tabla' && $columna !== 'id') {
            $columna = $conexion->real_escape_string($columna);
            $valor = $conexion->real_escape_string($valor);
            $asignaciones[] = "$columna = '$valor'";
        }
    }

    // Construir la consulta SQL de actualización
    $asignacionesStr = implode(', ', $asignaciones);

    if ($tabla === 'usuarios') {
        $sql = "UPDATE usuarios SET $asignacionesStr WHERE id = '$id'";
    } elseif ($tabla === 'marca') {
        $sql = "UPDATE marca SET $asignacionesStr WHERE idmar = '$id'";
    }

    $resultado = $conexion->query($sql);

    if ($resultado) {
        echo json_encode(array("mensaje" => "Registro actualizado correctamente."));
    } else {
        echo json_encode(array("error" => "Error al actualizar el registro: " . $conexion->error));
    }
}



function borrar($conexion)
{
    // Obtener parámetros de la solicitud DELETE
    $tabla = isset($_GET['tabla']) ? $conexion->real_escape_string($_GET['tabla']) : '';
    $id = isset($_GET['id']) ? $conexion->real_escape_string($_GET['id']) : null;

    // Verificar si se proporcionó el nombre de la tabla y el ID
    if (empty($tabla) || $id === null) {
        echo json_encode(array("error" => "No se proporcionó el nombre de la tabla o el ID."));
        return;
    }

    // Verificar si la tabla es válida
    if ($tabla !== 'usuarios' && $tabla !== 'marca') {
        echo json_encode(array("error" => "Tabla no válida."));
        return;
    }

    // Construir la consulta SQL de borrado
    if ($tabla === 'usuarios') {
        $sql = "DELETE FROM usuarios WHERE id = '$id'";
    } elseif ($tabla === 'marca') {
        $sql = "DELETE FROM marca WHERE idmar = '$id'";
    }

    $resultado = $conexion->query($sql);

    if ($resultado) {
        echo json_encode(array("mensaje" => "Registro eliminado correctamente."));
    } else {
        echo json_encode(array("error" => "Error al eliminar el registro: " . $conexion->error));
    }
}


function obtenerTablaDesdePatch($patch)
{
    $segmentos = explode('/', $patch);
    $tabla = end($segmentos);
    return $tabla;
}

function obtenerColumnasPermitidas($tabla)
{
    switch ($tabla) {
        case 'usuarios':
            return ['nombre', 'username', 'correo', 'password', 'rol', 'fere', 'state'];
        case 'marca':
            return ['nomarc', 'state', 'fere'];
        default:
            return [];
    }
}
?>
