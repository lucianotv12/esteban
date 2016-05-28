<?php
class Tarjeta { 
	var $id; 
	var $nombre; 
	var $cuotas; 
	var $recargo; 
	var $activo; 

	function Tarjeta($_id=0) { 
		if ($_id<>0) { 
			$query_carga= "select * from tarjetas_credito where id=$_id"; 
			$result_carga = mysql_query($query_carga); $datos_carga = mysql_fetch_assoc($result_carga); 
			$this->id = $datos_carga['id']; 
			$this->nombre = $datos_carga['nombre']; 
			$this->cuotas = $datos_carga['cuotas']; 
			$this->recargo = $datos_carga['recargo']; 
			$this->activo = $datos_carga['activo']; 
		} 
	} 
	function save() {//Guarda o inserta segun corresponda 
		if ($this->id<>0) { 
			$query_save = "update tarjetas_credito set nombre = $this->nombre, cuotas = $this->cuotas, recargo = $this->recargo, activo = $this->activo where id=$this->id";
			mysql_query($query_save) or die(mysql_error()); 
		} else { 
			$query_save = "insert into tarjetas_credito values (null, $this->nombre, $this->cuotas, $this->recargo, $this->activo)"; 
			mysql_query($query_save) or die(mysql_error()); 
			$this->id = mysql_insert_id(); 
		} 
	} 
	
	function erase()
	{//Borra el CONTACTO, segun el ID, 
	if ($this->id<>0)
		{
			$query_erase = "DELETE FROM tarjetas_credito WHERE id = $this->id ";
			mysql_query($query_erase) or die(mysql_error());
		}
	
	}	
	function nueva_tarjeta($_PARAM)
	{ 
		$tarjeta = new Tarjeta ();

		$tarjeta->set_nombre = $datos_carga['nombre']; 
		$tarjeta->set_cuotas = $datos_carga['cuotas']; 
		$tarjeta->set_recargo = $datos_carga['recargo']; 
		$tarjeta->set_activo = $datos_carga['activo']; 
		$tarjeta->save();	
	}



/*---GETTERS--------------------------------------------------------------*/ 
	function get_id() { return($this->id); } 
	function get_nombre() { return($this->nombre); } 
	function get_cuotas() { return($this->cuotas); } 
	function get_recargo() { return($this->recargo); } 
	function get_activo() { return($this->activo); } 

/*------------------------------------------------------------------------*/ 

/*---SETTERS--------------------------------------------------------------*/ 
	function set_id($_id) { $this->id = $_id; } 
	function set_nombre($_nombre) { $this->nombre = $_nombre; }
	function set_cuotas($_cuotas) { $this->cuotas = $_cuotas; } 
	function set_recargo($_recargo) { $this->recargo = $_recargo; } 
	function set_activo($_activo) { $this->activo = $_activo; } 
/*------------------------------------------------------------------------*/


}


?>