<?
include_once("../../funciones.php");
include_once("../../models/productos.class.php");
conectar_bd();
$subcategorias = Producto::get_subcategorias(4);															

?>
<link rel="stylesheet" type="text/css" href="<?= CSS?>style.css">

<script language="JavaScript" src="<?=JS?>funciones.js"></script>
<div class="contentArea"> 


<form method="post" name="datos">
<div class="pageTitle">
LISTADO DE SUBCATEGORIAS 
</div>
<br>
<table cellpadding=0 cellspacing=0 border=1 width="90%" align="center" >
<!--	<tr><td colspan=20 align="left">
		Ingrese codigo del Producto <input type="text" size="70" name="buscador" value="<?= $_POST["buscador"]?>">
		<a href="javaScript:busqueda('<?= $_POST['buscador'] ?>')">BUSCAR</A>
		<a href="javaScript:busqueda('TODOS')">TODOS</A>
		&nbsp;&nbsp;&nbsp;<input name="LISTADO DE PRECIOS" type="button" value="LISTADO DE PRECIOS" onCLICK="javascript:popUp('index.php?accion=listado_precios')" />
	</td></tr>
-->
	<tr>
		<th>id</th>
		<th>Categoria</th>
		<th>nombre</th>
		<th>Descripcion</th>
		<th>Activo</th>
		<th>+ Info</th>
		<th>Borrar</th>
		<?if($gerarquia == true) {?>	<th> </th><? } ?>
	</tr>
	<? $contador = 0;
	foreach ($subcategorias as $producto):
	$contador++;
	?>
	<tr class="<?=($contador%2==0? "fila_par":"fila_impar");?>">
		<td><?= $producto["id"]; ?></td>
		<td><?= $producto["nombre"]; ?></td>
		<td><?= $producto["descripcion"]; ?></td>
		<td><?if($producto["activo"] == 1) echo "Si";else echo "No"; ?></td>

		<td><a href="index.php?accion=modify_categoria&id=<?= $producto["id"] ?>">
		<img  src="<?= IMGS?>lupa.gif"  border="0" height ="20px" width="20px" >
		</a></td>

		<td align="center"><a href="javaScript:pregunta('<?= $producto["id"]?>','Categoria','delete_categoria')">
		<img  src="<?= IMGS?>eliminar.png"  border="0">
		</a></td>
	</tr>
	<? endforeach ?>
	<tr>
		<td align="right" colspan="10"><a href="index.php?accion=new_categoria">
		<img style="display:block;" src="<?= IMGS?>add.gif"  border="0" >
		</a></td>
	</tr>	

	</table>
</form>
</div>
</div>
