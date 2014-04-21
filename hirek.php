<?php
$result = mysql_query("SELECT cim, tartalom FROM ".$_SESSION[adatbazis_etag]."_szoveg WHERE archiv = '0' LIMIT 5");
while ($next_element = mysql_fetch_array($result)){
    
    $tartalom .= '<h2>'.$next_element[cim].'</h2>'
            . '<div>'.$next_element[tartalom].'</div>';
}