
<script>

 
function dependencia_estado(_id)
{
	var update=window.confirm("Se van a modificar datos del Producto  " +  idProducto + " desea continuar?");
	
	if (update){
            
                    var precio_nombre = $("#precio_" + _id).val();
                    var desc1_nombre = $("#desc1_" + _id).val();
                    var desc2_nombre = $("#desc2_" + _id).val();
                    var desc3_nombre = $("#desc3_" + _id).val();
                    var utilidad_nombre = $("#utilidad_" + _id).val();
                    var iva_nombre = $("#iva_" + _id).val();
                    var referencia_nombre = $("#referencia_" + _id).val();
                    var bulto_nombre = $("#bulto_" + _id).val();
                    var usuarioid = $("#idUsuario").val();
                    var idProducto = _id;
            
    
                   var fila = $("#fila_" + _id); 
                   var flotante = $("#flotante_" + _id); 
                   var precio_lista = $("#precio_lista_"  + _id); 
//                   precio_lista_value = "lucho"; 
                   
            /*    javi= new Array();

                var code = $("#estado_turno_" + _id).val();
                var color = $("#colores_" + _id);*/
              //  alert('aca entroooo' + code);
                $.get("<?=VIEW?>productos/modifica_listado_precios.php", { idProducto:idProducto,precio_nombre: precio_nombre, desc1_nombre:desc1_nombre, desc2_nombre:desc2_nombre, desc3_nombre:desc3_nombre,
                utilidad_nombre:utilidad_nombre,iva_nombre:iva_nombre,referencia_nombre:referencia_nombre,bulto_nombre:bulto_nombre,usuarioid:usuarioid}, 
                function( data ) {
                 $("#precio_lista_"  + _id).val( data );
                });
                    
//                $("#precio_lista_"  + _id).val(< ?php echo redondear_dos_decimal(Producto::get_precio_lista_dolar($_GET['idProducto'])) ?>); 
                    

                fila.css({'background':'red'});
                fila.css({'color':'white'});
             /*   precio_lista.css({'color':'orange'});*/
                flotante.css({'display':'none'});

                
	
	}else
	
	document.datos.action="";
    
}

</script>

<script>
var nav4 = window.Event ? true : false;
function acceptNum(evt){
// NOTE: Backspace = 8, Enter = 13, '0' = 48, '9' = 57, '.' = 46
var key = nav4 ? evt.which : evt.keyCode;
return (key <= 13 || (key >= 48 && key <= 57) || key == 46);
}


</script>
<script type="text/javascript">
	$(function(){
		$('#buscar_usuarios').autocomplete({
		source:"<?=VIEW?>productos/ajax.php",				
		});
		
		
	});
//shortcut.add("Enter", function () { busqueda('listado_precios','< ?= $_POST['buscador'] ?>');  });

</script>
<script>

function mostrardiv(idproducto) {

div = document.getElementById('flotante_' + idproducto);

div.style.display = '';

}

function cerrar() {

div = document.getElementById('flotante_' + idproducto);

div.style.display='none';

}

</script>
    
<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">
	<input type="hidden" name="idUsuario" id="idUsuario" value="<?=$_usuario->idUsuario?>">
    
	<div class="row" id="titulo_principal">
		<h2>LISTADO DE PRODUCTOS </h2>
	</div>

	<div class="row" >
		<div class="col-xs-3 text-left" style="color:white;padding-top:7px; font-weight:bold">
		INGRESE DATOS DEL PRODUCTO
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
		<div class="col-xs-1">
			Categoria
			<a href="javaScript:ordenar_por('list','categoria_nombre','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','categoria_nombre','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>			
		</div>
		<div class="col-xs-1">
			Subcateg.
			<a href="javaScript:ordenar_por('list','subcategoria_nombre','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','subcategoria_nombre','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>
		</div>
		<div class="col-xs-1">
			Bulto		
		</div>		
<!--		<div class="col-xs-1">
			Precio
			<a href="javaScript:ordenar_por('list','precio','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
			<a href="javaScript:ordenar_por('list','precio','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>		
		</div>-->
		<div class="col-xs-1">P.Lista</div>    	
		<div class="col-xs-1">Utilidad</div>
		<div class="col-xs-1">Iva</div>
        <div class="col-xs-1">Accion</div>
	</div>

	<? $contador = 0;
	foreach ($productos as $producto):
	$contador++;
	?>
	<div class="row" id="" <? if($producto["activo"] != 1) echo 'style="color:#CCC"';?> id="fila_<?= $producto["id"] ?>">		
		<div class="col-xs-1"><?= $producto["id"] ?></div>
		<div class="col-xs-3"><?= $producto["descripcion"] ?></div>		
		<div class="col-xs-1"><input type="text" id="referencia_<?= $producto["id"] ?>" name="referencia_<?= $producto["id"] ?>" value="<?= $producto["referencia"] ?>" size="5" onFocus="foco(this);javascript:mostrardiv('<?= $producto["id"]?>');"></div>
		<div class="col-xs-1"><?= $producto["categoria_nombre"] ?></div>		
		<div class="col-xs-1"><?= $producto["subcategoria_nombre"] ?></div>		
        <div class="col-xs-1"><input type="text" name="bulto_<?= $producto["id"] ?>" id="bulto_<?= $producto["id"] ?>" value="<?= $producto["bulto"] ?>" size="1" onFocus="foco(this);javascript:mostrardiv('<?= $producto["id"]?>');"></div>      
     <!--   <div class="col-xs-1">
	        <? if($producto["idMoneda"] == 2): 
	                $_precio_final= redondear_dos_decimal(Producto::get_precio_lista_dolar($producto["id"])) . " (" . redondear_dos_decimal(Producto::get_precio_lista($producto["id"])) . ")" ;
	            else:
	                $_precio_final= redondear_dos_decimal(Producto::get_precio_lista($producto["id"]));
	            endif;
	        ?>
	            <input  type="text" size="7" name="precio_lista_<?= $producto["id"] ?>" id="precio_lista_<?= $producto["id"] ?>" value="<?=$_precio_final ?>" disabled>  
        </div>-->
        <div class="col-xs-1"><?=  $producto["simbolo"]?><input type="text" id="precio_<?= $producto["id"]?>" size="3" name="precio_<?= $producto["id"] ?>" value=" <?= $producto["precio"] ?>" size="5" onFocus="foco(this);javascript:mostrardiv('<?= $producto["id"]?>');" onKeyPress="return acceptNum(event)"></div>
        <div class="col-xs-1"><input type="text" id="utilidad_<?= $producto["id"] ?>" size="1" name="utilidad_<?= $producto["id"] ?>" value="<?= $producto["utilidad"] ?>" size="3" onFocus="foco(this);javascript:mostrardiv('<?= $producto["id"]?>');"></div>
		<div class="col-xs-1">
	        <select id="iva_<?= $producto["id"] ?>" name="iva_<?= $producto["id"] ?>"  <?= $deshabilitado?> onFocus="foco(this);javascript:mostrardiv('<?= $producto["id"]?>');" >
	                <option value="21" <? if($producto["iva"] == "21") echo"selected";?>>21</option>
	                <option value="10.5"  <? if($producto["iva"] == "10.5") echo"selected";?>>10.5</option>
	                <option value="0"  <? if($producto["iva"] == "0") echo"selected";?>>0</option>
	        </select>
        </div>

        <div class="col-xs-1">
            <div id="flotante_<?= $producto["id"]?>" style="display: none;">
            <a href="javaScript:dependencia_estado('<?= $producto["id"]?>')"><img src="<?= IMGS?>edt.gif" width="25" height="14" /></a>
            </div>
        </div>
	</div>
	<? endforeach ?>
        <?
		
		?>                 
        <tr>
            <td></td>
        </tr>    
</table>
</form>
</div>

