<!DOCTYPE html>
<html>
<head>
	<title>Club MTB</title>
	<meta charset="utf-8">
	<meta name="autor" content="Jesus Cañizares Gallego">
	<meta http-equiv="refresh" content="10000">
	<meta name="keywords" content="mtb,rutas,bici,montaña">
	<meta name="description" content="Página dinámica con divs">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>

<body>
	<?php
		$conex = new mysqli("localhost","root","","mtbdb");
		$conex->set_charset("utf8"); //configurar conexion a utf8

		if ($conex -> connect_errno)
		{
			echo 'Conexion no establecida';
			echo $conex -> connect_errno;
		}
	?>
	<div id="pagina_general">
			<div id="cabecera">
					<a name="Ir arriba"></a>
				<a href="index1.php">
					<div id="contenedor_logo_cabecera">
							<img id="logo" src="image/logo.jpg" alt="no image">
					</div>
				</a>
				<div id="menu_principal">
					<div class="boton_menuprincipal"><a href="index1.php">Inicio</a></div>
					<div class="boton_menuprincipal"><a href="#RUTAS">Rutas</a></div>
					<div class="boton_menuprincipal"><a href="foro.php">Foro</a></div>
					<div class="boton_menuprincipal"><a href="#Ir abajo">Contacto</a></div>
					<div class="boton_menuprincipal"><a href="pagina_registro.php">Registro</a></div>
				</div>
			</div>
		<div id="barra_registro_usuario">
			<?php
				session_start();
				if (isset($_POST['cerrarSesion']))
				{	
					unset($_SESSION['usermtb']);
				}

				if(isset($_SESSION['usermtb']))
				{
					echo '<form action="index1.php" method="POST">
								<table align="right">
									<tr>
										<td>Bienvenido de nuevo: '.$_SESSION['usermtb'].'    </td>
										<td><input type="submit" value="CerrarSesion" name="cerrarSesion">
									</tr>
								</table>
							</form>';
				}
				else
				{
							if(isset($_POST['emailBarra']))
							{	
								$sql = "select nombre,email,pass from usuarios_mtb where email='".$_POST['emailBarra']."' and pass='".$_POST['passBarra']."'" ;
								$resultado = $conex->query($sql);
								$fila = $resultado->fetch_assoc();
								$emaildb = $fila['email'];
								$passdb = $fila['pass'];
								$nombredb = $fila['nombre'];

										if((($_POST['emailBarra']) == $emaildb) && (($_POST['passBarra']) == $passdb))
										{
											$_SESSION['usermtb']=$nombredb;
											echo '<form action="index1.php" method="POST">
													<table align="right">
														<tr>
															<td>Bienvenido de nuevo:  '.$_SESSION['usermtb'].'</td>
															<td><input type="submit" value="CerrarSesion" name="cerrarSesion">
														</tr>
													</table>
												</form>';
										}
										else
										{
											echo '<form action="index1.php" method="POST">
													<table align="right">
														<tr>
															<td>Usuario o contraseña incorrecta.</td>
															<td><a href="index1.php"><span class="texto_azul">Reintentar</span></a></td>
															<td ><a href="pagina_registro.php"><span class="texto_rojo">¿Desea realizar registro en CLUB MTB?</span></a></td>
															</tr>
													</table>
													</form>';
										}
							}
							
							else
							{
								echo'<form action="index1.php" method="post">
										<table align="right">
											<tr>
												<td>EMAIL</td> 
												<td>	
													<input type="text" name="emailBarra" required>
												</td>
												<td>Password</td>
												<td>
													<input type="password" name="passBarra" required>
												</td>
												<td align="center">
														<input type="submit" value="Iniciar Sesion"> 
														<input type="reset" id="reset" value="Reset datos">
												</td>
											</tr>
										</table>
									</form>';
							}
					}
			?>
		</div>

		<div id="bloque_derecha"><!--Ejecución dinamica bloque de noticias con php-->
			<?php
				$sql = "select * from noticias_mtb order by fecha desc";
				$resultado = $conex->query($sql);
				$fila= $resultado->fetch_assoc();
				for ($i = 1; $i<4 ; $i++)
				{
					$fila = $resultado->fetch_assoc();
					echo '<div class="noticia"> <a href="pagina_show.php?id='.$fila['id'].'"><p class="titulo_noticia" >'.$fila['titulo'].'</p>';
					$fechaFormateada = $fila['fecha'];
					echo '<p class="fecha_noticia">'.substr($fechaFormateada, 8,2).' de ';
					echo mes(substr($fechaFormateada, 5,2)).' del '.substr($fechaFormateada,0,4).'</p>';
					echo '<p class="cuerpo_noticia">'.substr(($fila['cuerpo_noticia']),1,150).'....</p>
					</div></a>'; 
				}
			?>
		</div>

		<div id="bloque_izquierda">
				<!--Ejecución dinamica bloque de rutas con php-->
			<?php
				$sql = "select * from rutas_mtb order by fecha desc";
				$resultado = $conex->query($sql);
				for ($i = 1; $i<4 ; $i++)
				{
					$fila = $resultado->fetch_assoc();
					echo '<div class="ruta">
							<a href="pagina_show_rutas.php?id='.$fila['id'].'">
								<p class="titulo_noticia">'.$fila['titulo_ruta'].'</p>
							<img class="imagen_perfil_ruta" src="'.$fila['imagen1'].'"></a>
							</div>';
				}
			?>
		</div>

		<div id="central">
				<?php	
						$sql = "select * from noticias_mtb order by fecha desc";
						$resultado = $conex->query($sql);
						$fila = $resultado->fetch_assoc();
						$fechaFormateada = $fila['fecha'];

					echo '<div id="noticia_central">';
						echo '<span class="titulo_central"><a href="pagina_show.php?id='.$fila['id'].'"><p>'.$fila['titulo'].'</p></a></span>
								<span class="fecha_central">';
									echo substr($fechaFormateada, 8,2).' de ';
									echo mes(substr($fechaFormateada, 5,2)).' del '.substr($fechaFormateada,0,4).'
								</span>
								<div class="contenedor_imagen_central"><img class= "imagen_noticia_central" src="'.$fila['imagen1'].'" alt="no image">
								</div>
								<div class="contenedor_imagen_central"><img class= "imagen_noticia_central" src="'.$fila['imagen2'].'" alt="no image">
								</div>
								<div class="contenedor_imagen_central"><img class= "imagen_noticia_central" src="'.$fila['imagen3'].'" alt="no image">

								</div>

								<div class="texto_noticia_centro">'.$fila['cuerpo_noticia'].'</div>

						</div>';
				?>

			<div id="colaboradores_central">
				<div class="colaboradores">
					<a href="https://muc-off.com/" target="blank"><img class="colaborador_logo" src="colaboradores/logomucoff.png" alt="no image"></a>
				</div>
				<div class="colaboradores">
					<a href="https://www.orbea.com/es-es/#featured/1" target="blank"><img class="colaborador_logo" src="colaboradores/logoorbea.png" alt="no image"></a>
				</div>
				<div class="colaboradores">
					<a href="http://www.isibikes.es/" target="blank"><img class="colaborador_logo" src="colaboradores/logoisibikes.png" alt="no image"></a>
				</div>
			</div>
		</div>

		<div id="abajo">
			<div class="bloque_abajo">
				<ul>
					<li>Contacto: jesuscanizaresdam@gmail.com</li>
					<li>Telefono:555 833838383838</li>
					<li>Dirección: Calle San, Salinas (Alicante)</li>
				</ul>
			</div>
			<div class="bloque_abajo">
				<a name="REGISTRO"></a>
				<a href="#Ir arriba"><p class="texto_azul" align="center">Volver a inicio</a>
				<a name="Ir abajo"></a>
			</div>

		</div>
		<?php 
			$conex->close();
			function mes($m) /*Funcion para mostrar fechas legibles para un latino*/
			{
				switch ($m) 
				{
					case "01":echo "Enero";break;
					case "02":echo "Febrero";break;
					case "03":echo "Marzo";break;
					case "04":echo "Abril";break;
					case "05":echo "Mayo";break;
					case "06":echo "Junio";break;
					case "07":echo "Julio";break;
					case "08":echo "Agosto";break;
					case "09":echo "Septiembre";break;
					case "10":echo "Octubre";break;
					case "11":echo "Noviembre";	break;
					case "12":echo "Diciembre";break;
					default:echo "";break;
				}
			}
		?>
	</div>
</body>
</html>