<?php

include ("includes/header.php");
if (isset($_GET['id'])) {
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deletePatient($id);

	if ($res) {
		
        echo '<script>
swal({
    title: "Registro eliminado",
    text: "Se eliminó el registro exitosamente",
    icon: "success"
}).then(function() {
    window.location = "pacienteRead.php";
});
	 </script>';
}
		
		else{
		   echo '<script>
swal({
    title: "Error al eliminar el registro",
    text: "Este registro puede tener datos asociados existentes en el sistema (citas o historial médico), por favor, verifique ",
    icon: "error"
}).then(function() {
    window.location = "pacienteRead.php";
});
	 </script>';
	}
		

	}

	


?>