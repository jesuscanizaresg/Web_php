<!DOCTYPE html>
<html>
<head>
	<title>Club MTB Registro</title>
	<meta charset="utf-8">
	<meta name="autor" content="Jesus Cañizares Gallego">
	<meta http-equiv="refresh" content="30">
	<meta name="pagina REGISTRO" content="pagina registro">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>

<body>
	<?php
			if(isset($_POST['email']))
			{
				$conex = new mysqli("localhost","root","","mtbdb");
				if ($conex -> connect_errno)
				{ 
					echo 'Conexion no Establecida';
					echo $conex -> connect_error;	// Else para indicar error de conexion*/
				}		
				$email= strtolower($_POST['email']);
				$nombre= $_POST['nombre'];
				$apellido1= $_POST['apellido1'];
				$apellido2= $_POST['apellido2'];
				$telefono= $_POST['telefono'];
				$direccion= $_POST['direccion'];
				$pass= $_POST['password'];

				$cad= "select * from usuarios_mtb where email='".$email."'";
				
				$resultado=$conex->query($cad);
				$fila = $resultado->fetch_assoc();
				
				if (($_POST['password']) == ($_POST['password2'])) /* Comprueba si ha introducido bien los password*/
				{
						if (($fila['email'])==$email) /*Comprueba si el usuario estaba ya registrado (email)*/
						{
							$registrado = 1; // Variable para mensaje en pantalla de registro completado o error.
						}
						else
						{
							$cad="INSERT INTO usuarios_mtb VALUES('".$email."','".$nombre."','".$apellido1."','".$apellido2."','".$telefono."','".$direccion."','".$pass."')";
							$conex->query($cad);
							$registrado = 0; //Mensaje Usuario registrado en base de datos.
						}
						$conex->close();
				}
				else
				{
					$registrado =3; // Mensaje de contraseñas no coinciden
				}
			}
			else
			{
				$registrado = 2;	//Mensaje de espera a introduccion de datos
			} 
	?>

	<div id="pagina_registro">
		<a href="index1.php">		
			<div id="cabecera">
				<div id="contenedor_logo_cabecera">
					<img id= "logo" src="image/logo.jpg" alt="no image">	
				</div>
			</div></a>
		<div id="cuerpo_registro">
			<div class="bloque_registro">
				<form action="pagina_registro.php" method="post">
				<table>
					<tr>
						<td colspan="2" align="center">Por favor Introduzca datos</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>
							<input type="text" name="email" required>
						</td>
					</tr>
					<tr>
						<td>Nombre</td>
						<td>
							<input type="text" name="nombre" required>
						</td>
					</tr>
					<tr>
						<td>Apellido 1</td>
						<td>
							<input type="text" name="apellido1" required>
						</td>
					</tr>
					<tr>
						<td>Apellido 2</td>
						<td>
							<input type="text" name="apellido2">
						</td>
					</tr>
					<tr>
						<td>Telefono</td>
						<td>
							<input type="text" name="telefono">
						</td>
					</tr>
					<tr>
						<td>Direccion</td>
						<td>
							<input type="text" name="direccion">
						</td>
					</tr>
					<tr>
						<td>Password</td>
						<td>
							<input type="password" name="password" required>
						</td>
					</tr>
					<tr>
						<td>Check Password</td>
						<td>
							<input type="password" name="password2" required>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						
								<input type="submit" value="Enviar datos"> 
								<input type="reset" id="reset" value="Reset datos">
						
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<?php
								switch ($registrado) 
								{
									case 1:
										{
											echo 'Error, el email ya esta en uso.';
											break; 
										}
									case 0:
										{
											echo 'Usuario registrado en la base de datos';
											break; 
										}
									case 3:
										{
											echo "Error. Las contraseñas no coincicen.";
										}
																		
									default:
										echo '.  .';
										break;
								}
							?>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<a href="index1.php">Volver a página principal</a>
						</td>
					</tr>		
				</table>
				</form>				
			</div>
		</div>
	</div>
</body>
</html>