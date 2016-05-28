  
<script type="text/javascript">                

                 
                $(function(){
                        $('#buscar_usuarios').autocomplete({
                        source:"<?=VIEW?>compras/ajax.php",
                                select: function(event, ui){
                         $("#numero").val(ui.item.cheque);
                                //AGREGAR EL PRECIO DEL PRODUCTO 
                                }		

                        });

                });   	
                
shortcut.add("Enter", function () { busqueda('cheques','<?= $_POST['buscador'] ?>');});
shortcut.add("F5", function () { document.datos.buscador.focus(); });	                
                
 </script>
<div class="cuerpo" style="padding-top :10px;"> 


<form method="post" name="datos">

	<div class="row" id="titulo_principal">
		<h2>LISTADO DE CHEQUE </h2>
	</div>

	<div class="row" >
		<font color="white">Ingrese datos del Cliente </font><input type="text" size="70" name="buscador" value="<?= $_POST["buscador"]?>">
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','<?= $_POST['buscador'] ?>')">BUSCAR</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','TODOS')">TODOS</A>
		<a style="color:white" onmouseover="this.style.color='blue'" onmouseout="this.style.color='white'" href="javaScript:busqueda('list','DEUDORES')">DEUDORES</A>
		<br>
		<FONT SIZE="1" COLOR="white">Busque por : N°cheque, N&#176; Factura, Banco, importe, destinatario, titular</FONT>		
	</div>
	
	<form method="post" name="datos">

	<div class="row">
		<div class="col-xs-12 text-right">
			<a href="<?=VIEW?>compras/nuevo_cheque.php" class="various fancybox.iframe">
				<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
			</a>		
		</div>
	</div>	


	<div class="row" id="titulos" style="font-size:16px">

            <div class="col-xs-1">                
              Cheque<a href="javaScript:ordenar_por('cheques','numero','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','numero','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                
            </div>
            <div class="col-xs-2">Banco</div>
            <div class="col-xs-2">Titular
				<a href="javaScript:ordenar_por('cheques','titular','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','titular','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                 
             </div>
            <div class="col-xs-1">Destino
				<a href="javaScript:ordenar_por('cheques','destinatario','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','destinatario','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                 
            </div>
            <div class="col-xs-1">Importe
				<a href="javaScript:ordenar_por('cheques','importe','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','importe','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                 
            </div>
           	<div class="col-xs-1">N&#176; Factura</div>                                        
            <div class="col-xs-1">Operacion</div>
            <div class="col-xs-1">F. Emisi&oacute;n
				<a href="javaScript:ordenar_por('cheques','fechaEmision','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','fechaEmision','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                 
            </div>  
            <div class="col-xs-1">F. Cobro
				<a href="javaScript:ordenar_por('cheques','fechaCobro','ASC')"><img  src="<?= IMGS?>prev.png"  border="0"  ></a>
				<a href="javaScript:ordenar_por('cheques','fechaCobro','DESC')"><img  src="<?= IMGS?>next.png"  border="0" ></a>                 
            </div>
            <div class="col-xs-1">
            </div>	

    </div>
            <? $contador = 0;
            foreach ($cheques as $cheque):
            $contador++;
            ?>
			<div class="row" id="<?=$contador%2?'linea_par':'linea_impar'?>">
                <div class="col-xs-1"><?= $cheque["cheque"] ?></div>
                <div class="col-xs-2"><?= $cheque["banco"] ?></div>
                <div class="col-xs-2"><?= $cheque["titular"] ?></div>
                <div class="col-xs-1"><?= $cheque["destinatario"] ?></div>
                <div class="col-xs-1"><?= $cheque["importe"] ?></div>
                <div class="col-xs-1"><?= $cheque["nfactura"] ?></div>
                <div class="col-xs-1"><?= $cheque["operacion"] ?></div>
                <div class="col-xs-1"><?= $cheque["fechaEmision"] ?></div>
                <div class="col-xs-1"><?= $cheque["fechaCobro"] ?></div>


				<div class="col-xs-1"><a class="various fancybox.iframe" href="<?=VIEW?>compras/editar_cheque.php?id=<?= $cheque["id"] ?>">
						<img  src="<?= IMGS?>edt.gif"  border="0"></a>
            	</div>						
            </div>	
           <? endforeach ?>
			<div class="row">
				<div class="col-xs-12 text-right">
					<a href="<?=VIEW?>compras/nuevo_cheque.php" class="various fancybox.iframe">
						<img style="display:block;" src="<?= IMGS?>add2.gif"  border="0" >
					</a>		
				</div>
			</div>	


	</form>

</div>