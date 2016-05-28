
<script type="text/javascript">
$(document).ready(function(){

	$("#cmbProvincia").change(function(){dependencia_estado();});
//	$("#cmbProvincia").change(function(){alert("hola");});
//	$("#estado").change(function(){dependencia_ciudad();});
//	$("#cmbLocalidad").attr("disabled",true);
//	$("#ciudad").attr("disabled",true);
});

function dependencia_estado()
{
	var code = $("#cmbProvincia").val();
	$.get("<?=VIEW?>clientes/carga_ciudades.php", { code: code },
		function(resultado)
		{
			if(resultado == false)
			{
//				alert("Error");
			}
			else
			{
	//			$("#cmbLocalidad").value('');
				$("#cmbLocalidad").attr("disabled",false);
				document.getElementById("cmbLocalidad").options.length=1;
				$('#cmbLocalidad').append(resultado);			
			}
		}

	);
}

</script>

<div class="container">


<? if($cambio == "nuevo") {?>
<form name="cliente" method="post" enctype="multipart/form-data" action="index.php?accion=insert">
<? }else{ ?>
<form name="cliente" method="post" enctype="multipart/form-data" action="index.php?accion=update&id=<?= $_GET["id"]?>">
<? } ?>


<div class="cuerpo_abm" >
	<div class="row">
		<h1> Cliente</h1>
	</div>
	<div class="row">
		<div class="col-xs-8">
			<div class="col-xs-2">
				<label>Razon Social</label>
			</div>	
			<div class="col-xs-8 text-left">
				<input class="form-control"  name="nombre"  type="text" <?= $deshabilitado?> value="<?=$nombre?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>N CUIT :</label>
			</div>	
			<div class="col-xs-8">
					<input name="nro_cuit" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$nro_cuit?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>			
	</div>

	<div class="row">
		<div class="col-xs-8">
			<div class="col-xs-2">
				<label>Domicilio: </label>
			</div>	
			<div class="col-xs-10">
				<input name="domicilio" class="form-control" size="40" type="text" <?= $deshabilitado?> value="<?=$domicilio?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
		<div class="col-xs-4">
				<div class="col-xs-4">
					<label>CP: </label>
				</div>	
				<div class="col-xs-8">
					<input name="cp" class="form-control" type="text" <?= $deshabilitado?> value="<?=$cp?>" onFocus="foco(this);" onBlur="no_foco(this);">
				</div>	
		</div>
	</div>					
	<div class="row">
		<div class="col-xs-6">
			<div class="col-xs-2">
				<label>Provincia</label>
			</div>	
			<div class="col-xs-10" style="padding-left:50px">
				<select id="cmbProvincia" class="form-control" name="cmbProvincia">
					<?php
					$_POST["cmbProvincia"] = 1 ;
					foreach($provincias as $provincia){ ?>
					<option value="<?=$provincia['idProvincia'];?>" <? if($idProvincia == $provincia['idProvincia']) echo "selected";?>
					><?=$provincia['Descripcion'];?></option>
					<? } ?>	
				</select>			
			</div>	
		</div>			
		<div class="col-xs-6">
			<div class="col-xs-4">
				<label>Localidad</label>
			</div>	
			<div class="col-xs-8">
				<select id="cmbLocalidad" class="form-control" name="cmbLocalidad">
					<? if(!$idLocalidad and $cambio != "nuevo"): ?> 
							<option value="0">Selecciona Uno...</option>
						</select>
					<? elseif($cambio == "nuevo" and !$idLocalidad):
						$_localidades=Cliente::get_localidades($idProvincia);	
						?><option value="0" selected>Selecciona Uno...</option><?
						foreach($_localidades as $sub):
						?>
								<option value="<?= $sub["idLocalidad"]?>" <? if($idLocalidad == $sub["idLocalidad"] ) echo "selected"; ?>><?= $sub["Descripcion"]?></option>
						<? endforeach;?>
							</select>
						<? else :
						?><option value="0" selected>Selecciona Uno...</option><?

						$_localidades=Cliente::get_localidades($idProvincia);	
						foreach($_localidades as $sub):
						?>
								<option value="<?= $sub["idLocalidad"]?>" <? if($idLocalidad == $sub["idLocalidad"] ) echo "selected"; ?>><?= $sub["Descripcion"]?></option>
						<? endforeach;?>
					</select>
					<? endif;?>
			</div>	
		</div>			
	</div>

	<div class="row">
		<div class="col-xs-8">
			<div class="col-xs-2">
				<label>Telefono: </label>
			</div>	
			<div class="col-xs-10">
				<input name="telefono" class="form-control" type="text" <?= $deshabilitado?> value="<?=$telefono?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Telefono2: </label>
			</div>	
			<div class="col-xs-8">
				<input name="telefono2" class="form-control" type="text" <?= $deshabilitado?> value="<?=$telefono2?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
	</div>					
	<div class="row">

			<div class="col-xs-2" style="width:12%">
				<label>Observaciones: </label>
			</div>	
			<div class="col-xs-10 text-left" style="width:88%">
				<textarea rows="6" cols="80" class="form-control"  name="observaciones" <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);"><?=$observaciones?></textarea>
			</div>	
			
	</div>	
	<div class="row">
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Contacto: </label>
			</div>	
			<div class="col-xs-8" style="padding-left:20px">
				<input name="contacto" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$contacto?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
			
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Mail: </label>
			</div>	
			<div class="col-xs-8">
				<input name="mail" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$mail?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
			
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Web: </label>
			</div>	
			<div class="col-xs-8">
				<input name="web" class="form-control"  type="text" <?= $deshabilitado?> value="<?=$web?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>			
	</div>					

	<div class="row">
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Descuento: </label>
			</div>	
			<div class="col-xs-8" style="padding-left:20px">
				<input name="descuento" class="form-control" maxlength="2" size="1"  type="text" <?= $deshabilitado?> value="<?=$descuento?>" onFocus="foco(this);" onBlur="no_foco(this);">
			</div>	
		</div>	
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Condicion de IVA: </label>
			</div>	
			<div class="col-xs-6">
				<select name="condicion_iva" class="form-control">
					<option value="0" >Seleccione...</option>		
					<option value="Responsable Inscripto" <?if($condicion_iva == "Responsable Inscripto") echo"selected"; ?> >Responsable Inscripto</option>
					<option value="Monotributista" <?if($condicion_iva == "Monotributista") echo"selected"; ?>>Monotributista</option>
				</select>
			</div>	
		</div>	
		<div class="col-xs-4">
			<div class="col-xs-4">
				<label>Activo: </label>
			</div>	
			<div class="col-xs-6">
				<select name="activo" class="form-control"  <?= $deshabilitado?> onFocus="foco(this);" onBlur="no_foco(this);">
					<option value="0"  <? if($activo == 0) echo"selected";?>>No Activo</option>
					<option value="1" <? if($activo == 1) echo"selected";?>>Activo</option>					
				</select>
			</div>	
		</div>		
	</div>	
	<div class="row">
			<div class="row" style="padding-top:10px;padding-bottom:10px;"> <!--BOTONERA -->
				<div class="col-xs-11 text-right">
           		
           		 <input type="submit" name="submit" class="btn btn-success" value="Guardar">
				</div>
			</div>	
	</div>								

</div>




</form>

</div>
<!--<script src="../../template/js/models/gen_validatorv2.js" language="javascript" type="text/javascript"></script>
<script src="../../template/js/validaciones/clientes/modificacion.js" language="javascript" type="text/javascript"></script>
-->
