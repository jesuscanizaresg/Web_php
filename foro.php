<!DOCTYPE html>
<html>
<head>
	<title>Club MTB FORO</title>
	<meta charset="utf-8">
	<meta name="autor" content="Jesus Cañizares Gallego">
	<meta name="pagina FORO" content="Foro">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>

<body>
	<?php
			session_start();
			if(isset($_SESSION['usermtb']))
			{
				$estado = 1; //Estado para control de mensaje en página foro
			}		
			else
			{
				$estado =0; //estado para control de mensaje en página foro
			}
	?>
	<div id="pagina_pag_aux">
		<a href="index1.php">
			<div id="cabecera">
				<div id="contenedor_logo_cabecera">
					<img id= "logo" src="image/logo.jpg" alt="no image">	
				</div>
		</div></a>
			<div id="bloque_pag_aux">
				<table align="center">
					<tr>
						<td colspan="2" align="center">
							<?php

								switch ($estado) 
								{
									case 1:
										{
											echo 'Bienvenido '.$_SESSION['usermtb'].', disculpe las molestias foro en construccion';
											break; 
										}
									case 0:
										{
											echo 'Debe estar registrado para acceder al foro';
											break; 
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