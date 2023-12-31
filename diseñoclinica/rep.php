<?php
require('fpdf.php');

class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
    $this->Image('logo.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Arial','B',15);
    // Movernos a la derecha
    $this->Cell(80);
    // Título
    $this->Cell(30,10,'reporte de vieja',0,0,'C');
    // Salto de línea
    $this->Ln(20);
}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}

// Creación del objeto de la clase heredada
$nombre=$_POST['paciente'];
$conexion = new mysqli('127.0.0.1','root','','consultorioclinico');//conexion a BD
$datos = $conexion->query("SELECT T1.*, T2.Fecha_Cita,T3.Nombre_Doctor,T4.Nombre from consulta T1 inner join cita T2 on T2.Id_Cita = T1.Id_Cita inner join doctor T3 on T3.Id_Doctor = T2.Id_Doctor inner join paciente T4 on T2.Id_Paciente = T4.Id_Paciente where T4.Nombre= '$nombre'");
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',8);
 $pdf->Cell(20,10,'Id_Consulta',1,0,'',0);
     $pdf->Cell(20,10,'Id_Cita',1,0,'',0);
     $pdf->Cell(20,10,'Motivo_Consulta',1,0,'',0);
     $pdf->Cell(20,10,'Sintomas',1,0,'',0);
     $pdf->Cell(20,10,'Examenes',1,0,'',0);
     $pdf->Cell(20,10,'Fecha_Cita',1,0,'',0);
     $pdf->Cell(20,10,'Nombre',1,0,'',0);
     $pdf->Cell(20,10,'Nombre_Doctor',1,0,'',0);
     $pdf->Cell(20,10,'Fecha_Consulta',1,0,'',0);
     $pdf->Cell(20,10,'Padecimiento',1,1,'',0);
while ($row=$datos->fetch_assoc()) {
     $pdf->Cell(20,10,$row['Id_Consulta'],1,0,'',0);
     $pdf->Cell(20,10,$row['Id_Cita'],1,0,'',0);
     $pdf->Cell(20,10,$row['Motivo_Consulta'],1,0,'',0);
     $pdf->Cell(20,10,$row['Sintomas'],1,0,'',0);
     $pdf->Cell(20,10,$row['Examenes'],1,0,'',0);
     $pdf->Cell(20,10,$row['Fecha_Cita'],1,0,'',0);
     $pdf->Cell(20,10,$row['Nombre'],1,0,'',0);
     $pdf->Cell(20,10,$row['Nombre_Doctor'],1,0,'',0);
     $pdf->Cell(20,10,$row['Fecha_Consulta'],1,0,'',0);
     $pdf->Cell(20,10,$row['Padecimiento'],1,1,'',0);
}
   
$pdf->Output();
?>