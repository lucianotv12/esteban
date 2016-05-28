<?
session_start();
include_once("../../funciones.php");

validar_permanencia();
conectar_bd();

if($_POST["submit"]):
	$valor_actual = $_POST["dolar"];
	$query = mysql_query("update monedas set cotizacion = $valor_actual where id = 2");
			
endif;
if($_POST["submit_euro"]):
	$valor_actual = $_POST["euro"];
	$query = mysql_query("update monedas set cotizacion = $valor_actual where id = 5");
			
endif;


Template::draw_header();
$query = mysql_result(mysql_query("select cotizacion from monedas where id = 2"),0,0);
$query_euro = mysql_result(mysql_query("select cotizacion from monedas where id = 5"),0,0);


?>
<link rel="stylesheet" type="text/css" href="<?= CSS?>style.css">
<script language="JavaScript" src="<?=JS?>funciones.js"></script>



<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">
		<div class="row" id="">
		<H2>PRECIO DEL DOLAR </H2>
		<br>
		</div>


		<div class="row" >
					<div style="border: 1px solid rgb(90, 90, 90); background:
					rgb(176, 180, 160) none repeat scroll 0% 50%; text-align: center; width:
					234px; height: 90px; line-height: 100%;"><script
					type="text/javascript" language="JavaScript1.1"
					src="http://www.cotizacion-dolar.com.ar/recursos-webmaster/formal-cd/dolar_euro_234x90.js"></script><small><a
					style="border: 0px none ; font-size: 8pt; color: rgb(79, 0, 0);
					text-decoration: none; font-family: sans-serif,Helvetica,Arial;"
					href="http://www.cotizacion-dolar.com.ar" target="_top"
					title="Cotizaci&oacute;n actualizada del d&oacute;lar,
					euro, real, peso uruguayo, peso chileno en
					Argentina">cotizacion</a>
					- <a style="border: 0px none ; font-size: 8pt; color: rgb(79, 0,
					0); text-decoration: none; font-family: sans-serif,Helvetica,Arial;"
					href="http://www.cotizacion-dolar.com.ar/cotizacion_hoy.php"
					target="_top" title="Cotizaci&oacute;n del d&oacute;lar
					hoy - ver m&aacute;s monedas">dolar
					hoy</a></small></div><!--
					fin código -->

		</div>
			
		<div class="row">

		Precio del Dolar en el sistema:	
		<input type="text" name="dolar" value="<?= $query;?>">	

				<input type="submit" name="submit" value="actualizar Dolar">	
		</div>
		<div class="row">
				Precio del Euro en el sistema:	

				<input type="text" name="euro" value="<?= $query_euro;?>">	
				<input type="submit" name="submit_euro" value="actualizar Euro">	
		</div>

</form>
</div>

