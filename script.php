<?php
$array = include 'lista-de-compras.php';

//var_dump($array);

function outputCSV($data)
{
    $filename = "data_export_" . date("d-m-Y") . ".csv";
    $output = fopen($filename, "w");
    uksort($data,"ordena_mes");
    foreach ($data as $key => $value) {
        ksort($value);
        foreach ($value as $key2 => $value2) {

            arsort($value2);
            foreach ($value2 as $key3 => $value3) {
                $result = [$key, $key2 , correcao($key3), $value3];  
                fputcsv($output, $result, ';');
            }
        }
    }
    fclose($output);
    die();
}

function correcao($palavra)
{

    if ($palavra == "Papel Hignico") {
        return "Papel Higiênico";
    }
    if ($palavra == "Brocolis") {
        return "Brócolis";
    }
    if ($palavra == "Chocolate ao leit") {
        return "Chocolate ao leite";
    }
    if ($palavra == "Sabao em po") {
        return "Sabão em pó";
    }
    return $palavra;

}

function ordena_mes($a, $b) {
    $meses = array( 'janeiro', 'fevereiro', 'marco', 'abril', 'maio', 'junho', 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro' );
    if ( array_search( $a, $meses) == array_search( $b, $meses) ) return 0;
    return array_search( $a, $meses) > array_search( $b, $meses) ? 1 : -1;
}

outputCSV($array);
