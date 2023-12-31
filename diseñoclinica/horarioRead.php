<?php

include ("includes/header.php");
session_start();
$NombreDoc = $_SESSION['nombre'];
            $ApeDoc = $_SESSION['apellido'];
?>

<?php   

$conexion = mysqli_connect("localhost","root","","consultorioclinico") or die ("Error en la conexión con la Base de Datos");
$query = "Select * from doctor where Nombre_Doctor = '$NombreDoc' AND Apellido_Doctor = '$ApeDoc' "; 
$result = mysqli_query($conexion, $query) or die ("Ocurrio un error");
             
while ($row = mysqli_fetch_array($result))
{
  $id = $row['Id_Doctor'];
  $nombreD = $row['Nombre_Doctor'];
  $ApellidoD = $row['Apellido_Doctor'];

}
            
?>


<nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a href="citas.php" class="navbar-brand">Historial de citas</a>
        </div>
    </nav>


<div class="col-md-8">
        <center>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nombre del doctor</th>
                    <th>Día</th>
                    <th>Hora de Inicio</th>
                    <th>Hora Fin</th>
                    
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>


 
        <?php

        include("database.php");

        $usuario = new Database();

        
        $listado = $usuario->readHorario($id);

        while($row = mysqli_fetch_object($listado)){
            $idH = $row->Id_Horario;
            $id_doc = $row->Id_Doctor;
            $NombreDoctor = $NombreDoc;
            $ApellidoDoctor = $ApellidoD;
            $Dia = $row->Dia;
            $HoraI = $row->Hora_Ini;
            $HoraF = $row->Hora_Fin;
            
           
        

        ?>

        <tr>
                            <td><?php echo $NombreDoctor." ".$ApellidoDoctor; ?></td>
                            <td><?php echo $Dia; ?></td>
                            <td><?php echo $HoraI; ?></td>
                            <td><?php echo $HoraF;?></td>
                            
                            
                            <td>
                                
                                <a href="updateHorario.php?id=<?php echo $idH;?>" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a>
                                <a onclick="confirmacion(event)" href="deleteHorario.php?id=<?php echo $idH;?>" class="btn btn-danger">
                                    <i class="far fa-trash-alt"></i>
                                </a>



                            </td>
                        </tr>

                        <script type="text/javascript">
   
                                function confirmacion(ev) {
ev.preventDefault();
var urlToRedirect = ev.currentTarget.getAttribute('href'); //use currentTarget because the click may be on the nested i tag and not a tag causing the href to be empty
 // verify if this is the right URL
swal({
  title: "¿Desea eliminar este horario?",
  text: "Una vez eliminado, no podrá recuperarlo",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  // redirect with javascript here as per your logic after showing the alert using the urlToRedirect value
  if (willDelete) {

    
    location.href = urlToRedirect;
  } else {
    swal("Acción de eliminar cancelada");
  }
});
}
                          </script>

        <?php

    }

        ?>




<?php

include ("includes/footer.php");

?>
