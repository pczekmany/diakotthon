<?php
$result = mysql_query("SELECT cim, tartalom, hir FROM ".$_SESSION[adatbazis_etag]."_szoveg WHERE archiv = '0' and hir = '1' LIMIT 5");
while ($next_element = mysql_fetch_array($result)){
  
    $tartalom .= '<div id="hirekbox"><h2>'.$next_element[cim].'</h2>'
            . '<div>'.$next_element[tartalom].'</div></div>';
 
}