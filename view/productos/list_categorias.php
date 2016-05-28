

<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">

	<div class="row" id="titulo_principal">
		<h2>LISTADO DE CATEGORIAS </h2>
	</div>

<!--	<div class="row" >
		<font color="white">Ingrese datos del Cliente </font><input type="text" size="70" name="buscador" value="<?= $_POST["buscador"]?>">
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','<?= $_POST['buscador'] ?>')">BUSCAR</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','TODOS')">TODOS</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','DEUDORES')">DEUDORES</A>
		<br>
		<FONT SIZE="1" COLOR="white">Busque por : nombre, domicilio, telefono, mail, contacto</FONT>		
	</div>
-->

	<div class="row">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new_categoria" >
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>	

	<div class="row" id="titulos">
		<div class="col-xs-1">Id</div>
		<div class="col-xs-3">Nombre</div>
		<div class="col-xs-2">Proveedor</div>
		<div class="col-xs-1">Dolar</div>
		<div class="col-xs-2">Actualizacion</div>
		<div class="col-xs-1">Activo</div>
		<div class="col-xs-1">Calculo</div>
		<div class="col-xs-1"></div>

	</div>

	<? $contador = 0;
	foreach ($productos as $producto):
	$contador++;
	?>
		<div class="row" id="<?=$contador%2?'linea_par':'linea_impar'?>">
			<div class="col-xs-1">
				<?= $producto["id"]; ?>
			</div>	
			<div class="col-xs-3">
				<?= $producto["nombre"]; ?>
			</div>
			<div class="col-xs-2">
				<?= $producto["proveedor_categoria"]; ?>
			</div>
			<div class="col-xs-1">
				<?= $producto["dolar"]; ?>
			</div>
			<div class="col-xs-2">
				<? if($producto["fechaActualizacion"] == "00/00/0000") echo ""; else echo $producto["fechaActualizacion"]; ?>
			</div>
			<div class="col-xs-1">
				<?if($producto["activo"] == 1) echo "Si";else echo "No"; ?>
			</div>
			<div class="col-xs-1">
				<?if($producto["calcular_precio"] == 1) echo "Si";else echo "No"; ?>
			</div>				
			<div class="col-xs-1">
				<a href="index.php?accion=modify_categoria&id=<?= $producto["id"] ?>" >
				<img src="<?= IMGS?>ver.gif"  border="0">
				</a>
				&nbsp;
				<a href="javaScript:pregunta('<?= $producto["id"]?>', 'La Categoria', 'delete_categoria' )">
				<img src="<?= IMGS?>del.gif"  border="0">
				</a>


			</div>															
		</div>	
	<?
	endforeach;
	?>

	<div class="row">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new_categoria" >
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>	


</form>
</div>
