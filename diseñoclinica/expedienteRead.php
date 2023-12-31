<?php

include ("includes/header.php");

?>

<?php

    session_start();

    if(!isset($_SESSION['nomusuario']) || $_SESSION['rol']=="Doctor" || $_SESSION['rol']=="Usuario") 
  header("Location: loginACS.php");

    

    ?>

<nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a href="expediente.php" class="navbar-brand">Expedientes registrados</a>
        </div>
    </nav>


<div class="col-md-8">
        <center>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nombre del paciente</th>
                    
                    <th>Antecedentes médicos</th>
                    <th>Alergias</th>
                    <th>Peso</th>
                    <th>Estatura</th>
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>


 
        <?php

        include("database.php");

        $usuario = new Database();

        
        $listado = $usuario->readExpedient();

        while($row = mysqli_fetch_object($listado)){
            $id_expediente = $row->Id_Expediente;
            $id_paciente = $row->Nombre." ".$row->Apellido;
            $antecedentes = $row->Antecedentes_Medicos;
            $alergias = $row->Alergias;
            $peso = $row->Peso;
            $estatura = $row->Estatura;
        

        ?>

        <tr>
                            <td><?php echo $id_paciente; ?></td>
                            <td><?php echo $antecedentes; ?></td>
                            <td><?php echo $alergias;?></td>
                            <td><?php echo $peso;?></td>
                            <td><?php echo $estatura;?></td>
                            <td>
                                
                                <a href="updateExpedient.php?id=<?php echo $id_expediente;?>" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a>
                                <a onclick="confirmacion(event)" href="deleteExpedient.php?id=<?php echo $id_expediente;?>" class="btn btn-danger">
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
  title: "¿Desea eliminar este expediente?",
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



?>
