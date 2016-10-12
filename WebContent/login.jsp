<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    	<!--[if lt IE 9]>
      		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    	<![endif]-->
		
		<title>ModeloApp</title>
		
	</head>
	
	<body>

	<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation" class="active"><a href="#">Home</a></li>
					<li role="presentation"><a href="#">About</a></li>
					<li role="presentation"><a href="#">Contact</a></li>
				</ul>
			</nav>
			<h3 class="text-muted">Project name</h3>
		</div>

		<div class="jumbotron">
			<h1>Login</h1>
			<%
				String error = (String) request.getAttribute("error");
				if (error != null) {
			%>
				<div class="alert alert-danger alert-dismissible" role="alert">
  					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  					<strong>Error de Login:</strong> El usuario y la clave no coinciden.
				</div>
			<%
				}
			%>
			
			<form>
				<input type="hidden" name="accion" value="login" />
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
				<input
					type="text" class="form-control" placeholder="Usuario" name="usuario"
					aria-describedby="basic-addon1">
			</div>
			<br/>
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span></span> <input
					type="password" class="form-control" placeholder="Clave" name="clave"
					aria-describedby="basic-addon1">
			</div>
			<br/>
			<button type="submit" class="btn btn-primary btn-lg">Login</button>
			</form>
		</div>
		<footer class="footer">
        <p>&copy; 2016 Academia 19e37.com</p>
      </footer>
    </div> <!-- /container -->


		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-3.1.1.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
</body>
</html>