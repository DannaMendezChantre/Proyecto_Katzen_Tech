<?php
/* Llama a la biblioteca FPDF */
require('../../backend/fpdf/fpdf.php');

/* A4 width: 210mm */
/* Cambia las dimensiones de la página a A4 (210mm x 297mm) */
$pdf = new FPDF('P','mm','A4');

/* Agrega una página */
$pdf->AddPage();

/* Establece la fuente a Arial, negrita, 20pt */
$pdf->SetFont('Arial','B',20);

/* Celdas vacías para ajustar el título al centro */
$pdf->Cell(71, 10, '', 0, 0);
$pdf->Cell(59, 1, utf8_decode('Comprobante'), 0, 100); // Decodifica el texto para tildes
$pdf->Cell(59, 10, '', 0, 1);

/* Establece la fuente a Arial, negrita, 15pt */
$pdf->SetFont('Arial','B',15);

/* Agrega el nombre de tu empresa */
$pdf->Cell(71, 5, 'KatzenTech', 0, 0);
$pdf->Cell(59, 5, '', 0, 0);
$pdf->Cell(59, 5, 'Detalles', 0, 1);

/* Establece la fuente a Arial, tamaño 10pt */
$pdf->SetFont('Arial', '', 10);

/* Conexión a la base de datos */
require '../../backend/config/Conexion.php';
$id = $_GET['id'];
$stmt = $connect->prepare("SELECT * FROM orders WHERE idord= '$id'");
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$stmt->execute();

while ($row = $stmt->fetch()) {
    /* Configura la fuente para soportar tildes y caracteres especiales */
    $pdf->SetFont('Arial', '', 10);

    /* Agrega la dirección y el cliente */
    $pdf->Cell(130, 5, utf8_decode('Colombia'), 0, 0);
    $pdf->Cell(25, 5, utf8_decode('Cliente:'), 0, 0);
    $pdf->Cell(34, 5, utf8_decode($row['nomcl']), 0, 1);

    $pdf->Cell(130, 5, utf8_decode('Bogotá, 751001'), 0, 0);
    $pdf->Cell(25, 5, utf8_decode('Fecha:'), 0, 0);
    $pdf->Cell(34, 5, utf8_decode($row['placed_on']), 0, 1);

    $pdf->Cell(50, 10, '', 0, 1);

    /* Establece la fuente a negrita, tamaño 10pt */
    $pdf->SetFont('Arial', 'B', 10);

    /* Encabezado de la tabla */
    $pdf->SetXY(20, 50);
    $pdf->SetFillColor(128, 128, 128);
    $pdf->SetTextColor(255, 255, 255);
    $pdf->Cell(180, 10, utf8_decode("Factura"), 1, 0, "C", true);

    $pdf->SetTextColor(0, 0, 0);
    $pdf->SetXY(20, 60);
    $pdf->MultiCell(180, 10, utf8_decode($row['total_products']), 1, "L");

    $pdf->SetX(120);
    $pdf->Cell(50, 10, utf8_decode("Subtotal:"), 1, 0, "C");
    $pdf->Cell(30, 10, number_format($row['total_price'], 2), 1, 1, "R");
    $pdf->SetX(120);
    $pdf->Cell(50, 10, utf8_decode("Total:"), 1, 0, "C");
    $pdf->Cell(30, 10, number_format($row['total_price'], 2), 1, 1, "R");
}

/* Genera el archivo PDF y lo descarga */
$pdf->Output('Comprobante.pdf', 'D');
?>
