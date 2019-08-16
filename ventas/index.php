<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="librerias/bootstrap/css/bootstrap.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta charset="utf-8">
	<title>Login de usuario</title>
	<script src="librerias/jquery-3.2.1.min.js"></script>
</head>
<body style="background-color: olive">
	<br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="panel panel-primary">
					<div class="panel panel-heading">Sistema de ventas</div>
					<div class="panel panel-body">
						<p>
							<img src="img/Fruver.jpg" height="250px">
						</p>
						<form id="frmLogin">
							<label>Usuario</label>
							<input type="text" class="form-control input-sm" name="usuario" id="usuario">
							<label>Password</label>
							<input type="password" class="form-control input-sm" name="password" id="password">
							<p></p>
							<span class="btn btn-primary btn-sm">Entrar</span>
							<a href="registro.php" class="btn btn-danger btn-sm">Registro</a>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
	</div>



</body>
</html>