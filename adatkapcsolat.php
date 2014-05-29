<?php

	if ($_SERVER['HTTP_HOST'] == 'localhost'){
			$kapcsolat = mysql_connect("localhost", "root", "");
			$adatbazis = mysql_select_db("diakotthon");
		} else {
			$kapcsolat = mysql_connect("localhost", "omhoke_user", "user2014");
			$adatbazis = mysql_select_db("omhoke_diakotthon");
                        
		}

			if (!$kapcsolat) {
				die('Hiba a MySQL szerverhez kapcsolódás közben: ' . mysql_error());
			}	
		
			if (!$adatbazis) {
				die('Hiba a MySQL adatbázishoz kapcsolódás közben: ' . mysql_error());
			}
		$ekezet = mysql_set_charset("utf8",$kapcsolat);
		
		$_SESSION[adatbazis_etag] = 'diakotthon';
?>