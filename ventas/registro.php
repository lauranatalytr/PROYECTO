<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="utf-8">
	<title>Registro de usuario</title>
	<script src="librerias/jquery-3.2.1.min.js"></script>
	<script src="js/funciones.js"></script>
</head>
<body style="background-color: olive">
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="panel panel-danger">
					<div class="panel panel-heading">Registro Usuarios Fruver</div>
					<div class="panel panel-body">
						<form id="frmRegistro">
							<p>
								<img src="img/Fruver.jpg" height="250px">
							</p>
							<label>Nombre:</label>
							<input type="text" class="form-control input-sm" name="nombre" id="nombre">
							<label>Apellido:</label>
							<input type="text" class="form-control input-sm" name="apellido" id="apellido">
							<label>Usuario:</label>
							<input type="text" class="form-control input-sm" name="usuario" id="usuario">
							<label>Password:</label>
							<input type="password" class="form-control input-sm" name="password" id="password">
							<p></p>
							<span class="btn btn-primary" id="registro">Registrar</span>
							<a href="index.php" class="btn btn-default">Regresar Login</a>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">
	$(document).ready(function(){
		$('#registro').click(function(){

			vacios=validarFormVacio('frmRegistro');
			if(vacios > 0){
				alert("Todos los campos son obligatorios");
				return false;
			}

			datos = $('#frmRegistro').serialize();
			$.ajax({
				type:"POST",
				data:datos,
				url:"procesos/regLogin/registrarUsuarios.php",
				success:function(r){
					alert(r);
					if(r==1){
						alert("Agregado con exito :)");
					}else{
						alert("Fallo al agregar :'(");
					}

				}
			});
		});
	});
</script>