<?php
$array = include 'lista-de-compras.php';

//var_dump($array);

function outputCSV($data)
{
    $filename = "data_export_" . date("d-m-Y") . ".csv";
    $output = fopen($filename, "w");
    foreach ($data as $key => $value) {
        foreach ($value as $key2 => $value2) {
            foreach ($value2 as $key3 => $value3) {

                $result = [$key, $key2, $key3, $value3];

                //var_dump($result);

                fputcsv($output, $result, ';');
            }
        }
    }
    fclose($output);
    die();  
}

outputCSV($array);
