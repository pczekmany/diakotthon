<?php
$index_html = new html_blokk;
$menu = filter_input(INPUT_GET, 'menu');
$page = filter_input(INPUT_GET, 'page');

if ($menu){
   $tartalom = $index_html->load_template_file("sablonok/".$menu.".html", $array);}
else {	
   $tartalom = $index_html->load_template_file("sablonok/cimlap.html", $array);
}	

if ($page){
   $cikk = new cikkszoveg();
   $cikk->mysql_read($page, 'hu');
   $tartalom = $cikk->tartalom;
}

if ($menu == 'hirek'){
    require_once('hirek.php');
}
if ($menu == 'galeria'){
    require_once('galeria.php');
}