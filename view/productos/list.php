<!--<link type="text/css" rel="stylesheet" href="<?=CSS?>autocomplete/jquery-ui-1.8.17.custom.css" />
<script type='text/javascript' src="<?= JS?>jquery-ui-1.8.17.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.css" media="screen">
<script type="text/javascript" src="<?= JS?>fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>-->


<script type="text/javascript">
	$(function(){
		$('#buscar_usuarios').autocomplete({
		source:"<?=VIEW?>productos/ajax.php",				
		});
		
	});

//shortcut.add("insert", function () { busqueda('list','< ?= $_POST['buscador'] ?>');  });

</script> 


<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">

	<div class="row" id="titulo_principal">
		<h2>LISTADO DE PRODUCTOS ASERRADERO ESTEBAN </h2>
	</div>

	<div class="row" >
		<div class="col-xs-3 text-left" style="color:white;padding-top:7px; font-weight:bold">
		INGRESE DATOS DEL PRODUCTO Maderas, Veneno, Etc.
		</div>
		<div class="col-xs-9">
			 <input class="form-control" type="text" size="70" name="buscador" id="buscar_usuarios" value="<?= $_POST["buscador"]?>" >
			<b>
			<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','<?= $_POST['buscador'] ?>')">BUSCAR</A>
			<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','TODOS')">TODOS</A>
			</b>
			&nbsp;&nbsp;&nbsp;
		</div>	
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
			Id 
			<a href="javaScript:ordenar_por('list','id','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','id','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>			
		</div>
		<div class="col-xs-3">
			Descripcion
			<a href="javaScript:ordenar_por('list','descripcion','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','descripcion','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>
		</div>
		<div class="col-xs-1">
			Ref.
			<a href="javaScript:ordenar_por('list','referencia','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','referencia','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>
		</div>
		<div class="col-xs-2">
			Categoria
			<a href="javaScript:ordenar_por('list','categoria_nombre','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','categoria_nombre','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>			
		</div>
		<div class="col-xs-2">
			Subcateg.
			<a href="javaScript:ordenar_por('list','subcategoria_nombre','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','subcategoria_nombre','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>
		</div>
		<div class="col-xs-1">
			Precio
			<a href="javaScript:ordenar_por('list','precio','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','precio','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>		
		</div>
		<div class="col-xs-1">
			Fech
			<a href="javaScript:ordenar_por('list','fechaActualizacion','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','fechaActualizacion','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>               
		</div>
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
				<?= $producto["descripcion"]; ?>
			</div>
			<div class="col-xs-1">
				<?= $producto["referencia"]; ?>
			</div>
			<div class="col-xs-2">
				<?= $producto["categoria_nombre"]; ?>
			</div>
			<div class="col-xs-2">
				<?= $producto["subcategoria_nombre"]; ?>								
			</div>
			<div class="col-xs-1">
			
				$<?= redondear_dos_decimal(Producto::get_precio_lista($producto["id"])) ?>
			</div>
			<div class="col-xs-1" style="background-color:<?= Producto::get_color_fecha($producto["fechaActualizacion"]);?>;color:white">
                    <? if($producto["fechaActualizacion_muestra"] == "00/00/0000") echo ""; else echo $producto["fechaActualizacion_muestra"]; ?>
			</div>				
			<div class="col-xs-1">
				<a href="index.php?accion=modify&id=<?= $producto["id"] ?>" class="various fancybox.iframe" >
				<img src="<?= IMGS?>ver.gif"  border="0">
				</a>
				&nbsp;
				<a href="javaScript:pregunta('<?= $producto["id"]?>','el Producto', 'delete')">
					<img src="<?= IMGS?>del.gif"  border="0">
				</a>


			</div>															
		</div>	
	<?
	endforeach;
	?>

	<div class="row" style="padding-top:20px;">
		<div class="col-xs-12 text-right">
			<a href="index.php?accion=new" class="various fancybox.iframe" >
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0"  >
			</a>		
		</div>
	</div>	


</form>
</div>
