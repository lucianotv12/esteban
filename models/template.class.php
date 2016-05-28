<?php

class Template
{
	function draw_header($_variable=0,$_id=0)
	{
         setlocale(LC_ALL,"es_ES");

         
            
	$_usuario = unserialize($_SESSION["usuario"]);
			?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<? if($_variable == 0 or $_variable == 1): ?>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<title>Aserradero Esteban</title>

        <link href="<?= BOOTSTRAP_CSS?>bootstrap.min.css" rel="stylesheet"/>
        
        <link href="<?=CSS?>clockface.css" rel="stylesheet"/>

        <link href="<?=CSS?>menu_estilo.css" rel="stylesheet"/>
        

        <link rel="stylesheet" type="text/css" href="<?= CSS?>fancybox/jquery.fancybox.css" media="screen">

        <link type="text/css" rel="stylesheet" href="<?=CSS?>autocomplete/jquery-ui-1.10.3.custom.css" />


            
        <script language="JavaScript" src="<?=JS?>jquery-1.11.3.min.js"></script>
        <script language="JavaScript" src="<?=BOOTSTRAP_JS?>bootstrap.min.js"></script> 
        
        <script language="JavaScript" src="<?=JS?>clockface.js"></script>        

        <script type="text/javascript" src="<?=JS?>fancybox/jquery.fancybox.pack.js"></script>
            
        <script type='text/javascript' src="<?= JS?>jquery-ui-1.10.3.custom.js"></script>    


	<script language="JavaScript" src="<?=JS?>funciones.js"></script>
	<script src="<?=JS?>stuHover.js" type="text/javascript"></script>
	<script src="<?=JS?>shortcut.js" type="text/javascript"></script>



<script>

//shortcut.add("F8", function () { window.location="<?= CTRL ?>productos/"; });
//shortcut.add("Esc", function () { window.close(); });
//shortcut.add("F12", function () { btnBuscar_onclick(); });


$(document).ready(function() {
	$(".various").fancybox({
	//	maxWidth	: 800,
	//	maxHeight	: 600,
		fitToView	: false,
		width		: '100%',
		height		: '100%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none',
                beforeClose        : function() { parent.location.reload(true); ; }			 
                
	});
});


</script>


</head>
<? 
$_evento = 'document.datos.buscador.focus();';
 if($_SERVER['PHP_SELF']== '/esteban/ctrl/facturacion/index.php' and $_variable == true):
$_evento = "javascript:popUp('../../pdf/presupuesto.php?idFactura= ". $_id . " ')";
$_evento .= ';document.datos.buscador.focus();';



 $_variable = 1 ;
endif;



?>
<body onKeyPress="return acceptNav(event)" onLoad="<?= $_evento?>">




<div class="container">
    
    
<?
//if($_usuario->gerarquia == 1) $gerarquia = "Administrador"; else $gerarquia = "Vendedor";	
//echo "Usuario Logueado : " . $_usuario->user . " - Nombre :". $_usuario->nombre ." ". $_usuario->apellido . " - Categoria :". $gerarquia  ; 
?>    
    
<div class="navbar-wrapper" style="padding-bottom:30px;">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Aserradero Esteban</a>
                            
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="#" class="">Principal</a></li>
                                
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Productos <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= CTRL . "productos/index.php";?>">Listado Productos</a></li>
                                            <li><a href="#">Stock Productos</a></li>
                                            <li><a href="<?= CTRL . "productos/index.php?accion=listado_precios";?>">Precios</a></li>
                                            <li><a href="<?= CTRL . "productos/index.php?accion=list_categorias";?>">Categorias</a></li>
                                        </ul>
                                    </li>
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Clientes <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= CTRL . "clientes/index.php";?>">Listado Clientes</a></li>
                                            <li><a href="#">Estado de cuentas</a></li>

                                        </ul>
                                    </li>
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Facturacion <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= CTRL . "facturacion/index.php?accion=list&tipo_factura=5";?>">Facturas</a></li>
                                            <li><a href="<?= CTRL . "facturacion/" ?>">Presupuestos</a></li>
                                            <li><a href="<?= CTRL . "facturacion/index.php?accion=nueva_factura";?>">Nueva Factura</a></li>

                                        </ul>
                                    </li>
                                    <li class=" down">
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Finanzas <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?= CTRL ?>compras/index.php?accion=cheques">Cheques</a></li>
                                            <li><a href="#">Balance IVA</a></li>
                                            <li><a href="#">Cuenta Corriente</a></li>
                                            <li><a href="#">Pagos</a></li>

                                        </ul>
                                    </li>
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Proveedores <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?=CTRL?>proveedores/">Listado Proveedores</a></li>
                                            <li><a href="<?=CTRL?>proveedores/index.php?accion=new">Nuevos</a></li>
                                            <li><a href="<?=CTRL?>compras/" >Facturas</a></li>
                                            <li><a href="<?=CTRL?>compras/index.php?tipo=remito" >Remitos</a></li>                                         
                                            <li><a href="#">Devoluciones</a></li>
                                            <li><a href="#">Estado de cuentas</a></li>
                                        </ul>
                                    </li>                   
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Herramientas <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?=VIEW?>productos/gestion_precios.php" >Gestion de precios</a></li>
                                            <li><a href="<?=VIEW?>herramientas/precios_movimientos.php" >Historial de Precios</a></li>
                                            <li><a href="<?=VIEW?>productos/dolar.php" >Precio Dolar</a></li>
                                            <li><a href="<?=VIEW?>herramientas/provincias.php" >Provincias</a></li>
                                            <li><a href="<?=HOME?>backup/dump.php">Backup del Sistema</a></li>                                            

                                        </ul>
                                    </li>                                    
                                    <li class=" dropdown">
                                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuarios <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<?=CTRL?>usuarios">Listado </a></li>
                                            <li><a href="<?=CTRL?>usuarios/index.php?accion=new">Nuevo</a></li>
                                        </ul>
                                    </li>                                    
                            </ul>
                            <ul class="nav navbar-nav pull-right">

                                <li class=""><a href="#">Salir</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>    

	<?
elseif($_variable == 2):
?>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Aserradero Esteban</title>

        <link href="<?= BOOTSTRAP_CSS?>bootstrap.min.css" rel="stylesheet"/>
        
        
        <link href="<?=CSS?>abm_estilo.css" rel="stylesheet"/>

        <link rel="stylesheet" type="text/css" href="<?= CSS?>fancybox/jquery.fancybox.css" media="screen">

        <link type="text/css" rel="stylesheet" href="<?=CSS?>autocomplete/jquery-ui-1.10.3.custom.css" />


            
        <script language="JavaScript" src="<?=JS?>jquery-1.11.3.min.js"></script>
        <script language="JavaScript" src="<?=BOOTSTRAP_JS?>bootstrap.min.js"></script> 
        

        <script type="text/javascript" src="<?=JS?>fancybox/jquery.fancybox.pack.js"></script>
            
        <script type='text/javascript' src="<?= JS?>jquery-ui-1.10.3.custom.js"></script>    


    <script language="JavaScript" src="<?=JS?>funciones.js"></script>
    <script src="<?=JS?>stuHover.js" type="text/javascript"></script>
    <script src="<?=JS?>shortcut.js" type="text/javascript"></script>



<script>

shortcut.add("F8", function () { window.location="<?= CTRL ?>productos/"; });
//shortcut.add("Esc", function () { window.close(); });
shortcut.add("F12", function () { btnBuscar_onclick(); });


$(document).ready(function() {
    $(".various").fancybox({
    //  maxWidth    : 800,
    //  maxHeight   : 600,
        fitToView   : false,
        width       : '100%',
        height      : '100%',
        autoSize    : false,
        closeClick  : false,
        openEffect  : 'none',
        closeEffect : 'none',
                beforeClose        : function() { parent.location.reload(true); ; }          
                
    });
});


</script>


</head>

<?

endif;
  }

	function draw_footer()
	{
	?>
        </div> <!-- /container -->
        </body>
    </html>

	<?
	}
}
