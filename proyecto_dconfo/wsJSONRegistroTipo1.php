<?PHP
$hostname_localhost="localhost";
$database_localhost="dconfo_proyecto";
$username_localhost="root";
$password_localhost="";

$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

	$idejercicio = $_POST["idEjercicio"];
	$nameejercicio = $_POST["nameEjercicio"];
	$iddocente = $_POST["docente_iddocente"];
	$idactividad = $_POST["Actividad_idActividad"];
	$idtipo = $_POST["Tipo_idTipo"];
	$imagen = $_POST["imagen"];
	$cantidadValidaEG1=_POST["cantidadValidaEG1"]
	$oracion=_POST["oracion"]

	$path = "imagenes/$nombre.jpg";

	$url = "http://$hostname_localhost/proyecto_dconfo/$path";
	//$url = "imagenes/".$nombre.".jpg";

	file_put_contents($path,base64_decode($imagen));
	$rutaArchivo=file_get_contents($path);

	$sql="INSERT INTO ejerciciog1 VALUES (?,?,?,?,?,?,?)";
	$stm=$conexion->prepare($sql);
	$stm->bind_param('siiisis',$nameejercicio,$iddocente,$idtipo,$idactividad,$url,$cantidadValidaEG1,$oracion);
		
	if($stm->execute()){
		echo "registra";
	}else{
		echo "noRegistra";
		print_r($stm);
	}
	
	mysqli_close($conexion);
?>

