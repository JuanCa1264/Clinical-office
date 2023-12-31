<?php

include("includes/header.php");


?>

<div class="container p-4">
	
<div class="row">
	
	<div class="col-md-4">
		
		<?php


		include("database.php");

		$usuario = new Database ();
		
		$listado = $usuario->read();

		if (isset($_POST) && !empty($_POST)) {
		

			$Nombre  = $usuario->sanitize($_POST['nombre']);
			$Apellido = $usuario->sanitize($_POST['apellido']);
			$Rol  = $usuario->sanitize($_POST['rol']);
			$Username  = $usuario->sanitize($_POST['user']);
			$Password  = $usuario->sanitize(sha1($_POST['pass']));

			$res = $usuario->create($Nombre,$Apellido, $Rol, $Username, $Password);

			if ($res) {
				
				$message = "Agregado con éxito";
				$class = "alert alert-success";
				//header("Location: create.php");


			}

			else{
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
       
			
		

     <div class="card card-body">
     	<form action="#" method="POST">
     		

     		<div class="form-group">
     			<center><label for="">Nombre</label></center>
     			<input type="text" name="nombre" class="form-control" autofocus>
     		</div>

     		<div class="form-group">
     			<center><label for="">Apellido</label></center>
     			<input type="text" name="apellido" class="form-control" autofocus>
     		</div>

     		<div class="form-group">
     			<center><label for="">Rol</label></center>
     			<select name="rol" id="" class="form-control">
     				<option>Doctor</option>
     				<option>Secretaria</option>
     				<option>Usuario</option>
     				<option>Administrador</option>
     			</select>
     		</div>

     		<div class="form-group">
     			<center><label for="">Nombre de usuario</label></center>
     			<input type="text" name="user" class="form-control" autofocus>
     		</div>


     		

     		<div class="form-group">
     			<center><label for="">Contraseña</label></center>
     			<input type="password" name="pass" class="form-control" autofocus>
     		</div>

     		<input type="submit" class="btn btn-success btn-block" value="Registrar" name="b1">
     		<br><br>
     		<a href="Logout.php"><input type="button" class="btn btn-primary" value="Salir"></a></a>

     	</form>
     </div>

	</div>

	<div class="col-md-8">
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Rol</th>
					<th>User name</th>
					<th>Contraseña</th>
					<th>Acciones</th>
				</tr>
			</thead>

			<tbody>


 
        <?php

		
		//$listado = $usuario->read();

        while($row = mysqli_fetch_object($listado)){
        	$id = $row->Id_Usuario;
        	$nombre = $row->Nombre;
        	$rol = $row->Rol;
        	$user = $row->NombreUsuario;
        	$pass = $row->Password;
        

        ?>

        <tr>
							<td><?php echo $nombre; ?></td>
							<td><?php echo $rol; ?></td>
							<td><?php echo $user; ?></td>
							<td><?php echo $pass;?></td>
							<td>
								
								<a href="update.php?id=<?php echo $id;?>" class="btn btn-secondary">
									<i class="fas fa-marker"></i>
								</a>
								<a href="deleteUsers.php?id=<?php echo $id;?>" class="btn btn-danger">
									<i class="far fa-trash-alt"></i>
								</a>


							</td>
						</tr>

        <?php

    }

        ?>
			


<?php

include ("includes/footer.php");

?>