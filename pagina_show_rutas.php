<!DOCTYPE html>
<html>
<head>
	<title>Club MTB Rutas</title>
	<meta charset="utf-8">
	<meta name="autor" content="Jesus Cañizares Gallego">
	<meta http-equiv="refresh" content="1000">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<?php
		$id= $_GET['id']; //Variable que es enviada en href php, recogida en $id.	 	
		$conex = new mysqli("localhost","root","","mtbdb");
		$conex->set_charset("utf8"); //configurar conexion a utf8
		if ($conex -> connect_errno)
		{ 				echo 'Conexion no Establecida';
			echo $conex -> connect_error;
			echo "Error de conexion a base de datos, contacte con su administrador Web, disculpe las molestias";
		}			
		$cad= "select * from rutas_mtb where id='".$id."'";	
		$resultado=$conex->query($cad);
		$fila = $resultado->fetch_assoc();
		$fechaFormateada = $fila['fecha'];				

		echo '	<div id="pagina_pag_aux">
					<a href="index1.php">
							<div id="cabecera">
									<div id="contenedor_logo_cabecera">
										<img id= "logo" src="image/logo.jpg" alt="no image">	
									</div>
							</div></a>
					<div id="bloque_pag_aux">
								<p class="titulo_pag_aux">'.$fila['titulo_ruta'].'</p>
								<p class="fecha_pag_aux">';
									echo substr($fechaFormateada, 8,2).' de '; 
									echo mes(substr($fechaFormateada, 5,2)).' del '.substr($fechaFormateada,0,4).'
								</p>
								<p class="descripcion_pag_aux">'.$fila['descripcion_ruta'].'</p>
								<p class="descripcion_pag_aux">Algunas Fotos.....</p>
								<div class="contenedor_imagen_pag_aux"><img class="imagen_pag_aux" src="'.$fila['imagen1'].'" alt="no image"></div>
								<div class="contenedor_imagen_pag_aux"><img class="imagen_pag_aux" src="'.$fila['imagen2'].'" alt="no image"></div>
								<div class="contenedor_imagen_pag_aux"><img class="imagen_pag_aux" src="'.$fila['imagen3'].'" alt="no image"></div>
								<div class="contenedor_imagen_pag_aux"><img class="imagen_pag_aux" src="'.$fila['imagen4'].'" alt="no image"></div>
					</div>
				</div>';
		
		$conex->close();
		
		function mes($m) /*Funcion para mostrar meses en castellano*/
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
</body>
</html>
