
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>:: Importar de Excel a la Base de Datos ::</title>

</head>

<body>

<!– FORMULARIO PARA SOICITAR LA CARGA DEL EXCEL –>

Selecciona el archivo a importar:

<form name="importa" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data" >

<input type="file" name="excel" />

<input type='submit' name='enviar'  value="Importar"  />

<input type="hidden" value="upload" name="action" />

</form>

<!– CARGA LA MISMA PAGINA MANDANDO LA VARIABLE upload –>

<?php
set_time_limit(0);
extract($_POST);

if ($action == "upload"){
//    echo "aca entro"; die();

//cargamos el archivo al servidor con el mismo nombre

//solo le agregue el sufijo bak_

$archivo = $_FILES['excel']['name'];

$tipo = $_FILES['excel']['type'];

$destino = "bak_".$archivo;

if (copy($_FILES['excel']['tmp_name'],$destino)) echo "Archivo Cargado Con Éxito";

else echo "Error Al Cargar el Archivo";

////////////////////////////////////////////////////////

if (file_exists ("bak_".$archivo)){

/** Clases necesarias */

require_once("Classes/PHPExcel.php");

require_once("Classes/PHPExcel/Reader/Excel2007.php");

// Cargando la hoja de cálculo

$objReader = new PHPExcel_Reader_Excel2007();

$objPHPExcel = $objReader->load("bak_".$archivo);

$objFecha = new PHPExcel_Shared_Date();

// Asignar hoja de excel activa

$objPHPExcel->setActiveSheetIndex(0);

//conectamos con la base de datos

$cn = mysql_connect ("localhost","root","112233") or die ("ERROR EN LA CONEXION");

$db = mysql_select_db ("esteban",$cn) or die ("ERROR AL CONECTAR A LA BD");

// Llenamos el arreglo con los datos  del archivo xlsx

for ($i=1;$i<=290;$i++){

$_DATOS_EXCEL[$i]['categoria']= $objPHPExcel->getActiveSheet()->getCell("A".$i)->getCalculatedValue();
$_DATOS_EXCEL[$i]['subcategoria']= $objPHPExcel->getActiveSheet()->getCell("B".$i)->getCalculatedValue();
$_DATOS_EXCEL[$i]['nombre']= $objPHPExcel->getActiveSheet()->getCell("C".$i)->getCalculatedValue();
$_DATOS_EXCEL[$i]['precio']= $objPHPExcel->getActiveSheet()->getCell("D".$i)->getCalculatedValue();
$_DATOS_EXCEL[$i]['descripcion'] = $objPHPExcel->getActiveSheet()->getCell("E".$i)->getCalculatedValue();



}
//id, idMoneda, idCategoria, idSubCategoria, descripcion, fechaCarga, idUsuario, activo, aviso_stock, precio, desc1, desc2, desc3, utilidad, iva, referencia
}

//si por algo no cargo el archivo bak_

else{echo "Necesitas primero importar el archivo";}

$errores=0;

//recorremos el arreglo multidimensional

//para ir recuperando los datos obtenidos

//del excel e ir insertandolos en la BD
$contador = 0;
//$contador_id = 19315;
foreach($_DATOS_EXCEL as $campo => $valor){

 $nombre = mysql_real_escape_string($valor["nombre"]);
 $descripcion = mysql_real_escape_string($valor["descripcion"]);
 $precio = $valor["precio"]; 
 $categoria = $valor["categoria"];
 $subcategoria = $valor["subcategoria"];

 $descripcion_final = $nombre . " " . $descripcion; 

 
 if($categoria == 39 ):

	
 		mysql_query(query)

	// $query = "insert into productos values ('NULL','1','$categoria','$subcategoria', '$descripcion_final',CURDATE(), '1', '1', '0','$precio','0', '0','', CURDATE(),'1', '0', '0')";

	 mysql_query($query);
endif;       


}

//mysql_query("insert into productos_movimientos_log values (null,10, 'Modificacion via excel', 1, 30, 630,CURDATE(),'18:20:00',2)");
//mysql_query("insert into productos_movimientos_log values (null,10, 'Modificacion via excel', 1, 41, 691,CURDATE(),'12:00:00',2)");

/////////////////////////////////////////////////////////////////////////

echo "<strong><center>ARCHIVO IMPORTADO CON EXITO, EN TOTAL $campo REGISTROS Y $contador CAMBIOS</center></strong>";

//una vez terminado el proceso borramos el

//archivo que esta en el servidor el bak_

unlink($destino);

}

?>

</body>

</html>



?>
