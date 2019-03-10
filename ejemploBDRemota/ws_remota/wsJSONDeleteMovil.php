<?PHP
$hostname_localhost ="localhost";
$database_localhost ="id8301344_tutorial_ws";
$username_localhost ="id8301344_amacor521";
$password_localhost ="123456";


	if(isset($_GET["documento"])){
		$documento=$_GET["documento"];
				
		$conexion = mysqli_connect($hostname_localhost,$username_localhost,$password_localhost,$database_localhost);

		$sql="DELETE FROM usuario WHERE documento= ? ";
		$stm=$conexion->prepare($sql);
		$stm->bind_param('i',$documento);
			
		if($stm->execute()){
			echo "elimina";
		}else{
			echo "noElimina";
		}
		
		mysqli_close($conexion);
	}
	else{
		echo "noExiste";
	}

?>

