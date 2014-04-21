<?php


class data_connect{ //ez egy osztály, csak terv
	public $domain;    

	function connect(){
		$domain = $_SERVER['HTTP_HOST'];
		if ($domain == 'localhost'){
			$kapcsolat = mysql_connect("localhost", LOCALHOST_DB_USER, LOCALHOST_DB_PASSWORD);
			$adatbazis = mysql_select_db(LOCALHOST_DB_NAME);}
		else {
			$kapcsolat = mysql_connect("localhost", DOMAIN_DB_USER, DOMAIN_DB_PASSWORD);
			$adatbazis = mysql_select_db(DOMAIN_DB_NAME);
		}

		if (!$kapcsolat) { die('Hiba a MySQL szerverhez kapcsolódás közben: ' . mysql_error());}

		$ekezet = mysql_set_charset("utf8",$kapcsolat);

		if ($_REQUEST[db_save]){
			backup_tables();
		 }

		 if ($_REQUEST[db_load]){
			sql_import("db-backup.sql");
		 }
	}
}


class user{
	public $sorszam;
	public $nev;
	public $jog;
	public $email;
	public $csoport;
	public $belephiba;
	public $html_code;

	function login(){
		$jel = mysql_real_escape_string($_REQUEST['jelszo']);
		$azon = mysql_real_escape_string($_REQUEST['azonosito']);
		if (!$_REQUEST['azonosito']){$azon = $_SESSION["sessfelhasznaloazonosito"];}
		$jel = md5($jel);

		If ($_REQUEST['logout'] == 1) {
			unset($_SESSION["sessfelhasznalo"]);
			unset($_SESSION["sessfelhasznalosorszam"]);
			unset($_SESSION["sessfelhasznaloazonosito"]);
			unset($_SESSION["sessfelhasznalojog"]);
		}

		If ($_REQUEST['azonosito'] != "") {
			$result = mysql_query("SELECT sorszam, azonosito, jog, email FROM ".$_SESSION[adatbazis_etag]."_regisztralt WHERE azonosito = '$azon' AND jelszo = '$jel'");	
			$s = mysql_fetch_row($result);
			$mostlep == 1;
		} else {
		   if ($_SESSION[sessfelhasznalosorszam]){
			$result = mysql_query("SELECT sorszam, azonosito, jog, email FROM ".$_SESSION[adatbazis_etag]."_regisztralt WHERE sorszam = '$_SESSION[sessfelhasznalosorszam]'");	
			$s = mysql_fetch_row($result);
		   }
		}
			if ($s[2] != ""){
				$this->sorszam = $s[0];
				$this->nev = $s[1];
				$this->jog = $s[2];
				$this->email = $s[3];
				$_SESSION["sessfelhasznalo"] = $s[1];
				$_SESSION["sessfelhasznalosorszam"] = $s[0];
				$_SESSION["sessfelhasznaloazonosito"] = $s[1];
				$_SESSION["sessfelhasznalojog"] = $s[2];
				$_SESSION["sessfelhasznaloemail"] = $s[3];
				if ($mostlep){
				  $loging_db = new log_db;
				  $loging_db->write($_SESSION["sessfelhasznalosorszam"], 'Bejelentkezés');
				}
			} else {
               If ($_REQUEST['azonosito'] != "") {
				$_SESSION[messagetodiv] = '<p>Figyelem!</p><ul><li>Rossz felhasználónév, vagy jelszó!</li></ul>';
               }
			}

	}
}


/**
 * Sablonkezelő
 * 
 */

class html_blokk{
	public $html_code;
	/** Sablon állomány és sablon adatok összeillesztése
	 * 
	 * @param string $fajlnev A sablon fájl neve
	 * @param array $tomb A sablonban cserélendő szövegelemek értékei
	 */
	
	function load_template_file($fajlnev, $tomb) {
 
		if(file_exists($fajlnev) > 0) {
			$temp = fopen($fajlnev,"r");
			$tartalom = fread($temp, filesize($fajlnev));
			fclose($temp);
	 
			$tartalom = preg_replace("/{(.*?)}/si","{\$tomb[\\1]}",$tartalom);
	 
			eval("\$tartalom = \"" . addslashes($tartalom) . "\";");
	 
			$this->html_code = $tartalom;
			return $tartalom . "\n";
		}
 
	}
}

/**
 * Többnyelvű sablonok kezelése
 */

class languages{
   
   function __construct() {
	  $lang = filter_input(INPUT_GET, 'lang');
	  
	  if ($lang != ''){
			$_SESSION["lang"] = $lang;
		} else {
			if ($_SESSION["lang"] == ''){
				$_SESSION["lang"] = 'hu';
			}
		}
   }
}

/**
 * CSS stílusváltás kezelése
 * 
 * @author Molnár Zoltán <molnarzoli82@gmail.com>
 */

class css{
   
   public $css_changer;
   public $css_file;
   public $css_valaszto;
   
   /**
    * Feltölti az osztály által használt változókat
    */
   
   function __construct() {
	  $this->css_file = filter_input(INPUT_GET, 'css');
	  $this->css_valaszto = filter_input(INPUT_GET, 'css_valaszto');
   }
   
   /**
    * Megvizsgálja, hogy történt e stíluslap váltás
    */
   
   function css_check(){
	  if ($this->css_file)
	  {
		 $_SESSION["css"] = $this->css_file;
	  }
	  else
	  {
		$this->css_file = 'stilus.css';
		if ($_SESSION["css"] != ""){$this->css_file = $_SESSION["css"];}
	  }
   }
   
   /**
    * Az elérhető stíluslapokat jeleníti meg
    * 
    */
   
   function css_changer_on(){
	  If ($this->css_valaszto){
		 $index_html = new html_blokk;
		 $array = array('css_file' => $this->css_file);
		 $this->css_changer = $index_html->load_template_file("sablonok/css_valaszto.html", $array);	 
	  }
   }
   
}

class email{
   
   function kuld(){
	  if ($_REQUEST['kuldo'] != ''){
		 $message_bevezeto = '
					 A F�t�sszolg�ltat� Kft. weboldal�ra az al�bbi �zenet �rkezett:<br /><br /><br />
					 K�ld� email c�me:<br />'.$_REQUEST[kuldo].'<br /><br />
					 �zenet:<br />'.$_REQUEST[uzenet_iroda].'<br /><br />';

					 $subject = 'F�t�sszolg�ltat� Kft. - weboldal �zenet';
					 $s_from = 'info@futesszolgaltato.hu';
					 $s_feladnev = 'F�t�sszolg�ltat� Kft.';
					 $to  = 'pczekmany@gmail.com';
					 $to2 = 'info@inkozrt.hu';
					 $message = $message_bevezeto;
					 $headers  = 'MIME-Version: 1.0' . "\r\n";
					 $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
					 $headers .= 'From: '.$s_feladnev.'<'.$s_from.'>' . "\r\n" .
						 'Reply-To: '.$s_from.'' . "\r\n" .
						 'X-Mailer: PHP/' . phpversion();
					 mail($to, $subject, $message, $headers);
					 mail($to2, $subject, $message, $headers);
	 }
   }
   
}