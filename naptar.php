<?php

   #be�rkez� param�terek vizsg�lata
   If ($_REQUEST['napt_ev'] != ""){ $napt_aktev = $_REQUEST[napt_ev];} 
   If ($_REQUEST['napt_honap'] != ""){ $napt_akthonap = $_REQUEST[napt_honap];} 
   If ($_REQUEST['napt_nap'] != ""){ $napt_nap = $_REQUEST[napt_nap];} 

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


           #if ($indul == 1){ 
           #	$hanyadika++;
           #	if (strlen($hanyadika) == 1) { $hanyadikax = '0'.$hanyadika;}
           #	else { $hanyadikax = $hanyadika;}
           #	$t = mysql_query("SELECT sorszam, nap, nyitas, zaras, szunnap FROM istvantanya_nyitva WHERE sorszam = #$hetnapja");
           #	$a = mysql_fetch_row($t);
           #	$napt_szoveg = '<p align="center" style="font-size:10px;">'.$a[2].'-'.$a[3].'</p>';
           #	if ($a[4] == "1"){
           #		$kockastyle = 'naptarhetkoznapsznap'; $napt_szoveg = '<p align="center" #style="font-size:10px">sz�nnap</p>';
           #	}
           #	$xxnap = $napt_aktev . '.' . $napt_akthonap.'.'.$hanyadikax;
           #	$t = mysql_query("SELECT sorszam, nap, nyitas, zaras, szunnap, megjegyzes FROM istvantanya_nyitva WHERE #nap = '$xxnap'");
           #	$a = mysql_fetch_row($t);
           #	if ($a[2] != ""){
           #		$napt_szoveg = '<p align="center" style="font-size:10px; #margin-top:-5px;">'.$a[5].'<br>'.$a[2].'-'.$a[3].'</p>';
           #	}

           #}
       }

       $napszoveg = $hanyadika;

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
       if ($i == 7){ $kockastyle = 'naptarfejlech'; $napszoveg ='v'; $sortor = '<br><br>';}

       $naplistax = '<div class="'.$kockastyle.'">'.$napszoveg.$napt_szoveg.'</div>';

       $naplista = $naplista . $naplistax .$sortor;
       if ($honapnapokszama == $hanyadika) {break;}
   }

   if ($akthonapv == "") { $akthonapv = (int)$napt_akthonap;}

   $naptarblokk = '<div class="naptarlap">
   '.$napt_aktev.'. '.$honapok[$akthonapv].'<br />
   '.$naplista.'
   </div>';



   $x_ho = date('m');

   $naptar = '
      <div class="right_box" style="min-height: 220px;">
       <div class="oldalboxnaptar">
       <h2>Eseménynaptár</h2>		
       <br />

       <div id="txtNaptar" style="clear: both; margin: 0px 0px 0px 0px;"></div>
       <script type="text/javascript">showNaptar(2014,'.$x_ho.',1);</script>
       </div>
      </div>';

?>