<?PHP
$hostname_localhost ="localhost";
//$database_localhost ="dconfo_proyecto";
$database_localhost ="dconfo_proyecto_v1";
$username_localhost ="root";
$password_localhost ="";

$conexion=mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

	$idgrupo = $_POST["idgrupo"];
	$namegrupo = $_POST["namegrupo"];
	$curso_idcurso = $_POST["idcurso"];
	$curso_Instituto_idInstituto = $_POST["idinstituto"];
	$idDocente=null;


	$sql="INSERT INTO grupo VALUES (?,?,?,?,?)";
	$stm=$conexion->prepare($sql);
	$stm->bind_param('isiii',$idgrupo,$namegrupo,$curso_idcurso,$curso_Instituto_idInstituto,$idDocente);
		
	if($stm->execute()){
		echo "registra";
	}else{
		echo "noRegistra";
	}
	
	mysqli_close($conexion);
?>

