<!--<link rel="stylesheet" type="text/css" href="<?=JS?>fancybox/fancybox/jquery.fancybox-1.3.4.css" media="screen">
<script type="text/javascript" src="<?=JS?>fancybox/fancybox/jquery.fancybox-1.3.4.pack.js"></script>-->
<script type="text/javascript"> $(document).ready(function () {  
 $("a.classpopup").fancybox({  
 'width': '50%',  
 'height': '50%', 
 //'centerOnScroll':true, 
'autoScale'			: false,
'transitionIn'		: 'none',
'transitionOut'		: 'none',
'type': 'iframe',
/*'content':'<div>asdasdasdasdasdasdasdasdas</div>',*/
 'onClosed': function () {
				            parent.location.reload(true); ;}
	
 });  
 });  
  
 </script>

 <script type="text/javascript">
function mostrar_calculos() {
  divs = 'calculos';
//  enla = 'enla'	+ variable ;
  obj = document.getElementById(divs);
  obj.style.display = (obj.style.display=='none') ? 'block' : 'none';

}
function no_mostrar_calculos() {
  divs = 'calculos';
  obj = document.getElementById(divs);
  obj.style.display = (obj.style.display=='none') ? 'block' : 'none';
 
}
</script>
<!-- FANCYBOX -->

<div class="container">

<? if($cambio == "nuevo") {?>
	<form name="producto" method="post" enctype="multipart/form-data" action="index.php?accion=insert_categorias">
<? }else{ ?>
	<form name="producto" method="post" enctype="multipart/form-data" action="index.php?accion=update_categorias&id=<?= $_GET["id"]?>">
<? } ?>	

	<div class="cuerpo_abm" >
		<div class="row" id="titulo_principal">
			<h1> <?= $mensaje_cabezera?> <?=$codigo?><br></h1>
		</div>
		<div class="col-xs-6">
				<div class="row">
					<div class="col-xs-2">
						<label>Nombre:</label>
					</div>
					<div class="col-xs-10">
						<input name="nombre" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$nombre?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>

				<div class="row">
					<div class="col-xs-2">
						<label>Descripcion:</label>
					</div>
					<div class="col-xs-10">
						<textarea name="descripcion" class="form-control" rows="4" cols="80"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);"><?=$descripcion?></textarea>
					</div>	
				</div>

				<div class="row">
					<div class="col-xs-2">
						<label>Dolar:</label>
					</div>
					<div class="col-xs-10">
						<input name="dolar" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$dolar?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>	

				<div class="row">
					<div class="col-xs-2">
						<label>Activo:</label>
					</div>
					<div class="col-xs-10">
						<select name="activo" class="form-control"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">
							<option value="0"  <? if($activo == 0) echo"selected";?>>No Activo</option>
							<option value="1" <? if($activo == 1) echo"selected";?>>Activo</option>

						</select>
					</div>	
				</div>	
				<div class="row">
					<div class="col-xs-2">
						<label>Proveedor:</label>
					</div>
					<div class="col-xs-10">
			            <select name="proveedor" class="form-control"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">                    
			                <option value ="0" selected>NINGUNO</option>    
			                <? 
			                foreach($proveedores as $proveedor):?>
			                <option value="<?= $proveedor->id;?>" <?if($proveedor->id == $idProveedor) echo "selected";?> ><?= $proveedor->nombre;?></option>
			                
			                <? endforeach;?>    
			            </select>                        
					</div>	
				</div>

				<div class="row">
					<div class="col-xs-2">
						<label>Calcula Precio ?:</label>
					</div>
					<div class="col-xs-10">
						<input type="radio" name="calcular_precio" <? if($calcular_precio == 0) echo "checked";?>  value="0" onclick="javaScript:no_mostrar_calculos();">No
						<input type="radio" name="calcular_precio" <? if($calcular_precio == 1) echo "checked";?>  value="1" onclick="javaScript:mostrar_calculos();">Si

					</div>	
				</div>	
		</div>	
		<div class="col-xs-6" id="calculos" <? if($calcular_precio == 0) echo "style='display:none;'";?> >
				<div class="row">
					<div class="col-xs-2">
						<label>Medida:</label>
					</div>
					<div class="col-xs-10">
						<select name="medida" class="form-control">
							<option value="pies" <?if($medida == "pies") echo "selected";?> >Pies</option>
							<option value="MetroLineal" <?if($medida == "MetroLineal") echo "selected";?> >Metro Lineal</option>
							<option value="MetroCuadrado" <?if($medida == "MetroCuadrado") echo "selected";?>>Metro Cuadrado</option>

						</select>	

					</div>	
				</div>			
				<div class="row">
					<div class="col-xs-2">
						<label>Cantidad:</label>
					</div>
					<div class="col-xs-10">
						<input name="cantidad" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$cantidad?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>							
				<div class="row">
					<div class="col-xs-2">
						<label>Precio:</label>
					</div>
					<div class="col-xs-10">
						<input name="precio" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$precio?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>							
				<div class="row">
					<div class="col-xs-2">
						<label>IVA:</label>
					</div>
					<div class="col-xs-10">
						<input name="iva" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$iva?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>							
				<div class="row">
					<div class="col-xs-2">
						<label>Ing.Brutos:</label>
					</div>
					<div class="col-xs-10">
						<input name="ingresosBrutos" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$ingresosBrutos?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>															
				<div class="row">
					<div class="col-xs-2">
						<label>Flete:</label>
					</div>
					<div class="col-xs-10">
						<input name="flete" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$flete?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>
				<div class="row">
					<div class="col-xs-2">
						<label>Precio Pie (sin calculo):</label>
					</div>
					<div class="col-xs-10">
						<input name="precio_pie" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$precio_pie?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>

		</div>	

		<div class="row">
				<div class="row" style="padding-top:10px;padding-bottom:10px;"> <!--BOTONERA -->
					<div class="col-xs-7 text-right">	           		
	           		 	<input type="submit" name="submit" class="btn btn-success" value="Guardar">
					</div>
				</div>	
		</div>

	</div>	

</form>




<? if($cambio != "nuevo"): ?>

	<div class="row" id="titulo_principal">
		<h1> Listado Subcategorias<br></h1>
	</div>


<form method="post" name="datos">
	<div class="row">
			<div class="col-xs-12 text-right">
				<a class="various fancybox.iframe" href="index.php?accion=new_subcategoria&id=<?=$id;?>" >
					<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
				</a>		
			</div>
		</div>	
		<div class="row" id="titulos">
			<div class="col-xs-2">Nombre</div>	
			<div class="col-xs-2">Descripcion</div>	
			<div class="col-xs-1">Dolar</div>	
			<div class="col-xs-1">Fecha</div>	
			<div class="col-xs-1">Activo</div>	
			<div class="col-xs-1">Prov.</div>	
			<div class="col-xs-1">Precio Pie</div>	

			<div class="col-xs-2"></div>	

		</div>
		<?foreach($subcategorias as $subcategoria): 	$contador++;?>		
			<div class="row" id="<?=$contador%2?'linea_par':'linea_impar'?>">
				<div class="col-xs-2"><?=$subcategoria["nombre"]; ?></div>	
				<div class="col-xs-2"><?=$subcategoria["descripcion"]; ?></div>	
				<div class="col-xs-1"><?=$subcategoria["dolar"]; ?></div>	
				<div class="col-xs-1"><? if($subcategoria["fechaActualizacion"] == "00/00/0000") echo ""; else echo $subcategoria["fechaActualizacion"]; ?></div>	
				<div class="col-xs-1"><?if($subcategoria["activo"]== 1) echo "Activo"; else echo "No Activo"; ?></div>	
				<div class="col-xs-1"><?=$subcategoria["proveedor_subcategoria"];?></div>	
				<div class="col-xs-1"><?=$subcategoria["precio_pie"];?></div>	

				<div class="col-xs-2">

					<a href="index.php?accion=modify_subcategoria&id=<?= $subcategoria["id"] ?>" class="various fancybox.iframe" >
					<img src="<?= IMGS?>ver.gif"  border="0">
					</a>
					&nbsp;
					<a href="javaScript:pregunta('<?= $subcategoria["id"]?>','subcategoria','delete_subcategoria','<?= $_GET["id"]?>')">
						<img src="<?= IMGS?>del.gif"  border="0">
					</a>					
				</div>	
			</div>		
		<?endforeach;?>
		<div class="row">
			<div class="col-xs-12 text-right">
				<a class="various fancybox.iframe" href="index.php?accion=new_subcategoria&id=<?=$id;?>" >
					<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
				</a>		
			</div>
		</div>	
			


	</form>
<? endif; ?>


	</div>
</div>	
