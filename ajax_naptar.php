<?php
include ('adatkapcsolat.php');

header("Content-Type: text/HTML; charset=UTF-8");
#be�rkez� param�terek vizsg�lata
If ($_REQUEST['napt_ev'] != ""){ $napt_aktev = $_REQUEST[napt_ev];} 
If ($_REQUEST['napt_honap'] != ""){ $napt_akthonap = $_REQUEST[napt_honap];} 
If ($_REQUEST['napt_nap'] != ""){ $napt_nap = $_REQUEST[napt_nap];} 

#mai nap r�gz�t�se
$x_mainap = date('d');
$x_maiho = date('m');

#mai nap meghat�roz�sa
If ($napt_aktev == ""){ $napt_aktev = date('Y');}
If ($napt_akthonap == ""){ $napt_akthonap = date('m');}
If ($napt_nap == ""){ $napt_nap = date('d');}

#honapok t�mb felt�lt�se
$honapok = array();
$honapok[1] = 'január';
$honapok[2] = 'február';
$honapok[3] = 'március';
$honapok[4] = 'április';
$honapok[5] = 'május';
$honapok[6] = 'június';
$honapok[7] = 'július';
$honapok[8] = 'augusztus';
$honapok[9] = 'szeptember';
$honapok[10] = 'október';
$honapok[11] = 'november';
$honapok[12] = 'december';

#a h�nap els� napja milyen napra esikt
$firstday = date("l", mktime(0, 0, 0, $napt_akthonap, 1, $napt_aktev));
switch ($firstday) {
	case "Monday":
		$nap_szam = 1;
		break;
	case "Tuesday":
		$nap_szam = 2;
		break;
	case "Wednesday":
		$nap_szam = 3;
		break;
	case "Thursday":
		$nap_szam = 4;
		break;
	case "Friday":
		$nap_szam = 5;
		break;
	case "Saturday":
		$nap_szam = 6;
		break;
	case "Sunday":
		$nap_szam = 7;
		break;
}

#$honapnapokszama = cal_days_in_month(CAL_GREGORIAN, $napt_akthonap, $napt_aktev);
$honapnapokszama = date('t', mktime(0, 0, 0, $napt_akthonap+1, 0, $napt_aktev)); 
$hetnapja = 0;

for ($i = 1; $i < 50; $i++){
	$kockastyle = "";
	$hetnapja++;
	$i7 = $i-7;
	
	if ($i > 7){
		if (($nap_szam == $hetnapja) and ($indul == 0)) {
			$indul = 1;
			$hanyadika = 0;
		}
		
		if ($indul == 1){ 
			$hanyadika++;
			if (strlen($hanyadika) == 1) { $hanyadikax = '0'.$hanyadika;}
			else { $hanyadikax = $hanyadika;}
			if (strlen($napt_akthonap) == 1) { $napt_akthonapx = '0'.$napt_akthonap;}
			else { $napt_akthonapx = $napt_akthonap;}
			#$t = mysql_query("SELECT sorszam, nap, nyitas, zaras, szunnap FROM hegesztes_naptar WHERE sorszam = $hetnapja");
			#$a = mysql_fetch_row($t);
			#$napt_szoveg = '<p align="center" style="font-size:10px;">nyitva:<br>'.$a[2].'-'.$a[3].'</p>';
			#if ($a[4] == "1"){
			#	$kockastyle = 'naptarhetkoznapsznap'; $napt_szoveg = '<p align="center" style="font-size:10px">sz�nnap</p>';
			#}
			$xxnap = $napt_aktev . '-' . $napt_akthonapx.'-'.$hanyadikax;
			$t = mysql_query("SELECT sorszam FROM diakotthon_szoveg WHERE ((esemeny = '$xxnap') OR ((esemeny < '$xxnap') AND (esemeny_ig >= '$xxnap')))");
			$c = mysql_fetch_row($t);
			$napt_link = '#';
			if ($c[0] != ""){
               $napt_link = '?c='.$c[0];
				$napt_szoveg = '<p align="center" style="font-size:12px; margin:-5;">'.$c[5].'<br />'.$c[2].'-'.$c[3].'</p>';
				$stylekieg = 'style="background-color: #A5DAEA;"';
				$napt_title = 'részletekért kattintson';
			}
			if ($c[0] != ""){
				$kockastyle = 'naptarhetkoznap';
			}
			
		}
	}
	
	$napszoveg = $hanyadika;
	if (($x_mainap == $hanyadika) AND ($x_maiho == $napt_akthonap)) { 
		$stylekieg = 'style="border: 1px solid #923516; padding: 1px 1px 1px 1px; margin: 1px 0px 1px 0px; height: 24px; width: 24px;"';
	}
	
	if ($i % 7 == 0){
		$hetnapja = 0; $sortor = '<br style="clear:both; /">'; $kockastyle = 'naptarhetvegenap';} 
	else {
		$sortor = ''; 
		if ($kockastyle == "") {$kockastyle = 'naptarhetkoznap';}}
		
	if ($hetnapja == 6) { $kockastyle = 'naptarhetvegenap';} 
	
	
	if ($i == 1){ $kockastyle = 'naptarfejlec'; $napszoveg ='h';}
	if ($i == 2){ $kockastyle = 'naptarfejlec'; $napszoveg ='k';}
	if ($i == 3){ $kockastyle = 'naptarfejlec'; $napszoveg ='sze';}
	if ($i == 4){ $kockastyle = 'naptarfejlec'; $napszoveg ='cs';}
	if ($i == 5){ $kockastyle = 'naptarfejlec'; $napszoveg ='p';}
	if ($i == 6){ $kockastyle = 'naptarfejlech'; $napszoveg ='szo';}
	if ($i == 7){ $kockastyle = 'naptarfejlech'; $napszoveg ='v'; $sortor = '';}
	
	#$naplistax = '<div class="'.$kockastyle.'" '.$stylekieg.'>'.$napszoveg.$napt_szoveg.'</div>';
	$naplistax = '<a href="'.$napt_link.'" class="napt_link" title="'.$napt_title.'"><div class="'.$kockastyle.'" '.$stylekieg.'>'.$napszoveg.'</div></a>';
	$stylekieg = "";
	$naplista = $naplista . $naplistax .$sortor;
	if ($honapnapokszama == $hanyadika) {break;}
}

if ($akthonapv == "") { $akthonapv = (int)$napt_akthonap;}

$napt_akthonap_p = $napt_akthonap +1;
$napt_akthonap_m = $napt_akthonap -1;

$napt_aktev_m = $napt_aktev;
$napt_aktev_p = $napt_aktev;

if ($napt_akthonap_p > 12) {
	$napt_akthonap_p = 1;}
if ($napt_akthonap_m < 1) {
	$napt_akthonap_m = 12;}

if ($napt_akthonap_p == 1) {
	$napt_aktev_p++;}
	
if ($napt_akthonap_m == 12) {
	$napt_aktev_m--;}

$naptarblokk = '
<div class="naptarlap">
	<div style="height: 22px; width: 240px; margin: 0px auto 0px auto; text-align: center; clear: both;">
		<div style="float:left; margin: -6px 3px 0px 0px;"><img src="graphics/nyil_jobbra.png" onclick="showNaptar('.$napt_aktev_m.','.$napt_akthonap_m.',1)"></div>
		<div style="width: 152px; float:left; font-size: 12px; margin: 5px auto 0px auto;">'.$napt_aktev.'. '.$honapok[$akthonapv].'</div>
		<div style="float:left; margin: -6px 0px 0px 3px;"><img src="graphics/nyil_balra.png" onclick="showNaptar('.$napt_aktev_p.','.$napt_akthonap_p.',1)"></div>
	</div>
	<br />
	'.$naplista.'
</div>
<br style="clear: both;" />';

echo $naptarblokk;
?>