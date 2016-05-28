<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
$(document).ready(function(){

	$("#idCategoria").change(function(){dependencia_estado();});
//	$("#idCategoria").change(function(){alert("hola");});
//	$("#estado").change(function(){dependencia_ciudad();});
//	$("#subCategoria").attr("disabled",true);
//	$("#ciudad").attr("disabled",true);
});

function dependencia_estado()
{
	var code = $("#idCategoria").val();
	$.get("<?=VIEW?>productos/carga_subcategorias.php", { code: code },
		function(resultado)
		{
			if(resultado == false)
			{
				alert(" Esta Categoria no posee subcategorias, por favor ingreselas");
			}
			else
			{
				$("#idSubCategoria").attr("disabled",false);
				document.getElementById("idSubCategoria").options.length=1;
				$('#idSubCategoria').append(resultado);			
			}
		}

	);
}

var nav4 = window.Event ? true : false;
function acceptNum(evt){
// NOTE: Backspace = 8, Enter = 13, '0' = 48, '9' = 57, '.' = 46
var key = nav4 ? evt.which : evt.keyCode;
return (key <= 13 || (key >= 48 && key <= 57) || key == 46);
}
//-->

</script>


<div class="container">

<? if($cambio == "nuevo") {?>
	<form name="producto" method="post" enctype="multipart/form-data" action="index.php?accion=insert">
<? }else{ ?>
	<form name="producto" method="post" enctype="multipart/form-data" action="index.php?accion=update&id=<?= $_GET["id"]?>">
<? } ?>	

	<div class="cuerpo_abm" >
		<div class="row" id="titulo_principal">
			<h1> <?= $mensaje_cabezera?> <?=$codigo?><br></h1>
		</div>

		<div class="row">
			<div class="col-xs-6">
				<div class="col-xs-3 text-left">
					Categoria:
				</div>
				<div class="col-xs-9">
					<select name="idCategoria" id="idCategoria" <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);" tabindex="0" class="form-control">
						<option value="-1" >Seleccione una Categoria... </option>
						<? foreach($categorias as $categoria):?>
						<option value="<?=$categoria["id"];?>" <? if($idCategoria == $categoria["id"]) echo"selected";?>><?=$categoria["nombre"];?></option>
						<? endforeach;?>
					</select>		

				</div>	
			</div>
			<div class="col-xs-6">
				<div class="col-xs-3">
					SubCategoria:
				</div>
				<div class="col-xs-9">
					<select id="idSubCategoria" name="idSubCategoria" class="form-control">
					<? if(!$idSubCategoria): ?> 
						<option value="0">Selecciona Uno...</option>
						</select>
					<? else :
						$_subcategorias=Producto::get_subcategorias($idCategoria);	
						foreach($_subcategorias as $sub):
						?>
						<option value="<?= $sub["id"]?>" <? if($idSubCategoria == $sub["id"] ) echo "selected"; ?>><?= $sub["nombre"]?></option>
						<? endforeach;?>
					</select>

					<? endif;?>


				</div>
			</div>
		</div>	
		<div class="row">
			<div class="col-xs-1">
				Descripcion:	
			</div>	
			<div class="col-xs-11">
				<textarea name="descripcion"  class="form-control" rows="4" cols="80"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);"><?=$descripcion?></textarea>				
			</div>			
		</div>
		<div class="row">
			<div class="col-xs-1">
				Referencia:	
			</div>	
			<div class="col-xs-11">
				<input name="referencia" class="form-control" type="text" <?= $deshabilitado?> value="<?=$referencia?>" onFocus="foco(this);" onBlur="no_foco(this);">				
			</div>			
		</div>	
		<div class="row">
			<div class="col-xs-1">
				Stock Bajo:	
			</div>	
			<div class="col-xs-11">
				<input name="aviso_stock" class="form-control" type="text" <?= $deshabilitado?> value="<?=$aviso_stock?>" onFocus="foco(this);" onBlur="no_foco(this);" onKeyPress="return acceptNum(event)">				
			</div>			
		</div>
		<div class="row">
			<div class="col-xs-1">
				Precio:	
			</div>	
			<div class="col-xs-11">
				<input name="precio" class="form-control" onKeyPress="return acceptNum(event)"  type="text" <?= $deshabilitado?> value="<?=$precio?>" onFocus="foco(this);" onBlur="no_foco(this);">				
			</div>			
		</div>	
		<div class="row">
			<div class="col-xs-1">
				Utilidad:%	
			</div>	
			<div class="col-xs-11">
				<input name="utilidad" class="form-control" onKeyPress="return acceptNum(event)" size="3" maxlength="5"  type="text" <?= $deshabilitado?> value="<?=$utilidad?>" onFocus="foco(this);" onBlur="no_foco(this);">		
			</div>			
		</div>	
		<div class="row">
			<div class="col-xs-1">
				IVA : %	
			</div>	
			<div class="col-xs-11">
				<select name="iva" class="form-control" <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">
					<option value="21" <? if($iva == "21") echo"selected";?>>21</option>
					<option value="10.5"  <? if($iva == "10.5") echo"selected";?>>10.5</option>
					<option value="0"  <? if($iva == "0") echo"selected";?>>0</option>
				</select>
			</div>			
		</div>
		<div class="row">
			<div class="col-xs-1">
				Moneda:	
			</div>	
			<div class="col-xs-11">
				<select name="idMoneda" class="form-control" <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">
					<? foreach($monedas as $moneda): ?>
					<option value="<?= $moneda["id"]?>" <? if($idMoneda == $moneda["id"]) echo"selected";?>><?= $moneda["simbolo"]?></option>
					
					<? endforeach;?>
				</select>	
			</div>			
		</div>			
		<div class="row">
			<div class="col-xs-1">
				Largo:	
			</div>	
			<div class="col-xs-11">
				<input name="bulto" class="form-control" onKeyPress="return acceptNum(event)" size="3" maxlength="5"  type="text" <?= $deshabilitado?> value="<?=$bulto?>" onFocus="foco(this);" onBlur="no_foco(this);"/>
			</div>			
		</div>
		<div class="row">
			<div class="col-xs-1">
				Espesor:	
			</div>	
			<div class="col-xs-11">
				<input name="espesor" class="form-control" onKeyPress="return acceptNum(event)" size="3" maxlength="5"  type="text" <?= $deshabilitado?> value="<?=$espesor?>" onFocus="foco(this);" onBlur="no_foco(this);"/>
			</div>			
		</div>
		<div class="row">
			<div class="col-xs-1">
				Ancho :	
			</div>	
			<div class="col-xs-11">
				<input name="ancho" class="form-control" onKeyPress="return acceptNum(event)" size="3" maxlength="5"  type="text" <?= $deshabilitado?> value="<?=$ancho?>" onFocus="foco(this);" onBlur="no_foco(this);"/>
			</div>			
		</div>				
		<div class="row">
			<div class="col-xs-1">
				Activo :	
			</div>	
			<div class="col-xs-11">
				<select name="activo" class="form-control"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">
					<option value="1" <? if($activo == 1 or $cambio == "nuevo") echo"selected";?>>Activo</option>
					<option value="2"  <? if($activo == 2 ) echo"selected";?>>No Activo</option>
				</select>			
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
</div>

<!--
<script src="../../view/js/models/gen_validatorv2.js" language="javascript" type="text/javascript"></script>
<script src="../../view/js/validaciones/productos/modificacion.js" language="javascript" type="text/javascript"></script>
-->
