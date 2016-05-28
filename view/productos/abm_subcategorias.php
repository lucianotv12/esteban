<?
if($_POST["submit"]):
		Producto::admin_subcategoria($_POST);
		?>
		<script language="javascript">
		parent.jQuery.fancybox.close();

		</script>
		<?

endif;
?>

<div class="container">

<? if($cambio == "nuevo") {?>
<form name="producto" method="post" >
<? }else{ ?>
<form name="producto" method="post" >
<? } ?>
	<input type="hidden" name="id" value="<?= $id?>">
	<input type="hidden" name="idCategoria" value="<?= $idCategoria?>">
	<input type="hidden" name="cambio" value="<?= $cambio?>">
	<div class="cuerpo_abm" >
		<div class="row" id="titulo_principal">
			<h1> <?= $mensaje_cabezera?> <?=$codigo?><br></h1>
		</div>

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
						<label>Precio Pie:</label>
					</div>
					<div class="col-xs-10">
						<input name="precio_pie" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$precio_pie?>" onFocus="foco(this);" onBlur="no_foco(this);">
					</div>	
				</div>
		<div class="row">
				<div class="row" style="padding-top:10px;padding-bottom:10px;"> <!--BOTONERA -->
					<div class="col-xs-7 text-right">	           		
	           		 	<input type="submit" name="submit" class="btn btn-success" value="Guardar">
					</div>
				</div>	
		</div>

		</form>

<?// if($gerarquia == true) {?>
<? if($detalle == true) {?>
<table class="tabla_list">
<tr>
	<td><a href="index.php?accion=modify&id=<?= $producto->get_id() ?>"><img style="display:block;" src="<?= IMGS?>lupa.gif"  border="0"></a></td>
	<td><a href="index.php?accion=modify&id=<?= $producto->get_id() ?>">Editar</a></td>
	<td>&nbsp;&nbsp;&nbsp;</td>
<!--	< ?if($producto->get_id_tipo() != 1){ ?> -->
	<td><a href="javaScript:pregunta('<?= $producto->get_id()?>', 'Producto :')"><img style="display:block;" src="<?= IMGS?>eliminar.png"  border="0"></a></td>
	<td><a href="javaScript:pregunta('<?= $producto->get_id()?>', 'Producto :')">Eliminar</a></td>
<!--	< ? } ?> -->
</tr>

</table>
<? }?>
<?// }?>
	</form>
</div>
</div>

