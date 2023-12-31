<?php

include ("includes/header.php");

if (isset($_GET['id'])) {
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deleteReceta($id);

	if ($res) {
		
		 echo '<script>
swal({
    title: "Receta eliminada",
    text: "Se eliminó la receta exitosamente",
    icon: "success"
}).then(function() {
    window.location = "readReceta.php";
});
	 </script>';
        
		
		

	}

	else{
		echo '<script>
swal({
    title: "Error al eliminar la receta",
    text: "Esta receta contiente datos de consultas guardados en el sistema generados por el/la doctor/a y conforman parte del expediente del paciente",
    icon: "error"
}).then(function() {
    window.location = "readReceta.php";
});
	 </script>';
	}
}

?>