<?php

include ("includes/header.php");
if (isset($_GET['id'])) {
	include ('database.php');

	$usuario = new Database();

	$id = intval($_GET['id']);

	$res = $usuario->deleteHorario($id);

	if ($res) {
		
        echo '<script>
swal({
    title: "Horario eliminado",
    text: "Se eliminó el horario indicado exitosamente",
    icon: "success"
}).then(function() {
    window.location = "horarioRead.php";
});
	 </script>';
}
		
		else{
		   echo '<script>
swal({
    title: "Error al eliminar el horario",
    text: "No se puede eliminar este horario, por favor, verifique",
    icon: "error"
}).then(function() {
    window.location = "horarioRead.php";
});
	 </script>';
	}
		

	}

	


?>