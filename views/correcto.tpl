<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>TWoWtter</title>
	</head>
	<body>
		<h1>TWoWtter</h1> 
		<h2>{{nombrepj}} - {{reinopj}}</h2>
		<h3>Último logro obtenido:</h3>
		<h3><img src="http://wow.zamimg.com/images/wow/icons/large/{{icono}}.jpg" alt={{icono}}/>{{titulo}}</img></h3>
		<h4>{{descripcion}}</h4>	
		<input type="button" value="Recargar, si has conseguido algún logro nuevo" onClick="location.reload();"/>
		<br/>
		<h2>Ese es tu último logro, ¿Quieres twittear tu hazaña?</h2>
		<form action="/twittear" method="post">
     		 <p><input type="submit" class="button" value="TWITTEAR" /></p>
    		</form>
	</body>
</html>



 
