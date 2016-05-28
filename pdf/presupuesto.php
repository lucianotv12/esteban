<?php
include_once("../models/pdf.class/invoice.php");
include_once("../funciones.php");
conectar_bd();

$factura = new Factura($_GET["idFactura"]);
$cliente = new Cliente($factura->get_idCliente());
$productos_facturas = Factura::get_productos_x_factura($_GET["idFactura"]);
$fecha = date("d/m/Y");
$nombre_cliente = $cliente->get_nombre();
$domicilio_cliente = $cliente->get_domicilio()." ".$cliente->get_localidad()." ".$cliente->get_provincia()." ".$cliente->get_cp();
$condicion_iva_cliente = $cliente->get_condicion_iva();
$id_cliente = $cliente->get_id();
$cuit_cliente = $cliente->get_nro_cuit();


 $pdf = new PDF_Invoice( 'P', 'mm', 'A4' );
$pdf->AddPage();
$pdf->addSociete( "Aserradero Esteban",
                  "Direccion:\n" .
                  "Gaona y Ecuador 2675\n".
                  "(1744) Moreno Prov. de Buenos Aires\n				" .
                  "Tel:(0237)466-1116\n						".
                  "I.V.A. RESPONSABLE INSCRIPTO\n");
$pdf->fact_dev( "Presupuesto", "TEMPO" );
$pdf->temporaire( "Aserradero Esteban" );
$pdf->addDate( "$fecha");
$pdf->addClient("$id_cliente");
//$pdf->addPageNumber("1");
$pdf->addClientAdresse("\nSR/SRS: $nombre_cliente\nDOMICILIO: $domicilio_cliente\nIVA:$condicion_iva_cliente \nCUIT:$cuit_cliente");

//$pdf->addReglement("Ch�que � r�ception de facture");
//$pdf->addEcheance("$fecha");
//$pdf->addNumTVA("FR888777666");
//$pdf->addReference("Devis ... du ....");
$cols=array( "CANT."    => 12,
             "CODIGO"  => 15,
             "DESCRIPCION"     => 100,
             "LARGO"     => 13,           
             "PRECIO U."      => 25,
             "PRECIO T." => 25);
$pdf->addCols( $cols);
$cols=array( "CANT."    => "C",
             "CODIGO"  => "C",
             "DESCRIPCION"     => "C",
             "LARGO"     => "C",             
             "PRECIO U."      => "R",
             "PRECIO T." => "R");
$pdf->addLineFormat( $cols);
$pdf->addLineFormat($cols);

$y    = 79;

$contador = 0;
$precio_final = 0;
foreach($productos_facturas as $producto):
$descripcion = "";    
$id_producto = $producto['idProducto'];
$descripcion = $producto['descripcion'];
$descripcion = substr($descripcion, 0, 42);
$descripcion .= "...";

$cantidad = $producto['cantidad'];
$precio_unitario = redondear_dos_decimal($producto['precio_unitario']);
$precio_total = $producto['precio_total'];
$descuento = $producto['descuento'];
$bulto = $producto['bulto'];
$precio_parcial = $producto['bulto'] * $producto['precio_unitario'] ;

$precio_parcial = redondear_dos_decimal($producto['cantidad'] * $precio_parcial);


$line = array( "CODIGO"    => "$id_producto",
               "DESCRIPCION"  => "$descripcion",
               "CANT."     => "$cantidad",
               "LARGO"     => "$bulto",
               "PRECIO U."      => "$precio_unitario",
               "PRECIO T." => "$precio_parcial");

$contador = $contador + 1;

$size = $pdf->addLine( $y, $line );
$y   += $size + 1;

if($descuento != "0"): // SI EL PRODUCTO TIENE DESCUENTO...

    $descuento_producto =  redondear_dos_decimal($precio_parcial * $producto['descuento'] / 100);

    $line = array( "CODIGO"    => "$id_producto",
               "DESCRIPCION"  => "Descuento producto",
               "CANT."     => " ",
               "LARGO"     => " ",               
               "PRECIO U."      => "% $descuento",
               "PRECIO T." => "- $descuento_producto");

//$contador = $contador + 1;
$size = $pdf->addLine( $y, $line );
$y   += $size + 1;
endif;

$precio_final += $precio_total;
endforeach;
$precio_final = redondear_dos_decimal($precio_final);
$line = array( "CODIGO"    => " ",
               "DESCRIPCION"  => " ",
               "CANT."     => " ",
               "LARGO"     => " ",
               "PRECIO U."      => "TOTAL",
               "PRECIO T." => "$precio_final");

$contador = $contador + 2;


$y    = 188;
$size = $pdf->addLine( $y, $line );

//$pdf->addCadreTVAs();
        
// invoice = array( "px_unit" => value,
//                  "qte"     => qte,
//                  "tva"     => code_tva );
// tab_tva = array( "1"       => 19.6,
//                  "2"       => 5.5, ... );
// params  = array( "RemiseGlobale" => [0|1],
//                      "remise_tva"     => [1|2...],  // {la remise s'applique sur ce code TVA}
//                      "remise"         => value,     // {montant de la remise}
//                      "remise_percent" => percent,   // {pourcentage de remise sur ce montant de TVA}
//                  "FraisPort"     => [0|1],
//                      "portTTC"        => value,     // montant des frais de ports TTC
//                                                     // par defaut la TVA = 19.6 %
//                      "portHT"         => value,     // montant des frais de ports HT
//                      "portTVA"        => tva_value, // valeur de la TVA a appliquer sur le montant HT
//                  "AccompteExige" => [0|1],
//                      "accompte"         => value    // montant de l'acompte (TTC)
//                      "accompte_percent" => percent  // pourcentage d'acompte (TTC)
//                  "Remarque" => "texte"              // texte
/*$tot_prods = array( array ( "px_unit" => 600, "qte" => 1, "tva" => 1 ),
                    array ( "px_unit" =>  10, "qte" => 1, "tva" => 1 ));
$tab_tva = array( "1"       => 19.6,
                  "2"       => 5.5);
$params  = array( "RemiseGlobale" => 1,
                      "remise_tva"     => 1,       // {la remise s'applique sur ce code TVA}
                      "remise"         => 0,       // {montant de la remise}
                      "remise_percent" => 10,      // {pourcentage de remise sur ce montant de TVA}
                  "FraisPort"     => 1,
                      "portTTC"        => 10,      // montant des frais de ports TTC
                                                   // par defaut la TVA = 19.6 %
                      "portHT"         => 0,       // montant des frais de ports HT
                      "portTVA"        => 19.6,    // valeur de la TVA a appliquer sur le montant HT
                  "AccompteExige" => 1,
                      "accompte"         => 0,     // montant de l'acompte (TTC)
                      "accompte_percent" => 15,    // pourcentage d'acompte (TTC)
                  "Remarque" => "Avec un acompte, svp..." );
*/
//$pdf->addTVAs( $params, $tab_tva, $tot_prods);
//$pdf->addCadreEurosFrancs();
$pdf->IncludeJS("print('true');"); 
$pdf->Output();
?>