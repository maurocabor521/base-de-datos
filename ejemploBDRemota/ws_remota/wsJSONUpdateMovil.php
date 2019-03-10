<?PHP
$hostname_localhost ="localhost";
$database_localhost ="id8301344_tutorial_ws";
$username_localhost ="id8301344_amacor521";
$password_localhost ="123456";

$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

	$documento = $_POST["documento"];
	$nombre = $_POST["nombre"];
	$profesion = $_POST["profesion"];
	$imagen = $_POST["imagen"];

	$path = "imagenes/$nombre.jpg";

	//$url = "http://$hostname_localhost/ejemploBDRemota/$path";
	$url = "imagenes/".$nombre.".jpg";

	file_put_contents($path,base64_decode($imagen));
	$bytesArchivo=file_get_contents($path);

	$sql="UPDATE usuario SET nombre= ? , profesion= ?, imagen=?, ruta_imagen=? WHERE documento=?";
	$stm=$conexion->prepare($sql);
	$stm->bind_param('ssssi',$nombre,$profesion,$bytesArchivo,$url,$documento);
		
	if($stm->execute()){
		echo "actualiza";
	}else{
		echo "noActualiza";
	}
	mysqli_close($conexion);
?>

