<?php


if (isset($_GET['id'])) {
	include ('includes/header.php');
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deleteQuote($id);

	if ($res) {
		
            echo '<script>
swal({
    title: "Cita eliminada",
    text: "Se eliminó la cita exitosamente",
    icon: "success"
}).then(function() {
    window.location = "citaRead.php";
});
	 </script>';
		
		

	}

	else{
		echo '<script>
swal({
    title: "Error al eliminar la cita",
    text: "Esta cita contiente datos de consultas guardados en el sistema generados por el/la doctor/a y conforman parte del expediente del paciente",
    icon: "error"
}).then(function() {
    window.location = "citaRead.php";
});
	 </script>';
	}
}

?>