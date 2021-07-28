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

                $result = [$key, $key2, correcao($key3), $value3];

                //var_dump($result);

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

outputCSV($array);
