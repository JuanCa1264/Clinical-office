<?php

include ("includes/header.php");

?>

<?php

    session_start();

    if(!isset($_SESSION['nomusuario']) || $_SESSION['rol']=="Doctor" || $_SESSION['rol']=="Usuario") 
  header("Location: loginACS.php");

    

    ?>

<style>
    
    #tb_content{
        position: relative;
        left: 5%;
        right: 5%;
        width: 5%;
        margin-right: 45%;

    }

    .hide{
        display: none;
    }

    .resaltar{
        background-color: pink;
    }

</style>

<script>
    $(document).ready(function(){
        var contenido_filas;
        var coincidencias;
        var exp;
        var codigoAscci;
        $('#txtBuscar').keyup(function(){
            if(!checkTeclaDel(event)){
                if ($(this).val().length>=3) 
                filtrar($(this).val());
            }

            
        });

        function filtrar(cadena){
            $('#patients tbody tr').each(function(){
                $(this).removeClass('hide');
                 contenido_filas = $(this).find('td:eq(1)').html();
                 //exp = new RegExp(cadena,'gi');
                 //coincidencias = contenido_filas.match(exp);
                 //if (coincidencias!=null) {
                    if (cadena.toUpperCase()==contenido_filas.substring(0,cadena.length).toUpperCase()) { 
                    $(this).addClass('resaltar');
                 }
                 else{
                    $(this).addClass('hide');
                 }
            });
        }

        function mostrarFilas(){
            $('#patients tbody tr').each(function(){
                $(this).removeClass('hide resaltar');
            });
        }

        function checkTeclaDel(e){
            codigoAscci = e.which;
            if (codigoAscci==8) {
                if ($('#txtBuscar').val().length>=3) {
                    filtrar($('#txtBuscar').val());

                }
                else{
                        mostrarFilas();
                }
                return true;
            }
            else{
                    return false;
            }
        }
    })
</script>

<nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a href="pacientes.php" class="navbar-brand">Pacientes registrados</a>
            <input type="text" class="form-control" placeholder="Inserte un apellido..." id="txtBuscar">
        </div>
    </nav>


<div class="col-md-8">
        <center>
        <table class="table table-bordered" id="patients">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Dirección</th>
                    <th>DUI</th>
                    <th>Edad</th>
                    <th>Sexo</th>
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>


 
        <?php

        include("database.php");

        $usuario = new Database();

        
        $listado = $usuario->readPatient();

        while($row = mysqli_fetch_object($listado)){
            $id = $row->Id_Paciente;

            $nombre = $row->Nombre;
            $apellido = $row->Apellido;
            $direccion = $row->Direccion;
            $dui = $row->DUI;
            $edad = $row->Edad;
            $sexo = $row->Sexo;
        

        ?>

        <tr>
                            <td><?php echo $nombre; ?></td>
                            <td><?php echo $apellido; ?></td>
                            <td><?php echo $direccion; ?></td>
                            <td><?php echo $dui;?></td>
                            <td><?php echo $edad;?></td>
                            <td><?php echo $sexo;?></td>
                            <td>
                                
                                <a href="updatePatient.php?id=<?php echo $id;?>" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a>
                                <a  onclick="confirmacion(event)" href="deletePatient.php?id=<?php echo $id;?>" class="btn btn-danger">
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
  title: "¿Desea eliminar este registro?",
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




