<?php
$index_html = new html_blokk;
$menu = filter_input(INPUT_GET, 'menu');
$page = filter_input(INPUT_GET, 'page');

if ($menu){
   $tartalom = $index_html->load_template_file("sablonok/".$menu.".html", $array);
}	

$cikk = new cikkszoveg();

if ($page){
   $cikk->mysql_read($page, 'hu');
   
} else {
    if (!$menu){
        $cikk->mysql_read('cimlap', 'hu');   
    }
}

if (!$menu){ 
    $tartalom = '<h1>'.$cikk->cim .'</h1>'. $cikk->tartalom;
   
    if ($cikk->hir == '1'){
        $visszagomb = '<a href="?page=hirek" class="visszagomb">Vissza</a>';
        $tartalom .= $visszagomb;
    }
}

if ($cikk->php_file){
  require_once($cikk->php_file);
 
}