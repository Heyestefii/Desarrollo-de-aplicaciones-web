<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css">
	<title>Maps API</title>
	<script type="text/javascript" src="js/googlemap.js"></script>
	<style type="text/css">
		.container {
			height: 550px;
		}
		#map {
			width: 100%;
			height: 100%;
		}
	</style>
</head>
<body>
	<div class="container">
		<br>
		<center><h1 class="text-secondary">Parque fundidora</h1></center>
		<center><p class="text-primary">Parque urbano incluyente y multifuncional, que contribuye a reforzar el tejido social ofreciendo un espacio verde, seguro, y de acceso 100% gratuito.
			<br> Se le ha otorgado el título de Museo de Sitio de Arqueología Industrial por el Instituto Nacional de Antropología e Historia,
			por el valor histórico de las 27 macro estructuras, 127 piezas de maquinaria y herramientas siderúrgicas,
			hoy piezas museográficas, 16 naves y un sinfín de otros activos que conforman este acervo que representa un patrimonio industrial invaluable para Nuevo León.
		</p></center>
		<center><h2 class="text-primary">¡Visitanos pronto!</h2></center>
		<div id="map"></div>
	</div>
</body>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBuSl88esZO18oGKuYlqhN8YMvBGysftI8&callback=loadMap">
</script>
</html>
