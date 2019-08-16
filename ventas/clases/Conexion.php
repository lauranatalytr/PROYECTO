<?php 
class conectar{
	private $servidor = "localhost";
	private $user = "root";
	private $password = "";
	private $bd = "inventario";

	public function conexion(){
		$conexion = mysqli_connect($this->servidor,$this->user,$this->password,$this->bd);

		return $conexion;

		}

}


 ?>