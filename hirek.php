<?php
$sql_query = "SELECT sorszam FROM ".$_SESSION[adatbazis_etag]."_szoveg WHERE hir='1' AND archiv = '0'";
$lap = $_REQUEST[lap];
$navsav = new navsav;
$navsav->create_navsav($sql_query, $lap, 5, '', 'public');
$lapszam = "LIMIT $navsav->tol, $navsav->ig";

$result = mysql_query("SELECT sorszam, cim, tartalom, bevezeto FROM ".$_SESSION[adatbazis_etag]."_szoveg WHERE hir='1' AND archiv = '0' ORDER BY kelt DESC $lapszam");
echo mysql_error();
while ($next_element = mysql_fetch_array($result)){
    $tartalom_hirek .= '<div class="hirekbox">'
            . '<h2>'.$next_element[cim].'</h2>'
            . '<div>'.$next_element[bevezeto].'</div>'
            . '<a href="?page='.$next_element[sorszam].'">Részletek...</a>'
            . '</div>';
}

$tartalom .= $navsav->lapszamsor . $tartalom_hirek;