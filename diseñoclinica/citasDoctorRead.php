<?php

include ("includes/header.php");
session_start();
?>

<?php

    

    if(!isset($_SESSION['nomusuario']) || $_SESSION['rol']=="Secretaria" || $_SESSION['rol']=="Usuario") 
  header("Location: loginACS.php");

?>


<nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a href="Index_Doctor.php" class="navbar-brand">Citas por atender</a>
        </div>
    </nav>


<div class="col-md-8">
        <center>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nombre del paciente</th>
                    <th>Nombre del doctor</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th><center>Acciones</center></th>
                </tr>
            </thead>

            <tbody>


 
        <?php

        include("database.php");

        $usuario = new Database();

        
        $listado = $usuario->readQuoteDoctor($_SESSION['nombre'],$_SESSION['apellido']);

        while($row = mysqli_fetch_object($listado)){
            $id_paciente = $row->Id_Paciente;
            $id_cita = $row->Id_Cita;
            $id_expediente = $row->Id_Expediente;
            $NombrePaciente = $row->Nombre;
            $ApellidoPaciente = $row->Apellido;
            $NombreDoctor = $row->Nombre_Doctor;
            $ApellidoDoctor = $row->Apellido_Doctor;
            $Fecha = $row->Fecha_Cita;
            $Hora = $row->Hora;
           
        

        ?>

        <tr>
                            <td width="30%"><?php echo $NombrePaciente." ".$ApellidoPaciente; ?></td>
                            <td width="30%"><?php echo $NombreDoctor." ".$ApellidoDoctor; ?></td>
                            <td width="20%"><?php echo $Fecha; ?></td>
                            <td><?php echo $Hora;?></td>
                            
                            <td width="100%">
                                
                                 
                                
                                <a href="updateExpedientDoctor.php?id=<?php echo $id_expediente;?>" class="btn btn-secondary">
                                    <i class="fas fa-marker">  Ver expediente frontal</i>
                                </a>
    
                                <a href="readHistory.php?id=<?php echo $id_paciente?>" class="btn btn-secondary">
                                    <i class="fas fa-marker">  Ver historial médico</i>
                                </a>

                                <a href="consultas_medica.php?id=<?php echo $id_cita?>&idp=<?php echo $id_paciente?>" class="btn btn-secondary">
                                    <i class="fas fa-marker">  Agregar diagnóstico</i>
                                </a>




                            



                            </td>
                        </tr>

        <?php

    }

        ?>




<?php



?>