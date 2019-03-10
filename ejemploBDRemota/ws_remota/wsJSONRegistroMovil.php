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

	$sql="INSERT INTO usuario VALUES (?,?,?,?,?)";
	$stm=$conexion->prepare($sql);
	$stm->bind_param('issss',$documento,$nombre,$profesion,$bytesArchivo,$url);
		
	if($stm->execute()){
		echo "registra";
	}else{
		echo "noRegistra";
	}
	
	mysqli_close($conexion);
?>

