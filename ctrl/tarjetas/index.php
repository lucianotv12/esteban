<?php
session_start();
include_once("../../funciones.php");

validar_permanencia();
conectar_bd();
//validar_permanencia();
//validar_permanencia_admin();
//$_tarjeta = unserialize($_SESSION["tarjeta"]);

#$template = new Template();

if(!isset($_GET["accion"]))$accion= "list";
else $accion = $_GET["accion"];
$detalle = false;
switch($accion)
	{
	case "list" :
				{				
				if(!isset($_GET["start"])){		
				$start = 0;
				}else{
				$start = $_GET["start"];
				}
				$end = 5 ; 
				$tarjetas = Tarjeta::get_tarjetas($start,$end);	
				$total_tarjetas = Tarjeta::total_tarjetas();
				Template::draw_header();
				include("../../view/tarjetas/list.php");
				}
				break;
	case "new" :
				{
				// Muestra el formulario de NUEVO
				$tarjeta = new Tarjeta;
				$mensaje_cabezera = "ALTA DE LA TARJETA";
				$boton=true;		
				$cambio = "nuevo";
				$deshabilitado = "";
				$nombre="";
				$cuotas="";
				$recargo="";
				$activo="";
					
					Template::draw_header();
					include("../../view/tarjetas/abm.php");

				}
				break;

	case "modify" :
				{
				// ESPERA UN ID
					$tarjeta = new Tarjeta($_GET["id"]);
				
					$mensaje_cabezera = "MODIFICACION DE LA TARJETA";
					$cambio = "modificar";
					$detalle = false;
					$boton=true;							
					$deshabilitado = "";
					$nombre = $tarjeta->get_nombre();
					$cuotas=$tarjeta->get_cuotas();
					$recargo = $tarjeta->get_recargo();
					$activo=$tarjeta->get_activo();
					Template::draw_header();
					include("../../view/tarjetas/abm.php");

				}
				break;

	case "delete" :
				{
				// ESPERA UN ID
				// No icluye Vista, Borra directo..
				$tarjeta = new Tarjeta($_GET["id"]);
				$tarjeta->erase();
				//ingreso un registro en el log
				$hoy = date("Y-m-d G:i:s"); 
				$texto = "Baja tarjeta".$_GET["id"];

				header("Location: index.php");
				}
				break;
				
	case "insert":
				{
					$tarjeta = new Tarjeta;
					$tarjeta->nueva_tarjeta($_POST);
					//ingreso un registro en el log
					$hoy = date("Y-m-d G:i:s"); 
					$texto = "Alta nueva tarjeta ";

					header("Location: index.php");								

				}
				break;
				
				
	case "update":
				{
					$tarjeta = new tarjeta($_GET["id"]);

					$tarjeta->set_nombre = $_POST['nombre']; 
					$tarjeta->set_cuotas = $_POST['cuotas']; 
					$tarjeta->set_recargo = $_POST['recargo']; 
					$tarjeta->set_activo = $_POST['activo']; 
					$tarjeta->save();
					
					header("Location: index.php");	
				}
	}
?>