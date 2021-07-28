<?php
include 'script.php';

$array = include 'lista-de-compras.php';
$filename = "data_export_" . date("d-m-Y") . ".csv";
$output = fopen($filename, "w");

foreach (formataArray($array) as $value) {
    fputcsv($output, $value, ';');
}

fclose($output);
die();
