<?PHP
$hostname_localhost ="localhost";
//$database_localhost ="dconfo_proyecto";
$database_localhost ="dconfo_proyecto_v1";
$username_localhost ="root";
$password_localhost ="";

$json=array();
				
		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$consulta="select idEjercicio,nameEjercicio,docente_iddocente,Actividad_idActividad,Tipo_idTipo from ejercicio";

		$resultado=mysqli_query($conexion,$consulta);
		//print_r("col:".$resultado->num_rows);
		while($registro=mysqli_fetch_array($resultado)){
			$json['ejercicio'][]=$registro;
			//echo $registro['id'].' - '.$registro['nombre'].'<br/>';
			//print_r("col:".$resultado->num_rows);
		}
		mysqli_close($conexion);
		echo json_encode($json);
?>

