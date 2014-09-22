<?php
session_start();
require_once('parameters.php');
require_once('functions.php');
require_once('class.php');
require_once('adatkapcsolat.php');

//kapcsolat létrehozása az adatbázis szerverrel (class.php)
#$adatkapcsolat = new data_connect;  //példányosítjuk az objektumot
#$adatkapcsolat->connect();          //az objektum connect fügvényét futatjuk

require_once('naptar.php');

require_once('tartalomvalasztas.php');

$array = array('tartalom' => $tartalom,
                'naptar' => $naptar,
		'alcim' => $alcim,
		'admin_konyvtar' => $admin_konyvtar);
	 
$index_html = new html_blokk;

echo $index_html->load_template_file("sablonok/index.html", $array);