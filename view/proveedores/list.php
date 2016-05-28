<!--<link type="text/css" rel="stylesheet" href="<?=CSS?>autocomplete/jquery-ui-1.8.17.custom.css" />
<script type='text/javascript' src="<?= JS?>jquery-ui-1.8.17.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.css" media="screen">
<script type="text/javascript" src="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>-->


<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">

	<div class="row" id="titulo_principal">
		<h2>LISTADO DE PROVEEDORES </h2>
	</div>

	<div class="row" >
		<font color="white">Ingrese datos del Proveedor </font><input type="text" size="70" name="buscador" value="<?= $_POST["buscador"]?>">
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','<?= $_POST['buscador'] ?>')">BUSCAR</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','TODOS')">TODOS</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','DEUDORES')">DEUDORES</A>
		<br>
		<FONT SIZE="1" COLOR="white">Busque por : nombre, domicilio, telefono, mail, contacto</FONT>		
	</div>


	<div class="row">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new" class="various fancybox.iframe">
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>	

	<div class="row" id="titulos">
		<div class="col-xs-1">Id</div>
		<div class="col-xs-4">Razon Social</div>
		<div class="col-xs-2">Telefono</div>
		<div class="col-xs-2">Email</div>
		<div class="col-xs-1">+</div>
	</div>

	<? $contador = 0;
	foreach ($proveedores as $proveedor):
	$contador++;
	?>
		<div class="row" id="<?=$contador%2?'linea_par':'linea_impar'?>">
			<div class="col-xs-1">
				<?= $proveedor->get_id() ?>
			</div>	
			<div class="col-xs-4">
				<?= $proveedor->get_nombre() ?>
			</div>
			<div class="col-xs-2">
				<?= $proveedor->get_telefono() ?>
			</div>
			<div class="col-xs-2">
				<?= $proveedor->get_mail() ?>
			</div>
			<div class="col-xs-1">
				<a href="index.php?accion=modify&id=<?= $proveedor->get_id() ?>" class="various fancybox.iframe">
				<img src="<?= IMGS?>ver.gif"  border="0">
				</a>
				&nbsp;
				<a href="javaScript:pregunta('<?= $proveedor->get_id()?>', 'el proveedor', 'delete' )">
				<img src="<?= IMGS?>del.gif"  border="0">
				</a>


			</div>															
		</div>	
	<?
	endforeach;
	?>


</form>
	<div class="row" style="padding-top:20px">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new" class="various fancybox.iframe">
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>
</div>
