<link rel="stylesheet" type="text/css" href="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.css" media="screen">
<script type="text/javascript" src="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>

<script type="text/javascript"> $(document).ready(function () {  
 $("a.classpopup").fancybox({  
 'width': '80%',  
 'height': '100%', 
 //'centerOnScroll':true, 
 'scrolling':'no',
 'autoScale': false,  
 'transitionIn': 'none',  
 'transitionOut': 'none',  
 'type': 'iframe',
 'hideOnOverlayClick' : false,
 'onClosed': function() { parent.location.reload(true); ; }			 
 });  
 });  
  
 </script>

<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">

	<div class="row" id="titulo_principal">
		<h2>LISTADO DE FACTURAS </h2>
	</div>

	<div class="row">

		BUSQUEDA <?=$variable;?> <input type="text" size="70" name="buscador" value="<?= $_POST["buscador"]?>">
		<a style="color:white" onMouseOver="this.style.color='blue'" onMouseOut="this.style.color='white'" href="javaScript:busqueda('list','<?= $_POST['buscador'] ?>')">BUSCAR</A>
		<a style="color:white" onMouseOver="this.style.color='blue'" onMouseOut="this.style.color='white'" href="javaScript:busqueda('list','TODOS')">TODOS</A>
		<br>
		<FONT SIZE="1" COLOR="white">Busque por : cliente, N&#176; Factura, Fecha</FONT>
	</div>

	<div class="row">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new" class="various fancybox.iframe" >
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>	

	<div class="row" id="titulos" style="font-size:16px">
		<div class="col-xs-1">
			Fecha
		</div>
		<div class="col-xs-2">
			Cliente
		</div>
		<div class="col-xs-2">
			Importe
		</div>
		<div class="col-xs-1">
			Saldo			
		</div>
		<div class="col-xs-1">
			Estado
		</div>
		<div class="col-xs-1">
			Facturar		
		</div>
		<div class="col-xs-1">
			Comprob 
		</div>
		<div class="col-xs-1">
			Pagos
		</div>
		<div class="col-xs-1">
			Ver
		</div>		
		<div class="col-xs-1">
			Borrar
		</div>
	</div>


		<? $contador = 0;
		foreach ($facturas as $factura):
		$contador++;
		?>
			<div class="row" id="<?=$contador%2?'linea_par':'linea_impar'?>">
				<div class="col-xs-1">
					<?= $factura["fecha"] ?>				
				</div>	
				<div class="col-xs-2">
					<?= $factura["nombre_cliente"] ?>				
				</div>	
				<div class="col-xs-2">
					<?= $factura["importe"] ?>				
				</div>	
				<div class="col-xs-1">
						<? $saldo_factura = Factura::get_saldo_factura($factura["importe"],$factura["id"]) ;
						if($saldo_factura > 0):
											?>
						$<FONT SIZE='' COLOR='red'><?= $saldo_factura?></FONT>
						<? else: ?>
						$<FONT SIZE='' COLOR='green'><?= $saldo_factura?></FONT>

						<? endif; ?>				
				</div>	
				<div class="col-xs-1">
						<? $fecha_factura=explode("-",$factura["fecha"]);
						$fechasalida= $fecha[2]."-".$fecha[1]."-".$fecha[0];

						$fecha_vencimiento = date("Y-m-d",mktime(0, 0, 0, $fecha_factura[1]+1, $fecha_factura[2],   $fecha_factura[0]));
							if($fecha_vencimiento < date("Y-m-d") and $saldo_factura != 0 ):
									echo "Vencida";
						
							elseif($fecha_vencimiento > date("Y-m-d") and $saldo_factura != 0 ):
									echo "Pendiente";
							elseif($saldo_factura == 0 ):
									echo "Abonada";
							endif;
						?>
				</div>	
				<div class="col-xs-1">
						<? if($factura["tipo_factura"] != "Factura"):?>				
							<a class="classpopup" href="index.php?accion=facturar_registro&id=<?=$factura["id"];?>">
							<img src="<?= IMGS?>tilde.png"  border="0" height ="20px" width="20px" >
							</a>
						<?endif;?>
				</div>	
				<div class="col-xs-1">
					<img style="" src="<?= IMGS?>factura.jpg"  border="0" onCLICK="javascript:popUp('../../pdf/presupuesto.php?idFactura=<?= $factura["id"] ?>')">
				</div>
				<div class="col-xs-1">
					<?if($saldo_factura != 0):?>

						<a class="classpopup" href="<?=VIEW?>facturacion/alta_pago.php?&id=<?= $factura["id"] ?>">
						Pagar
						</a>
					<? endif;?>    				
				</div>
				<div class="col-xs-1">
						<a class="classpopup" href="<?=VIEW?>facturacion/pagos_factura.php?id=<?= $factura["id"] ?>">
						<img  src="<?= IMGS?>ver.gif"   >
						</a>								
				</div>				
				<div class="col-xs-1">
					<a href="javaScript:pregunta('<?= $factura["id"]?>','Presupuesto','delete')">
					<img src="<?= IMGS?>del.gif"  border="0">
					</a>				
				</div>	
			</div>	
		<? endforeach;?>	
	</form>
</div>		