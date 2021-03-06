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
                                
                            if(!$_GET['tipo'] or $_GET['tipo'] == "factura"):
                            $_tipo="6";    
                            $mensaje_cabecera = "PROVEEDORES : LISTADO GENERAL DE FACTURAS";
                            elseif($_GET['tipo'] == "remito"):                                
                            $_tipo="7";    
                            $mensaje_cabecera = "PROVEEDORES : LISTADO GENERAL DE REMITOS ";
                            endif;
                            if(!$_GET['idcliente']):
                            $_idcliente="";    
                            
                            elseif($_GET['idcliente']):                                
                            $_idcliente= $_GET['idcliente'];   
                                if($_tipo== 6):
                                    $mensaje_cabecera = $_GET['cliente_nombre'] ." : LISTADO FACTURAS ";
                                else:
                                    $mensaje_cabecera = $_GET['cliente_nombre'] ." : LISTADO REMITOS ";
                                endif;    
                            endif;
                            
                            $facturas = Factura::get_facturas($_GET["buscador"],$_tipo,0,0,$_idcliente);	
                            
                            }	

            //	$total_facturas = Factura::total_facturas();
                    Template::draw_header();

                    include("../../view/compras/list.php");
                    #				$template->draw_footer();	
                    }
                    break;


	case "modificar_compra":
				{

				// ESPERA UN ID
				$factura = new Factura($_GET["id"]);
			
					$mensaje_cabezera = "NUEVA COMPRA";  		
					$proveedores = Cliente::get_clientes(0,0,2);
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
			

					include("../../view/compras/nueva_factura.php");
				
				}
				break;                    
				
	case "nueva_factura":
				{

				$factura = new Factura();
			
					$mensaje_cabezera = "NUEVA COMPRA";  		
					$proveedores = Cliente::get_clientes(0,0,2);
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
			

					include("../../view/compras/nueva_factura.php");
				
				}
				break;
	
	case "generar_factura":
				{

				// ESPERA UN ID
					$factura = new Factura($_GET["id"]);
					Factura::generar_factura2($_POST);
					$mensaje_cabezera = "FACTURA GENERADA";
					$boton=true;
					$cambio = "nuevo";
					$deshabilitado = "";
//					$productos_virtuales =	Factura::get_productos_virtuales();

					
					header("Location: index.php");				
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

	case "delete" :
				{
				// ESPERA UN ID
				// No icluye Vista, Borra directo..
				Factura::erase_compra($_GET["id"]);
				//ingreso un registro en el log
				$hoy = date("Y-m-d G:i:s"); 
				$texto = "Baja Compra".$_GET["id"];
		//		mysql_query("insert into log values(null,".$_Factura->get_id().",'".$texto."', '".$hoy."')");
				header("Location: index.php");
				}
				break;

	case "cheques" :
                        {

                        if(!isset($_GET["start"])){		
                        $start = 0;
                        }else{
                        $start = $_GET["start"];
                        }
                        $end = 1000 ; 


                        if($_GET["buscador"]== "TODOS") 
                        {
                        $_POST["buscador"] = ""; 
                        $_GET["buscador"] = "";
                        }
                        if($_POST["buscador"] != "")$_GET["buscador"] = $_POST["buscador"]; 

                //	if($_GET["tipo_factura"]) $tipo_factura =	$_GET["tipo_factura"];else $tipo_factura = 1;


                        $cheques = Pago::get_cheques($_GET["buscador"],$_GET["ordenar"],$_GET["tipo_orden"]);    
                        Template::draw_header();

                        include("../../view/facturacion/cheques.php");
                        }
				break;                            
                                
                                
                                
	}


?>