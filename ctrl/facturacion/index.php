<?php
session_start();
include_once("../../funciones.php");


validar_permanencia();
conectar_bd();


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
				$end = 1000 ; 

				if($_GET["buscador"]== "DEUDORES")
					{
					$facturas = Factura::get_facturas_deudores();				
					}
				else
					{
					if($_GET["buscador"]== "TODOS") 
					{
					$_POST["buscador"] = ""; 
					$_GET["buscador"] = "";
					}
					if($_POST["buscador"] != "")$_GET["buscador"] = $_POST["buscador"]; 
					
					if($_GET["tipo_factura"]):
					 $tipo_factura =	$_GET["tipo_factura"];
					$titulo = "LISTADO GENERAL DE FACTURAS";	
					$variable = "FACTURA";
					 else :
					 $tipo_factura = 1;
 					 $variable = "PRESUPUESTO";
					 $titulo = "LISTADO GENERAL DE PRESUPUESTOS";	
					endif;				

					$facturas = Factura::get_facturas($_GET["buscador"],$tipo_factura);	
					}	
			
			//	$total_facturas = Factura::total_facturas();
				Template::draw_header();

				include("../../view/facturacion/list.php");
				#				$template->draw_footer();	
				}
				break;
	
	case "balance_iva":
				{
				if(!isset($_GET["start"])){		
				$start = 0;
				}else{
				$start = $_GET["start"];
				}
				$end = 1000 ; 

				if($_GET["buscador"]== "DEUDORES")
					{
					$facturas = Factura::get_facturas_deudores();				
					}
				else
					{
					if($_GET["buscador"]== "TODOS") 
					{
					$_POST["buscador"] = ""; 
					$_GET["buscador"] = "";
					}
					if($_POST["buscador"] != "")$_GET["buscador"] = $_POST["buscador"]; 
					
				//	if($_GET["tipo_factura"]) $tipo_factura =	$_GET["tipo_factura"];else $tipo_factura = 1;
									

					$facturas = Factura::get_facturas($_GET["buscador"],"iva",$_GET["anio"],$_GET["mes"]);	
					}	
			
			//	$total_facturas = Factura::total_facturas();
				Template::draw_header();

				include("../../view/facturacion/balance_iva.php");
				#				$template->draw_footer();	
				}

		break;
	case "new" :
				{
				// Muestra el formulario de NUEVO
				$factura = new Factura;
#				$template->draw_header();
#				include($template->get_vista_url ("factura/navegador.php"));
#				include($template->get_vista_url ("FACTURA/panel/navegador.php"));
				$mensaje_cabezera = "ALTA DEL FACTURA";
				$boton=true;
				$cambio = "nuevo";
				$provincias = Factura::get_provincias();
				$vendedores = Factura::get_vendedores();
				$deshabilitado = "";
				$idTipo = "";
				$nombre="";
				$domicilio="";
				$idLocalidad = "";
				$idProvincia="";
				$pais="";
				$cp="";
				$telefono="";
				$telefono2="";
				$contacto="";
				$mail = "";
				$web="";
				$activo="";
				$observaciones="";
				$idVendedor="";
				$descuento="";
				$nro_cuit="";
				$condicion_iva="";

			//	$gerarquia = Factura::gerarquia_Factura($_Factura->id);
				Template::draw_header();
			
				include("../../view/facturacion/abm.php");
#				$template->draw_footer();
				}
				break;

	case "detail" :
				{
				// ESPERA UN ID
				$factura = new Factura($_GET["id"]);
			
					$mensaje_cabezera = "DETALLE DEL FACTURA";  		
					$cambio = "";
					$boton=false;		
					$detalle = true;
					$deshabilitado = "disabled";

					$provincias = Factura::get_provincias();
					$vendedores = Factura::get_vendedores();
					$idTipo = $factura->get_idTipo();
					$nombre= $factura->get_nombre();
					$domicilio= $factura->get_domicilio();
					$idLocalidad = $factura->get_idLocalidad();
					$idProvincia= $factura->get_idProvincia();
					$pais= $factura->get_pais();
					$cp= $factura->get_cp();
					$telefono= $factura->get_telefono();
					$telefono2= $factura->get_telefono2();
					$contacto= $factura->get_contacto();
					$mail = $factura->get_mail();
					$web= $factura->get_web();
					$activo= $factura->get_activo();
					$observaciones=$factura->get_observaciones();
					$idVendedor=$factura->get_idVendedor();
					$descuento=$factura->get_descuento();
					$nro_cuit=$factura->get_nro_cuit();
					$condicion_iva=$factura->get_condicion_iva();

					Template::draw_header();
					include("../../view/facturacion/abm.php");
				}
				break;
	case "modify" :
				{
				// ESPERA UN ID
					$factura = new Factura($_GET["id"]);
				
					$mensaje_cabezera = "MODIFICACION DEL FACTURA";
					$cambio = "modificar";
					$detalle = false;
					$boton=true;							
					$deshabilitado = "";
	
					$provincias = Factura::get_provincias();
					$vendedores = Factura::get_vendedores();				
					$idTipo = $factura->get_idTipo();
					$nombre= $factura->get_nombre();
					$domicilio= $factura->get_domicilio();
					$idLocalidad = $factura->get_idLocalidad();
					$idProvincia= $factura->get_idProvincia();
					$pais= $factura->get_pais();
					$cp= $factura->get_cp();
					$telefono= $factura->get_telefono();
					$telefono2= $factura->get_telefono2();
					$contacto= $factura->get_contacto();
					$mail = $factura->get_mail();
					$web= $factura->get_web();
					$activo= $factura->get_activo();
					$observaciones=$factura->get_observaciones();
					$idVendedor=$factura->get_idVendedor();
					$descuento=$factura->get_descuento();
					$nro_cuit=$factura->get_nro_cuit();
					$condicion_iva=$factura->get_condicion_iva();

					Template::draw_header();
					include("../../view/facturacion/abm.php");

				}
				break;

	case "delete" :
				{
				// ESPERA UN ID
				// No icluye Vista, Borra directo..
				Factura::erase($_GET["id"]);
				//ingreso un registro en el log
				$hoy = date("Y-m-d G:i:s"); 
				$texto = "Baja Factura".$_GET["id"];
		//		mysql_query("insert into log values(null,".$_Factura->get_id().",'".$texto."', '".$hoy."')");
				header("Location: index.php");
				}
				break;
				
	case "insert":
				{
						$Factura = new Factura;
						$Factura->nuevo_factura($_POST,1);
					//ingreso un registro en el log
					$hoy = date("Y-m-d G:i:s"); 
					$texto = "Alta nuevo Factura ";
	//				mysql_query("insert into log values(null,".$_Factura->get_idFactura().",'".$texto."', '".$hoy."')");
					header("Location: index.php");								
#					$_SESSION["usuario"] = serialize($usuario);

				}
				break;
				
				
	case "update":
				{
					$factura = new Factura($_GET["id"]);

					$factura->set_nombre($_POST['nombre']);
					$factura->set_domicilio($_POST['domicilio']);
					$factura->set_idLocalidad($_POST['cmbLocalidad']);
					$factura->set_idProvincia($_POST['cmbProvincia']);
					$factura->set_cp($_POST['cp']);
					$factura->set_telefono($_POST['telefono']);
					$factura->set_telefono2($_POST['telefono2']);
					$factura->set_contacto($_POST['contacto']);
					$factura->set_mail($_POST['mail']);
					$factura->set_web($_POST['web']);
					$factura->set_observaciones($_POST['observaciones']);
					$factura->set_idVendedor($_POST['idVendedor']);
					$factura->set_descuento($_POST['descuento']);
					$factura->set_nro_cuit($_POST['nro_cuit']);
					$factura->set_condicion_iva($_POST['condicion_iva']);

					$factura->save();

					//ingreso un registro en el log
					$hoy = date("Y-m-d G:i:s"); 
					$texto = "Modificacion Factura ".$_GET["id"];
//					mysql_query("insert into log values(null,".$_Factura->get_id().",'".$texto."', '".$hoy."')");

					//	if($Factura->get_id_tipo() != 1 ){
						header("Location: index.php");
					//	}else{
					//	header("Location: index.php?accion=detail&id=".$_Factura->idFactura);
					//	}
				}
				break;

				
	case "nueva_factura":
				{

				// ESPERA UN ID
				$factura = new Factura();
			
					$mensaje_cabezera = "NUEVO PRESUPUESTO";  		
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";

			//		$productos_virtuales =	Factura::get_productos_virtuales();

					Template::draw_header();
					include("../../view/facturacion/nueva_factura.php");
				
				}
				break;
	
	case "generar_factura":
				{

				// ESPERA UN ID
					$factura = new Factura($_GET["id"]);
					$_id_factura =Factura::generar_factura2($_POST);
					$mensaje_cabezera = "FACTURA GENERADA";
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
//					$productos_virtuales =	Factura::get_productos_virtuales();
		//			jsCommand(javascript:popUp('../../pdf/presupuesto.php?idFactura=<?= $factura["id"] ? >'));
					$_id=$_GET["id"];

			//		jsCommand("alert('holaaaaaa');");					
					$_variable = true;
					
				// ESPERA UN ID
				$factura = new Factura();
				
					$mensaje_cabezera = "NUEVO PRESUPUESTO";  		
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";

						if($_id_factura):
							Template::draw_header(true, $_id_factura);                                            
						else:
							Template::draw_header();                                                                                        
						endif;
                                        

					include("../../view/facturacion/nueva_factura.php");					
					$_variable = false;						
//					header("Location: index.php");				
				}
				break;
	case "generar_factura_sin_imprimir":
				{

				// ESPERA UN ID
					$factura = new Factura($_GET["id"]);
					$_id_factura =Factura::generar_factura2($_POST);
					$mensaje_cabezera = "FACTURA GENERADA";
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
//					$productos_virtuales =	Factura::get_productos_virtuales();
		//			jsCommand(javascript:popUp('../../pdf/presupuesto.php?idFactura=<?= $factura["id"] ? >'));
					$_id=$_GET["id"];

			//		jsCommand("alert('holaaaaaa');");					
					$_variable = true;
					
				// ESPERA UN ID
				$factura = new Factura();
			
					$mensaje_cabezera = "NUEVO PRESUPUESTO";  		
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";

			//		$productos_virtuales =	Factura::get_productos_virtuales();
//					../../pdf/presupuesto.php?idFactura=45

        					Template::draw_header();                                            

					include("../../view/facturacion/nueva_factura.php");					
					$_variable = false;						
//					header("Location: index.php");				
				}
				break;

	case "insert_pago":
				{

				// ESPERA UN ID
					$factura = new Factura($_GET["id"]);
					Factura::generar_factura_pago($_GET["id"],$_POST);
					$mensaje_cabezera = "PAGO FACTURA GENERADO";
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
//					$productos_virtuales =	Factura::get_productos_virtuales();

								
					$_id = $_GET["id"];
					header("Location: index.php?accion=facturas&id=$_id");

				
				}
				break;

	case "facturas" :
		{
					$factura = new Factura($_GET["id"]);
					$nombre= $factura->get_nombre();

				$facturas = Factura::facturas_x_factura($_GET["id"]);	

				Template::draw_header();

				include("../../view/facturacion/facturas.php");
	
		}
		break;

	case "factura_detalle" :
		{
				$factura = new Factura($_GET["idfactura"]);
				$cliente = new Cliente($factura->get_idCliente());
				$productos_facturas = $factura->get_productos_x_factura($factura->get_id());

				include("../../view/facturacion/factura_detalle.php");
	
		}
		break;

	case "listado_deuda_facturas" :
		{
//					$factura = new Factura($_GET["id"]);

				$facturas = Factura::facturas_adeudadas();

				include("../../view/facturacion/facturas_adeudadas.php");
	
		}
		break;

	case "imprimir_factura" :
		{
				$factura = new Factura($_GET["id"]);
				$factura = new Factura($_GET["idfactura"]);
				$productos = Factura::get_productos_x_factura($_GET["idfactura"]);

				include("../../view/facturacion/planilla.php");
	
		}

		break;

	case "imprimir_remito" :
		{
				$factura = new Factura($_GET["id"]);
				$factura = new Factura($_GET["idfactura"]);
				$productos = Factura::get_productos_x_factura($_GET["idfactura"]);

				include("../../view/facturacion/remito.php");
	
		}

		break;

	case "facturar_registro" :
				{
				// Muestra el formulario de NUEVO
			//	$producto = new Producto;
				$mensaje_cabezera = "FACTURAR PRESUPESTO";
				$boton=true;
				$cambio = "nuevo";
				$deshabilitado = "";

			$facturas = Factura::get_factura_by_id($_GET["id"]);
				
				$id= $facturas["id"];
				$n_remito = $facturas["n_remito"];
				$n_factura= $facturas["n_factura"];
				$condicion_venta= $facturas["condicion_venta"];
				$orden_compra= $facturas["orden_compra"];
				$importe_total= $facturas["importe"];
				$productos_facturas = Factura::get_productos_x_factura($facturas["id"]);

				include("../../view/facturacion/facturar_registro.php");

				}
				break;

	}
?>