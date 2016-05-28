	<script language="JavaScript">


		$(function(){
			$('#buscador').autocomplete({
			source:"<?=VIEW?>facturacion/ajax.php",
			select: function(event, ui){
				 $("#idproducto").val(ui.item.id);
             	 $("#detalle_producto").val(ui.item.descripcion);
             	 $("#precio_producto").val(ui.item.precio);	
             	 $("#bulto").val(ui.item.bulto);	
				 			 
			//AGREGAR EL PRECIO DEL PRODUCTO 
			}
					
			});
			
		});

	shortcut.add("F1", function () { abreVentana_productos(); });
	shortcut.add("F2", function () { abreVentana_clientes(); });
	shortcut.add("Enter", function () { addTemporal();  });
	shortcut.add("PageUp", function () { genera_presupuesto();});
	shortcut.add("PageDown", function () { genera_presupuesto_sin_imprimir();});
        

	function disableEnterKey(e){
	var key;
	if(window.event){
	key = window.event.keyCode; //IE
	}else{
	key = e.which; //firefox
	}
	if(key==13){
	return false;
	}else{
	return true;
	}
	}


	var miPopup
	function abreVentana_clientes(){
		miPopup = window.open("../clientes/index.php?accion=listado_clientes","miwin","width=900,height=600,scrollbars=yes")
		miPopup.focus()
	}
	function abreVentana_productos(){
		miPopup = window.open("../productos/index.php?accion=listado_productos","miwin","width=2000,height=1000,scrollbars=yes")
		miPopup.focus()
	}

	</script>
	<script language="JavaScript">
		var cursor;
		if (document.all) {
		// Est� utilizando EXPLORER
		cursor='hand';
		} else {
		// Est� utilizando MOZILLA/NETSCAPE
		cursor='pointer';
		}
		
		var miPopup
		function abreVentana(){
			var bi=document.getElementById("baseimponible").value;
			if (bi==0) {
				miPopup = window.open("ver_proveedores.php","miwin","width=700,height=380,scrollbars=yes");
				miPopup.focus();
			} else {
				alert ("Ha comenzado la factura. No puede cambiar de proveedor");
			}
		}
	// VALIDA QUE EL NUMERO DE PRODUCTO
	function validarproducto(){
//		alert("lucho");
			var idproducto=document.getElementById("idproducto").value;
			miPopup = window.open("../../view/facturacion/comprobarproducto.php?idproducto="+idproducto,"frame_datos","width=700,height=80,scrollbars=yes");
	}	

	// VALIDA CLIENTE
	function validarcliente(){
//		alert("lucho");
			var idcliente=document.getElementById("_idcliente").value;
			miPopup = window.open("../../view/facturacion/comprobarcliente.php?idcliente="+idcliente+"&idtipo=1","frame_datos","width=700,height=80,scrollbars=yes");
	}	


	//SOLO NUMEROS
	$(document).ready(function(){
	$(".solo-numero").keyup(function(){
	if ($(this).val() != '')
	$(this).val($(this).attr('value').replace(/[^0-9\.]/g, ""));
	});
	});

	function generar_factura()
	{ 
	document.datos.submit();		
		
	}

	function addTemporal_1()
	{
	var tabla = $(document.createElement("table")).attr('width', '100%').attr('cellpadding', '5').attr('cellspacing', '5');
	var tb = $(document.createElement("tbody"));
	var tr = $(document.createElement("tr"));

	var td1 = $(document.createElement("td"));

	var td2 = $(document.createElement("td")).attr("align", "right")
											 .attr("width", "5%");


	tr.append(td1);
	tr.append(td2);


	}
	var nav4 = window.Event ? true : false;
	function acceptNum(evt){
	// NOTE: Backspace = 8, Enter = 13, '0' = 48, '9' = 57, '.' = 46
	var key = nav4 ? evt.which : evt.keyCode;
	return (key <= 13 || (key >= 48 && key <= 57) || key == 46);
	}

	function removeFormField() {
	$(this).empty();
		alert($(this));
	}

	function addTemporal()
	{					

		if($('#cantidad').val())
			{
				if($('#idproducto').val())
					{	
					var desc = $('#detalle_producto').val();
					var bulto = $('#bulto').val();

					var numero = $('#mitabla tr:last').attr("id");
					var numero = Number(numero.replace(/[^0-9\.]+/g,""));
		//			var lucho = $(this).parent("tr").remove();
					var lucho = '"tr"';	
					//crear tabla manualmente
				//	var table = document.getElementById('mitabla');   
				//	var rows = table.getElementsByTagName("tr");   
					//crear tabla manualmente
					numero = numero + parseInt(1);

					var precio_descuento = $('#precio_producto').val() - ($('#precio_producto').val() * $('#descuento_producto').val() / 100) ;
					var precio_total = precio_descuento * $('#cantidad').val();
					var precio_total = precio_total * bulto;
					precio_total = (precio_total).toFixed(2); // valor con 2 decimales			



					$('#mitabla tr:last').after("<tr class='fila_par' id="+ numero +"><td align='left'><input type=text size='1' onfocus='this.blur()' name=cantidad"+ numero + " value=" + $('#cantidad').val() + "></td><td align='left'><input type=text size='3' onfocus='this.blur()' name=idproducto"+ numero + "  value=" + $('#idproducto').val() + "></td><td align='left'>"+desc+"</td><td align='left'><input type=text size='7' onfocus='this.blur()' name=precio_producto"+ numero + "  value=" + $('#precio_producto').val() + "></td>						<td align='left'><input type=text size='7' onfocus='this.blur()' name=bulto"+ numero + "  value=" + $('#bulto').val() + "></td><td align='left'><input type=text size='7' onfocus='this.blur()' name=descuento_producto"+ numero + "  value=" + $('#descuento_producto').val() + "></td><td align='left'><input type=text size='7' name=precio_total"+ numero + " id=precio_total"+ numero + "  value=" + precio_total + " onfocus='this.blur()'></td><td><a href='#' onClick=$(this).parent().parent().remove();>Quitar</a></td></tr>"); 
					
					
				//	total_total = $('#precio_total1').val() ;
					if(numero > 1){
					var total_total=0;
	
						var i=0;						
//						var total_total=parseInt($('#precio_total'+i).val());
						for(i=1;i<=numero;i++){	
							parcial = 'precio_total'+i;	
						//	total_total = parseInt(precio_total);
							total_total = parseFloat(total_total) + parseFloat($('#'+parcial+'').val());
						}

					}else{
					//	total_total = $('#precio_total1').val() ;
					$("#cantidad").prop('value', '1');
					$("#bulto").prop('value', '0');					
					$("#idproducto").prop('value', '');
					$("#detalle_producto").prop('value', '');
					$("#precio_producto").prop('value', '');
					$("#buscador").prop('value', '');
					$("#descuento_producto").prop('value', 0);
					$("#_total").prop('value', total_total);
					$("#buscador").focus();
					
						
					}
					total_total = (total_total).toFixed(2); // valor con 2 decimales			
					$("#cantidad").val(1);
					$("#bulto").prop('value', '0');										
					$("#idproducto").prop('value', '');
					$("#detalle_producto").prop('value', '');
					$("#precio_producto").prop('value', '');
					$("#buscador").prop('value', '');
					$("#descuento_producto").prop('value', 0);
					$("#_total").prop('value', total_total);

					$("#buscador").focus();

					}//<td><img SRC='http://www.controldestockmovil.com.ar/lady-jane/templates/img/del.gif' onclick=$(this).parent('tr').remove();></td>
					//<td><a href='#' onClick='removeFormField(); return false;'>Remove</a></td>
				else
					{
					window.alert('Tiene que ingresar un Producto');		 					
					}
			}
		else
			{
			window.alert('Tiene que cargar la cantidad de productos para poder ingresar el producto');		 
			$("#cantidad").focus();
			}
	}
			 /* Opci�n 1 
			 var n = $('tr:last td', $("#mitabla")).length;

			 var tds = '<tr>';
		 for(var i = 0; i < n; i++){
			 tds += '<td>nuevo</td>';
		 }
		 tds += '</tr>';

		 $("#mitabla").append(tds);          
	   });
	$('#myTable tr:last').attr("id"); */
        function genera_presupuesto()  
        {
        var update=window.confirm("Desea generar el presupuesto?");
        if (update){
            var formu = document.datos;

        formu.submit()
        }
        }
        function genera_presupuesto_sin_imprimir()  
        {

        var update=window.confirm("Desea generar el presupuesto sin factura?");

        if (update){
            document.datos.action="index.php?accion=generar_factura_sin_imprimir";	

            var formu = document.datos;

        formu.submit()
        }
        }
        </script>




<div class="container">


	<div class="cuerpo_abm" >
		<div class="row" id="titulo_principal">
			<h1> <?= $mensaje_cabezera?> <?=$codigo?><br></h1>
		</div>
            
	<form name="datos" method="post" enctype="multipart/form-data" action="index.php?accion=generar_factura" onKeyPress="return disableEnterKey(event)" >
            <input type="hidden" name="tipo_factura" value="1" />



            <div class="row">
                <FONT SIZE="1" COLOR="BLUE">Re Pag : PRESUPUESTO CON COMPROBANTE </font> / <FONT SIZE="1" COLOR="red">Av Pag :  PRESUPUESTO </font> 
             <br>
            </div>


            <div class="row text-center" id="titulo_principal">
                    DATOS DEL CLIENTE
            </div>

            <div class="row">
            	<div class="col-xs-2">
					Cod.Cliente:<input type="Button" value="?" onClick="abreVentana_clientes()">
					<input class="solo-numero" type="text" name="_idcliente" id="_idcliente" value="1" onBlur="validarcliente()" size="3" class="form-control" >
            	</div>	
            	<div class="col-xs-5">
						RS:<input type="text" name="descripcion" id="descripcion"  size="50" value="Consumidor Final" disabled>
            	</div>	
            	<div class="col-xs-2">
						Desc.:%<input type="text" name="descuento" id="descuento" size="1" value="0">
            	</div>	
            	<div class="col-xs-3">
						Cond.IVA:<input type="text" name="condicion_iva" id="condicion_iva" size="20" value="0" disabled>
            	</div>	

            </div>



            <div class="row text-center" id="titulo_principal">
				PRODUCTOS A INGRESAR EN FACTURA
            </div>	

			<div class="row">
				<div class="col-xs-2">
				Busqueda: <img src="<?=IMGS?>ver.png"  name="lupa" onClick="abreVentana_productos()">		
				</div>	
				<div class="col-xs-10">
	            	<input type="text" class="form-control"  name="buscador" id="buscador" size="80" onKeypress="if (event.keyCode == 13) event.returnValue = false;" >
                </div>
		
			</div>
			<div class="row">
				<div class="col-xs-2">
					Codigo		
				</div>	
				<div class="col-xs-10">
					<input type="text"  name="idproducto" id="idproducto" size="10" class="form-control" disabled>
                </div>
		
			</div>

			<div class="row">
				<div class="col-xs-2">
					Desc.:		
				</div>	
				<div class="col-xs-10">
					<input type="text" name="detalle_producto" id="detalle_producto"  size="120" class="form-control" disabled>
                </div>
		
			</div>

			<div class="row">
				<div class="col-xs-2">
					<label>Cantidad: </label>		
					<input type="number"  maxlength="4" value="1" name="cantidad" id="cantidad" size="3" onFocus="foco(this);" onBlur="no_foco(this);" class="form-control">					
				</div>	
				<div class="col-xs-2">
					Desc:<input type="number" maxlength="3" name="descuento_producto" id="descuento_producto" size="2" onFocus="foco(this);this.value='';" onBlur="no_foco(this);" value="0" class="form-control" >
                </div>
				<div class="col-xs-2">
					Largo:<input type="number" maxlength="3" name="bulto" id="bulto" size="2" onFocus="foco(this);this.value='';" onBlur="no_foco(this);" value="0" class="form-control" >
                </div>                
				<div class="col-xs-3">
					Precio:<input type="text" onKeyPress="return acceptNum(event)" name="precio_producto" id="precio_producto" size="15" onFocus="foco(this);" onBlur="no_foco(this);" class="form-control">
                </div>		
                <div class="col-xs-2">
					<img SRC="<?=IMGS?>botonagregar.jpg" onClick="addTemporal()" >
                </div>
			</div>

			<div class="row text-center" id="titulo_principal">
				PRODUCTOS SELECCIONADOS
            </div>


            <table id="mitabla" class="table table-striped table-condensed">

                <tr id="0" style="background-color: transparent; color:white" >
                        <th>Cant.</th>
                        <th>Art.</th>
                        <th>Detalle</th>
                        <th>P/unitario</th>
                        <th>Largo</th>                        
                        <th>Desc.</th>
                        <th>Importe</th>
                        <th></th>
                </tr>        
            </table>
            
            <table border="0" width="90%" class="tabla_list">
                <tr align="right" class='fila_par'>
                    <td style="color:white">SubTotal:</td>
                    <td width="15%" align="center"> <input type="text" name="_total" id="_total" size='7'></td>
                    <td width="5%"></td>
                </tr>
            </table>

            <table width="100%" class="tabla_list">
                <tr>
                    <td class="submit" align="center" colspan="20" >
                        <? if($boton== true){?><BR><BR><BR><BR>
                        <input type="submit" name="generar" value="GENERAR PRESUPUESTO" >
                        <? } ?>
                    </td>
                </tr>

           </table>
	</form>

        <br><br>
        <iframe id="frame_datos" name="frame_datos" width="0" height="0" frameborder="0">
        <ilayer width="0" height="0" id="frame_datos" name="frame_datos"></ilayer>
        </iframe>

	</div>            	
