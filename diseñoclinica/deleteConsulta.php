<?php

include ("includes/header.php");
if (isset($_GET['id'])) {
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deleteConsulta($id);

	if ($res) {
		
        echo '<script>
swal({
    title: "Consulta eliminada",
    text: "Se eliminó la consulta exitosamente",
    icon: "success"
}).then(function() {
    window.location = "citasDoctorRead.php";
});
	 </script>';
}
		
		else{
		   echo '<script>
swal({
    title: "Error al eliminar la consulta",
    text: "Esta consulta no puede eliminarse, por favor, verifique ",
    icon: "error"
}).then(function() {
    window.location = "readHistory.php";
});
	 </script>';
	}
		

	}

	


?>