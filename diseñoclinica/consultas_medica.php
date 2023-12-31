<?php

include ("includes/header.php");

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $idp = intval($_GET['idp']);
    
}


else{
    header("Location: create.php");
}

?>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" href="assets/vendor/bootstrap/alertifyjs/css/alertify.css">
    <link rel="stylesheet" href="assets/vendor/bootstrap/alertifyjs/css/themes/default.css">
    <script src="assets/vendor/bootstrap/alertifyjs/alertify.js"></script>
    <title>Gestion De Consultas</title>
    <link rel="icon" type="iamge/x-icon" href="img/salud.png">
</head>
<?php


        include("database.php");

        $usuario = new Database();
        //$listado = $usuario->read();

        if (isset($_POST) && !empty($_POST)) {
            
            $Id_Paciente  = $usuario->sanitize($_POST['pacien']);
            $Motivo_Consulta = $usuario->sanitize($_POST['consulta']);
            $Sintomas  = $usuario->sanitize($_POST['Sintomas']);
            $Padecimiento = $usuario->sanitize($_POST['Padecimiento']);
            $Examenes  = $usuario->sanitize($_POST['Examenes']);
            $fecha = date('Y-m-d');


            $res = $usuario->createConsulta($Id_Paciente,$Motivo_Consulta, $Sintomas, $Padecimiento, $Examenes,$fecha);

            if ($res) {
                $conexion = mysqli_connect("localhost","root","","consultorioclinico") or die ("Error en la conexión con la Base de Datos");
                $query = "Update cita set Estado = 'Finalizada' where Id_Cita = $id";
                $result = mysqli_query($conexion, $query) or die ("Ocurrio un error");
                 echo '<script>
swal({
    title: "¡Diágnostico agredado exitosamente!",
    text: "Se registraron los datos de la consulta ",
    icon: "success"
}).then(function() {
    window.location = "index_doctor.php";
});
     </script>';
                $message = "Agregado con éxito";
                $class = "alert alert-success";
                //header("Location: create.php");


            }

            else{
                echo '<script type="text/javascript">';
  echo 'setTimeout(function () { swal("No agregó el diágnostico", "Revise nuevamente los datos del formulario","error");';
  echo '}, 500);</script>';
                $message = "No se agregaron los datos";
                $class = "alert alert-danger";
            }



            ?>

            <div class="<?php echo $class ?> ">
                <?php echo $message; ?>
            </div>

            <?php


        }

        ?>
<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="index.html">SALUD ON NET</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search" class="top-search-bar">
                                <input class="form-control" type="text" placeholder="Search..">
                            </div>
                        </li>
                        <li class="nav-item dropdown notification">
                            <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                            <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                <li>
                                    <div class="notification-title"> Notification</div>
                                    <div class="notification-list">
                                        <div class="list-group">
                                            <a href="#" class="list-group-item list-group-item-action active">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                        <div class="notification-date">2 days ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <div class="notification-info">
                                                    <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                    <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                        <div class="notification-date">2 min ago</div>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-footer"> <a href="#">View all notifications</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown connection">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                            <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                <li class="connection-list">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/github.png" alt="" > <span>Github</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                            <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="" > <span>Slack</span></a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="conntection-footer"><a href="#">More</a></div>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">John Abraham </h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Menu</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="index_doctor.php"><i class="fa fa-fw fa-user-circle"></i>Inicio<span class="badge badge-success"></span></a>
                                
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="consulta.php" ><i class="fas fa-heartbeat"></i>Gestion De Consultas</a>
                                
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="citasDoctorRead.php"><i class="fas fa-address-book"></i>Visualizacion De Citas</a>
                               
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="recetas.php"><i class="fas fa-capsules"></i>Creacion De Recetas</a>
                              

                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href=""><i class="fas fa-file-alt"></i>Reportes Medicos</a>
                           
                          
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Modulo Doctor </h2>
                                <p class="pageheader-text">Bienvenido A Su Sistema Salud On Net</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Modulo Doctor</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Gestion De Consulta</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="ecommerce-widget">

                         <div id="main">
    <div class="container">
         <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="section-block" id="basicform">
                                 
                                </div>
                                <div class="card">
                                    <br>
                                   <center><i class="fas fa-heartbeat fa-6x" id="logo1"></i></center><br>
                                    <div class="card-body">
                                        <form action="" method="POST">

         <div class="form-group">
            <label for="Nombre">Nombre Del Paciente: </label>
            <select name="pacien" id="gender" class="form-control">
                <?php

                 $conexion = mysqli_connect("localhost","root","","consultorioclinico") or die ("Error en la conexión con la Base de Datos");
                $query = "Select * from paciente where Id_Paciente = $idp";
                $result = mysqli_query($conexion, $query) or die ("Ocurrio un error");
                 while($row = mysqli_fetch_object($result)){
           
            $NombrePaciente = $row->Nombre;
            $ApellidoPaciente = $row->Apellido;
           
           }

                ?>
                <?php echo '<option value='.$id.'>'.$NombrePaciente." ".$ApellidoPaciente.'</option>'; 
                ?>
                

            </select>
            <br>
            <div class="col">
                <div class="form-group">
        <label for="peso">Motivo de la consulta:  </label>
        <input type="text" name=" consulta" id="consulta" class="form-control" W title="Coloca el motivo de la conslta del paciente" maxlength="6" placeholder="Ej. Fiebre">
                </div>
            </div>


            <label for="sintomas">Sintomas: </label>
            <textarea id="sintomas" placeholder="Escriba Los Sintomas Indicados Por El Paciente" class="form-control" name="Sintomas"></textarea>


<label for="Padecimiento">Padecimiento: </label>
<input type="text" name="Padecimiento" id="padecimiento" class="form-control">
<label for="Sintomas">Examenes: </label>
            <textarea id="examenes" placeholder="Escriba Los Examenes Indicados para el paciente" class="form-control" name="Examenes"></textarea>


<br>
<button type="submit" class="btn btn-primary" id="b3">Guardar Consulta.</button>


</form>

                                    </div>
                                </div>
                            </div>
                        </div>
        
        
  
</div>
 </div>



    


                                </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                               
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                               

           </div>

            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->


            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                             Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 -->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
    <script type="text/javascript">
    
    $(document).ready(function(){
     $('#b3').click(function(){
      
         if($('#Sintomas').val()==""){
            alertify.alert("Debe incluir los síntomas del paciente");
            return false;
         }
         else if($('#padecimiento').val()==""){
            alertify.alert("Debe agregar el padecimiento del paciente, si no esta seguro, afirmelo");
            return false;
         }

         else if($('#examenes').val()==""){
            alertify.alert("Debe agregar los examenes del paciente, si no tiene aún, confirmelo");
            return false;
         }

     });
    });

</script>
</body>
 
</html>