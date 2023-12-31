<?php

include ("includes/header.php");

?>

<?php

    session_start();

    if(!isset($_SESSION['nomusuario']) || $_SESSION['rol']=="Secretaria" || $_SESSION['rol']=="Usuario") 
  header("Location: loginACS.php");

?>

<nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a href="Recetas.php" class="navbar-brand">Recetas registradas</a>
        </div>
    </nav>


<div class="col-md-8">
        <center>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Título de la receta</th>
                    <th>Medicamentos indicados</th>
                    <th>Dosis</th>
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>


 
        <?php

        include("database.php");

        $usuario = new Database();

        
        $listado = $usuario->readReceta();

        while($row = mysqli_fetch_object($listado)){
            
            $Id_Receta = $row->Id_Receta;
            $titulo = $row->Titulo;
            $medicamentos = $row->Medicamentos;
            $dosis = $row->Dosis;
        

        ?>

        <tr>
                            <td><?php echo $titulo; ?></td>
                            <td><?php echo $medicamentos; ?></td>
                            <td><?php echo $dosis; ?></td>

                            
                            <td>
                                
                                <a href="updateReceta.php?id=<?php echo $Id_Receta;?>" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a>
                                <a onclick="confirmacion(event)" href="deleteReceta.php?id=<?php echo $Id_Receta;?>" class="btn btn-danger">
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
  title: "¿Desea eliminar esta receta?",
  text: "Una vez eliminada, no podrá recuperarla",
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