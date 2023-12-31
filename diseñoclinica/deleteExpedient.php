<?php

include ("includes/header.php");
if (isset($_GET['id'])) {
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deleteExpedient($id);

	if ($res) {
		
         echo '<script>
swal({
    title: "Expediente eliminado",
    text: "Se eliminó el expediente exitosamente",
    icon: "success"
}).then(function() {
    window.location = "expedienteRead.php";
});
	 </script>';
}
		
		

	else{
		echo '<script>
swal({
    title: "Error al eliminar el expdiente",
    text: "Este expediente puede tener datos asociados existentes en el sistema (citas o historial médico), por favor, verifique ",
    icon: "error"
}).then(function() {
    window.location = "expedienteRead.php";
});
	 </script>';
	}
}

?>