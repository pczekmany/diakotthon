DROP TABLE diakotthon_galeriacsop;

CREATE TABLE `diakotthon_galeriacsop` (
  `sorszam` int(11) NOT NULL DEFAULT '0',
  `felirat_hu` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `sorrendszam` int(2) DEFAULT NULL,
  `csoporttagja` int(11) DEFAULT NULL,
  PRIMARY KEY (`sorszam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_galeriacsop VALUES("1","Diákotthon kivűlről ","1","0");
INSERT INTO diakotthon_galeriacsop VALUES("2","Diákotthon belülről","2","0");
INSERT INTO diakotthon_galeriacsop VALUES("3","Rendezvények","3","0");
INSERT INTO diakotthon_galeriacsop VALUES("4","Ünnepek","4","0");



DROP TABLE diakotthon_galeriakepek;

CREATE TABLE `diakotthon_galeriakepek` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sorszam` int(10) unsigned NOT NULL DEFAULT '0',
  `fajlnev_nagy` text COLLATE latin2_hungarian_ci,
  `kepszam` int(10) DEFAULT NULL,
  `felirat_hu` varchar(60) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `csoport` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `hirdetes_sorszam` (`kepszam`)
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_galeriakepek VALUES("1","1","Haz_1.jpg","1","kecskédi családi viskó","1");
INSERT INTO diakotthon_galeriakepek VALUES("2","2","Haz_2.jpg","2","Barossközi házzzz","1");
INSERT INTO diakotthon_galeriakepek VALUES("3","3","Haz_3.jpg","3","Tatai ház valahol","1");
INSERT INTO diakotthon_galeriakepek VALUES("4","4","Haz_4.jpg","4","","1");
INSERT INTO diakotthon_galeriakepek VALUES("5","5","Haz_5.jpg","5","","1");
INSERT INTO diakotthon_galeriakepek VALUES("6","6","Haz_6.jpg","6","","1");
INSERT INTO diakotthon_galeriakepek VALUES("7","7","Haz_7.jpg","7","","1");
INSERT INTO diakotthon_galeriakepek VALUES("8","8","Haz_8.jpg","8","","1");
INSERT INTO diakotthon_galeriakepek VALUES("9","9","Haz_9.jpg","9","","1");
INSERT INTO diakotthon_galeriakepek VALUES("10","10","Lakas_1.jpg","1","","2");
INSERT INTO diakotthon_galeriakepek VALUES("11","11","Lakas_2.jpg","2","","2");
INSERT INTO diakotthon_galeriakepek VALUES("12","12","Lakas_3.jpg","1","","4");
INSERT INTO diakotthon_galeriakepek VALUES("168","157","022.jpg","20","","7");
INSERT INTO diakotthon_galeriakepek VALUES("320","158","DSC_3684lr.jpg","1","","8");
INSERT INTO diakotthon_galeriakepek VALUES("321","170","DSC_3685lr.jpg","22","","8");
INSERT INTO diakotthon_galeriakepek VALUES("322","171","DSC_3689lr.jpg","23","","8");
INSERT INTO diakotthon_galeriakepek VALUES("323","172","DSC_3692lr.jpg","24","","8");
INSERT INTO diakotthon_galeriakepek VALUES("324","173","DSC_3697lr.jpg","25","","8");
INSERT INTO diakotthon_galeriakepek VALUES("325","174","DSC_3700lr.jpg","26","","8");
INSERT INTO diakotthon_galeriakepek VALUES("326","175","IMG_8733_11lr.jpg","1","","9");
INSERT INTO diakotthon_galeriakepek VALUES("327","176","DSC_3723lr.jpg","2","","9");
INSERT INTO diakotthon_galeriakepek VALUES("328","177","DSC_3683lr.jpg","3","","9");
INSERT INTO diakotthon_galeriakepek VALUES("329","178","IMG_8802_11lr.jpg","20","","7");
INSERT INTO diakotthon_galeriakepek VALUES("330","179","IMG_8829_11lr.jpg","23","","7");
INSERT INTO diakotthon_galeriakepek VALUES("331","180","180.jpg","1","március","3");



DROP TABLE diakotthon_regisztralt;

CREATE TABLE `diakotthon_regisztralt` (
  `sorszam` int(11) NOT NULL,
  `azonosito` varchar(20) COLLATE latin2_hungarian_ci NOT NULL,
  `nev` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `jelszo` varchar(32) COLLATE latin2_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `hirlevel` varchar(10) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `jog` varchar(1) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '0',
  `archiv` varchar(1) COLLATE latin2_hungarian_ci NOT NULL DEFAULT '0',
  `regisztracio` datetime DEFAULT NULL,
  `bejelentkezes` datetime DEFAULT NULL,
  `megjegyzes` text COLLATE latin2_hungarian_ci,
  `keresztnev` varchar(40) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `vezeteknev` varchar(40) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `telefon` varchar(20) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `telepules` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `cim` varchar(80) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `emailx` varchar(20) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`sorszam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_regisztralt VALUES("0","pczekmany","","0724739e4f7811dd09648d9b205c7d3d","pczekmany@gmail.com","","1","0","","","","","","","","","");
INSERT INTO diakotthon_regisztralt VALUES("1","bmbtamas","Bombicz Tamás","825389c33a252ee237134596cbc77a77","bombiczt@gmail.com","","0","0","","","","","","","","","");
INSERT INTO diakotthon_regisztralt VALUES("2","diakotthon","Diakotthon","5B64ECD18C9562A9F6C51C4C61871CCB","info@diakotthon.hu","","1","0","2014-04-01 00:00:00","","","","","","","","");
INSERT INTO diakotthon_regisztralt VALUES("3","AdminZoli","Molnár Zoltán","e20ffabe4230eed6ba92c6ee9d9618e4","info@inkozrt.hu","1","1","0","0000-00-00 00:00:00","0000-00-00 00:00:00","","","","","","","");



DROP TABLE diakotthon_szoveg;

CREATE TABLE `diakotthon_szoveg` (
  `sorszam` int(11) NOT NULL AUTO_INCREMENT,
  `cim` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bevezeto` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tartalom` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `hivatkozas` varchar(100) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `archiv` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `menucsoport` varchar(30) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `kategoria` varchar(2) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `hir` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `kiemelt` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `nyelv` varchar(2) COLLATE latin2_hungarian_ci DEFAULT 'hu',
  `kelt` datetime DEFAULT NULL,
  `megjelenes` datetime DEFAULT NULL,
  `esemeny` date DEFAULT NULL,
  `esemeny_ig` date DEFAULT NULL,
  `menuhely` int(1) DEFAULT NULL,
  `menunev` varchar(30) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `sorrend` int(5) DEFAULT NULL,
  `menu_fent` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `menu_oldalt` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `php_file` varchar(200) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`sorszam`),
  KEY `sorszam` (`sorszam`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_szoveg VALUES("41","Rólunk","","<p>A Pflum Loretta Bt. 1996-ban alakult csal&aacute;di v&aacute;llalkoz&aacute;sk&eacute;nt, melynek fő profilja a feh&eacute;rnemű gy&aacute;rt&aacute;s &eacute;s &eacute;rt&eacute;kes&iacute;t&eacute;s volt.</p>
<p>Feh&eacute;rneműinket saj&aacute;t varrod&aacute;nkban k&eacute;sz&iacute;tj&uuml;k, <span class=\"kiemelt\">kiz&aacute;r&oacute;lag k&uuml;lf&ouml;ldi alapanyagokb&oacute;l</span>. Term&eacute;keink a legszigor&uacute;bb szakmai k&ouml;vetelm&eacute;nyeknek is megfelelnek.</p>
<p>Term&eacute;ksk&aacute;l&aacute;nkat folyamatosan bővitj&uuml;k, &eacute;s k&ouml;vetj&uuml;k az aktu&aacute;lis divatot. Igyeksz&uuml;nk minden ig&eacute;nyt kiel&eacute;g&iacute;teni az eleg&aacute;nst&oacute;l a h&eacute;tk&ouml;znapi viseletig, S-m&eacute;rettől az extra m&eacute;retig.</p>
<p>Rem&eacute;lj&uuml;k term&eacute;keink elnyerik majd tetsz&eacute;s&eacute;t!</p>
<p>Kellemes v&aacute;s&aacute;rl&aacute;st k&iacute;v&aacute;nunk!</p>","rolunk","0","rolunk","0","0","2","hu","2013-03-09 23:14:24","2013-03-09 23:14:24","0000-00-00","0000-00-00","0","Rólunk","37","1","","");
INSERT INTO diakotthon_szoveg VALUES("42","Mérettáblázat","","<p><meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />
<title>Untitled Document</title>
</p>
<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" style=\"width: 920px;\">
<tbody>
<tr>
<td>
<p><span class=\"kiemelt\">NŐI</span></p>
<table align=\"left\" border=\"0\" cellspacing=\"0\" style=\"width: 700px;\"><colgroup> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> </colgroup>
<tbody>
<tr>
<td height=\"17\" width=\"86\"></td>
<td style=\"text-align: center;\" width=\"86\">XS</td>
<td style=\"text-align: center;\" width=\"86\">S</td>
<td style=\"text-align: center;\" width=\"86\">M</td>
<td style=\"text-align: center;\" width=\"86\">L</td>
<td style=\"text-align: center;\" width=\"86\">XL</td>
<td style=\"text-align: center;\" width=\"86\">XXL</td>
<td style=\"text-align: center;\" width=\"86\">3XL</td>
<td style=\"text-align: center;\" width=\"86\">4XL</td>
<td style=\"text-align: center;\" width=\"86\">4XL</td>
</tr>
<tr>
<td height=\"17\"></td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">34</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">36</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">38</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">40</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">42</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">44</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">46</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">48</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\">48</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Mellbőség</td>
<td style=\"text-align: center;\">80</td>
<td style=\"text-align: center;\">84</td>
<td style=\"text-align: center;\">88</td>
<td style=\"text-align: center;\">92</td>
<td style=\"text-align: center;\">96</td>
<td style=\"text-align: center;\">100</td>
<td style=\"text-align: center;\">104</td>
<td style=\"text-align: center;\">108</td>
<td style=\"text-align: center;\">108</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Derék</td>
<td style=\"text-align: center;\">62</td>
<td style=\"text-align: center;\">66</td>
<td style=\"text-align: center;\">70</td>
<td style=\"text-align: center;\">74</td>
<td style=\"text-align: center;\">78</td>
<td style=\"text-align: center;\">82</td>
<td style=\"text-align: center;\">86</td>
<td style=\"text-align: center;\">90</td>
<td style=\"text-align: center;\">90</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Csípő</td>
<td style=\"text-align: center;\">86</td>
<td style=\"text-align: center;\">90</td>
<td style=\"text-align: center;\">94</td>
<td style=\"text-align: center;\">98</td>
<td style=\"text-align: center;\">102</td>
<td style=\"text-align: center;\">106</td>
<td style=\"text-align: center;\">110</td>
<td style=\"text-align: center;\">116</td>
<td style=\"text-align: center;\">116</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Magasság</td>
<td style=\"text-align: center;\">166</td>
<td style=\"text-align: center;\">168</td>
<td style=\"text-align: center;\">168</td>
<td style=\"text-align: center;\">170</td>
<td style=\"text-align: center;\">172</td>
<td style=\"text-align: center;\">172</td>
<td style=\"text-align: center;\">174</td>
<td style=\"text-align: center;\">174</td>
<td style=\"text-align: center;\">174</td>
</tr>
</tbody>
</table>
</td>
<td rowspan=\"2\"><span style=\"text-align: left;\"><img alt=\"\" height=\"355\" src=\"images/16.jpg\" width=\"201\" /></span></td>
</tr>
<tr>
<td>
<p style=\"text-align: left;\"><span class=\"kiemelt\">LÁNY</span></p>
<table align=\"left\" border=\"0\" cellspacing=\"0\" style=\"width: 700px;\"><colgroup> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> <col width=\"86\" /> </colgroup>
<tbody>
<tr>
<td height=\"17\" style=\"text-align: right;\" width=\"86\"></td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">104</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">110</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">116</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">122</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">128</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">134</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">140</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">146</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">152</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">158</td>
<td bgcolor=\"#E6E6FF\" style=\"text-align: center;\" width=\"86\">164</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Mellbőség</td>
<td style=\"text-align: center;\">56</td>
<td style=\"text-align: center;\">57</td>
<td style=\"text-align: center;\">58</td>
<td style=\"text-align: center;\">61</td>
<td style=\"text-align: center;\">64</td>
<td style=\"text-align: center;\">67</td>
<td style=\"text-align: center;\">70</td>
<td style=\"text-align: center;\">73</td>
<td style=\"text-align: center;\">76</td>
<td style=\"text-align: center;\">79</td>
<td style=\"text-align: center;\">82</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Derék</td>
<td style=\"text-align: center;\">53</td>
<td style=\"text-align: center;\">54</td>
<td style=\"text-align: center;\">55</td>
<td style=\"text-align: center;\">56,5</td>
<td style=\"text-align: center;\">58</td>
<td style=\"text-align: center;\">59,5</td>
<td style=\"text-align: center;\">61</td>
<td style=\"text-align: center;\">62,5</td>
<td style=\"text-align: center;\">64</td>
<td style=\"text-align: center;\">65,5</td>
<td style=\"text-align: center;\">67</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Csípő</td>
<td style=\"text-align: center;\">59</td>
<td style=\"text-align: center;\">62</td>
<td style=\"text-align: center;\">63</td>
<td style=\"text-align: center;\">66</td>
<td style=\"text-align: center;\">69</td>
<td style=\"text-align: center;\">72</td>
<td style=\"text-align: center;\">75</td>
<td style=\"text-align: center;\">78,5</td>
<td style=\"text-align: center;\">82</td>
<td style=\"text-align: center;\">85</td>
<td style=\"text-align: center;\">89</td>
</tr>
<tr>
<td height=\"17\" style=\"text-align: right;\">Magasság</td>
<td style=\"text-align: center;\">104</td>
<td style=\"text-align: center;\">110</td>
<td style=\"text-align: center;\">116</td>
<td style=\"text-align: center;\">122</td>
<td style=\"text-align: center;\">128</td>
<td style=\"text-align: center;\">134</td>
<td style=\"text-align: center;\">140</td>
<td style=\"text-align: center;\">146</td>
<td style=\"text-align: center;\">152</td>
<td style=\"text-align: center;\">158</td>
<td style=\"text-align: center;\">164</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>","merettablazat","0","rolunk","0","0","2","hu","2013-03-09 23:14:34","2013-03-09 23:14:34","0000-00-00","0000-00-00","0","Mérettáblázat","38","1","","");
INSERT INTO diakotthon_szoveg VALUES("43","Szállítási és fizetési módok","","<p>A, A webáruházat üzemeltető adatai:<br />Pflum Loretta Kft.<br />Cím: 1185 Budapest, Honvéd u. 101. (továbbiakban Szolgáltató)<br />Tel: <em>+</em>36 1 290 5726; +36 30 934 3402<br />Fax: <em>+</em>36 1 290 5726</p>
<div>B, Vásárló: <br />Aki a Szolgáltató Internetes Szolgáltatását igénybe veszi, azaz a Szolgáltató internetes felületén regisztráltatja magát és /vagy e felületen keresztül árut vásárol, illetve Szolgáltató internetes felületét használja.</div>
<div> </div>
<div> </div>
<div><strong>2.) A Vásárlási Feltételek célja, közzététele és hatálya</strong></div>
<div> </div>
<div>A, A Szolgáltató az Internetes Vásárlási szolgáltatás Vásárlási feltételeit azért adta ki, hogy ebben részletesen szabályozza az internetes vásárlási szolgáltatással, illetve a Szolgáltató internetes felületének igénybevételével kapcsolatos feltételeket, a Szolgáltató és a Vásárló jogait, kötelezettségeit, és egyéb Internetes Vásárlási Szolgáltatással összefüggő lényeges körülményeket.</div>
<div>B, A Vásárlási Feltételek a Szolgáltató és a vele szerződéses kapcsolatba lépő Vásárló között létrejövő jogviszony általános feltételeit tartalmazza. Az itt nem szabályozott kérdéseket illetően a Szolgáltató Internetes Vásárlási Szolgáltatási, illetve internetes felületi szolgáltatási tevékenységére a Magyar Köztársaság hatályos anyagi jogi jogszabályai, így különösen a Polgári Törvénykönyv, valamint a magyar hatósági előírások külön kikötés nélkül is irányadóak. Jogvita esetére a Szolgáltató és a Vásárló egybehangzóan kikötik a Magyar Köztársaság bíróságai joghatóságát, valamint a magyar anyagi és eljárási jogi jogszabályok alkalmazandóságát.</div>
<div>C, A szolgáltatással kapcsolatos lényeges hírekről, információkról és változásokról a Szolgáltató honlapján ad tájékoztatást. A Szolgáltató jelen szerződés feltételeit egyoldalúan módosíthatja, amely módosítások ezen szerződés új verziójának közzétételétől számított 8 nap elteltével lépnek hatályba. A közzététel ezen internetes felületen kell hogy megtörténjen. Ha a Vásárló a Szolgáltató Internetes Vásárlási Szolgáltatásait továbbra is igénybe veszi, az a módosítás elfogadásának minősül. A Vásárlási Feltételek mindaddig hatályban maradnak, amíg a Szolgáltató az internetes vásárlási szolgáltatást biztosítja.</div>
<div> </div>
<div><strong>3.) Vásárlási Feltételek, amelyek alapján a Szolgáltató az Internetes Vásárlási Szolgáltatást nyújtja a Vásárló részére</strong></div>
<div> </div>
<div>A, A feltételek minden Vásárlóval szemben érvényesek, és hatályosak. A Szolgáltató Internetes Vásárlási Szolgáltatásának használatával ezeket a szerződéses feltételeket feltétlenül és visszavonhatatlanul kötelezőnek ismeri el. A szerződés területi hatálya Magyarország, azaz a szállítási és számlázási címek kizárólag Magyarország területén lehetnek.<br />B, Jelen szerződésben Vásárlónak a Szolgáltató internetes felületével kapcsolatba lépő természetes személynek minősülnek, és így a Szolgáltató internetes felületével kapcsolatos tevékenységükért személyesen felelősek, függetlenül attól, hogy saját jelszóval azonosították magukat, vagy intézmény ügyfeleként kerültek kapcsolatba a Szolgáltató internetes felületével. Ha a Vásárló a Szolgáltató Internetes Vásárlási Szolgáltatásait igénybe veszi, az a jelen szerződés elfogadásának minősül.</div>
<div>C, A szolgáltató nem vállal felelősséget az internetes felületen elhelyezett információk tartalmáért és hitelességéért.</div>
<div>D, A Szolgáltató nem felel a közvetlen, közvetett, előre nem látható vagy következményes károkért, illetőleg elmaradt haszonért, ideértve többek között az adatvesztésből, programok elvesztéséből, üzlet-illetve jóhírnév vesztésből eredő károkat, valamint a Szolgáltató internetes felületének és az Internetes Vásárlási Szolgáltatásának használatából vagy e használat meghiúsulásából fakadó mindenfajta kárt és veszteséget; a Szolgáltató semmilyen körülmények között sem felel a közvetlen ellenőrzési körén kívül eső okból bekövetkező károkért.</div>
<div>E, A Szolgáltató által fenntartott adathálózati kezelői felület az adathálózat (Internet) sajátosságai miatt mind belföldről, mind külföldről elérhető. A Vásárlási Feltételek azonban kizárólag Magyarország területére címzett és magyar számlázási címet feltüntetett megrendelésre érvényes.</div>
<div>F, A Szerződés a Szolgáltató internetes felületén a Vásárlási feltételek elfogadásával jön létre. A Szolgáltató internetes felületén való vásárlásnak feltétele a regisztráció. A megrendelések akkor jönnek létre, amikor a Vásárló a megrendelést végső formájában jóváhagyja.</div>
<div>G, A Szolgáltató fenntartja magának a jogot, hogy a megrendelések beérkezésekor, amennyiben a regisztráció adatainak valódisága kérdéses vagy értelmezhetetlen, az adatokat törölje, és az ezekkel az adatokkal feladott megrendeléseket érvénytelennek minősítse. A megrendelések maximum 100.000 Ft-ig fizethetőek a Fizetési feltételek alapján, az ezt meghaladó értékű rendelések egyedi elbírálás alá kerülnek.</div>
<div>H, A Szolgáltató internetes felületén történő regisztráció során a Vásárló adatai megadása után a szolgáltató rögzíti azokat, így a Vásárlónak újabb megrendeléséhez már csak felhasználónevét és jelszavát kell megadnia.</div>
<div> </div>
<div><strong>4.) Szállítási feltételek:</strong></div>
<div> </div>
<div>A, A Szolgáltató internetes felületén megrendelt összes termékre az alábbi szállítási információk vonatkoznak:</div>
<div>A Vásárló részére megrendelt összes árut postai utánvéttel szállítjuk, ha megfelel a Vásárlási feltételeknek. A postai kézbesítés díja a Vásárlót terheli. Csomagolási díjat nem számolunk fel.</div>
<div>Házhoz szállítás az egész ország területére érvényes, szállítási címként szerepelhet lakás, vagy akár munkahely címe is, az a Magyarország területén bármilyen szállítási cím megadható. A szállítási cím eltérhet a számlázási címtől is. Szállítási címként azt a címet érdemes megjelölni, ahol a vevő nagy valószínűséggel tartózkodik a szállítás várható időpontjában. A megrendeléskor megadott szállítási címet utólag nem lehet módosítani! Külföldi szállítási vagy számlázási cím esetén a Vásárlási feltételek 3,E. pontjában leírtak érvényesek.</div>
<div> </div>
<div><strong>5.) Fizetési feltételek</strong></div>
<div> </div>
<div>A, Utánvétes fizetés: a rendelés értékét és a postai kézbesítési díjat az átvételkor kell kiegyenlíteni, amely tartalmazza a szállítás és az utánvét költségeit is. Vásárló a mindenkori postai díjszabásról a Magyar Posta honlapján, valamint hivatalos tákékoztató kiadványaiból tájékozódhat. Szolgáltató nem vállal felelősséget a Posta díjszabásaiban bekövetkezett változások miatti plusszköltségek miatt.</div>
<div>6, A Vásárló jogai és kötelezettségei<br />A Vásárlónak 8 napig jogában áll a megrendelt terméket a Szolgáltató részére hiánytalanul visszaküldeni. A Távollévők között kötött szerződésekről szóló 17/1999. (II.5.) Kormányrendelet értelmében a visszaküldés költségei a Vásárlót terhelik. A Szolgáltató köteles az áru ellenértékét a csomag kézhezvételétől számítva 30 napon belül visszajuttatni a vásárlónak. Az elállásra nyitva álló 8 munkanapos határidő attól a naptól kezdődik, amikor a Vásárló a csomagot átvette.</div>","fizetesimodok","0","","0","0","2","hu","2013-03-09 23:14:40","2013-03-09 23:14:40","0000-00-00","0000-00-00","0","Szállítási és fizetési módok","39","1","","");
INSERT INTO diakotthon_szoveg VALUES("44","Adatvédelmi nyilatkozat","","<div><strong>A,</strong> A Szolgáltatás igénybevételéhez szükséges regisztráció során a Pflum Loretta Kft. (továbbiakban: Szolgáltató) csak a feltétlenül szükséges adatokat kéri be és rögzíti a rendszerben. Vásárló az adatok megadásával egyidejűleg hozzájárul, hogy részére a Szolgáltató személyre szabott szolgáltatási ajánlatokat, reklámanyagokat küldhessen, összegyűlt statisztikai adatokat megőrizzen, tiszteletben tartva és óvva a személyiségi jogokat. Amennyiben ezen ajánlatokat Vásárló nem igényli, úgy azt egy, a Szolgáltató számára küldött üzenetben (a regisztráció során megadott e-mail címről) kérheti. Eze esetben a Szolgáltató köteles a Vásárló kérését tiszteletben tartani, és számára nem küld több ilyen jellegű ajánlatot semmilyen formában. A Vásárló bármelyik megadott adatához a Vásárlón kívül kizárólag Szolgáltató rendelkezik hozzáféréssel. A Szolgáltató ezeket az adatokat szigorúan bizalmasan kezeli, azokat a Vásárló hozzájárulása nélkül nem hozza harmadik fél tudomására. A Szolgáltató biztosítja, hogy az általa összegyűjtött információk a Vásárló által megadottaknak megfelelőek és pontosak legyenek, a honlap működtetéséhez szükséges mértéket ne lépjék túl, az adatokat pontosan kezeljék és a rendelkezésre bocsátott információk alapján frissítsék, illetőleg, ha azok a továbbiakban már nem szükségesek, töröljék. A Vásárló kötelezi magát arra, hogy kizárólag valós, és pontos adatokat ad meg a Szolgáltatónak.</div>
<div> </div>
<div><strong>B,</strong> A Vásárló a saját maga által megválasztott és bármikor változtatható jelszóval fér hozzá saját adataihoz. Megadott személyes adatait Vásárló a Szolgáltató internetes felhasználói felületén bármikor megváltoztathatja, illetve az \"<a href=\"../index.php?option=com_contact&amp;task=view&amp;contact_id=1&amp;Itemid=33\">Kapcsolat</a>\" - menüpontban megadott elérhetőségek valamelyikén keresztül bármikor töröltetheti.</div>
<div> </div>
<div><strong>C,</strong> A jelszó titkosságának védelme a Vásárló feladata. A Vásárló feladata az is, hogy adatait a megfelelő titkossággal kezelje. A Szolgáltató a jelszó jogosulatlan használatáért nem felel.</div>
<div> </div>
<div><strong>D, </strong>A Szolgáltató internetes felületéről más weboldalakra linket biztosíthat. A linkek használata során a Vásárlónak tisztában kell lennie azzal, hogy a weboldalakra vonatkozó titoktartási és adatvédelmi szabályzatok eltérőek lehetnek, és a Szolgáltató nem vállal felelősséget mások titoktartási szabályaiért, vagy mások által gyűjtött személyes adatok kezelésére vonatkozó szabályokért.</div>
<div> </div>
<div><br /><strong>Pflum Loretta Kft.</strong></div>","adatvedelem","0","szolgaltatasok","0","0","2","hu","2013-03-09 23:14:48","2013-03-09 23:14:48","0000-00-00","0000-00-00","0","Adatvédelmi nyilatkozat","40","1","","");
INSERT INTO diakotthon_szoveg VALUES("48","Vásárlási szerzőfés (ÁSZF)","","<div></div>
<div><strong>Megrendelésed leadásakor a Pflum Loretta Bt. vásárlója leszel. Kérjük, szíveskedj áttanulmányozni az alábbi tudnivalókat!</strong></div>
<div> </div>
<div>Az Eladó: Pflum Loretta Kft.<br />Címe: 1185 Budapest Honvéd u.101.<br />Adóigazgatási száma: 14310175-2-43<br />Cégjegyzékszáma: 01-09-898190<br />Telefon: +3612905726 ; 06309343402<br />Fax: +3612905726</div>
<div> </div>
<div><strong>A szerződés tárgya:</strong></div>
<div>A Pflum Loretta Kft. által üzemeltetett internetes áruházában megtalálható összes árucikk. Az árucikkek tulajdonságait, jellemzőit az árucikkhez tartozó konkrét oldalon tudhatja meg.</div>
<div> </div>
<div><strong>Vételár, fizetési feltételek:</strong></div>
<div>Az árucikkek mellett feltüntetett ár az árucikk vételára, mely tartalmazza az általános forgalmi adót is. A vételár kiegyenlítése utánvéttel történik.</div>
<div> </div>
<div><strong>Fizetés utánvéttel:</strong></div>
<div>Az utánvéttel történő fizetéskor a vételárat az átvétel helyén kell megfizetni.</div>
<div> </div>
<div><strong>Szállítási feltételek, határidők:</strong></div>
<div>A Pflum Loretta Kft. a Vásárló által megrendelt árucikkeket a megrendeléstől számított 5 munkanapon belül szállítja a vásárlónak.</div>
<div> </div>
<div><strong>Az árucikkek cseréje:</strong><br />Ha a megrendelt árucikk gyári hibás, esetleg a szállítás során megsérül, a Pflum Loretta Kft. a telephelyre visszaküldve azt kicseréli a vevőnek. A csere lehetősége csak és kizárólag a láthatóan és bizonyíthatóan gyári hibás termékekre vonatkozik! A nem rendeltetésszerű használatból eredő károkért a Pflum Loretta Kft. nem felel, a címkén bevarrt vásárlói tájékoztatónak nem megfelelő kezelésből fakadó minőségromlásért felelősséget nem áll módunkban vállalni, és az ilyen használt terméket nem cseréljük ki.</div>
<div> </div>
<div><strong>Az elállás joga:</strong><br />A megrendelt árucikk kézhez vételétől számított 8 napon belül vásárlóinknak joguk van elállni a vásárlási szándékuktól. Ebben az esetben a Pflum Loretta Kft. köteles a sérülésmentes eredeti csomagolásban lévő árucikkért kifizetett vételárat visszatéríteni a vásárlónak legkésőbb az elállást, illetve az árucikk visszaszolgáltatását követő 30 napon belül. A visszatérítés a szállítási költségre nem vonatkozik, valamint az árucikk visszajuttatásának költségeit a megrendelő viseli.</div>
<div> </div>
<div><strong>Adatvédelem:</strong><br />A Pflum Loretta Kft. a birtokába jutott adatokat bizalmasan kezeli, a rendelések teljesítéséhez használja fel, harmadik félnek semmilyen formában nem adja azt tovább. Adatvédelmi szabályainkról bővebben <a href=\"?x=adatvedelem\">itt</a> olvashat.</div>","aszf","0","szolgaltatasok","0","0","2","hu","2013-03-09 23:16:47","2013-03-09 23:16:47","0000-00-00","0000-00-00","0","Vásárlási szerzőfés (ÁSZF)","44","1","","");
INSERT INTO diakotthon_szoveg VALUES("49","Kapcsolat","","<p class=\"normal\">Pflum Loretta Kft.<br />1185 Budapest, Honvéd u. 101.<br />Telefon: +36 1 290 5726, +36 30 934 3402<br />Fax: +36 1 290 5726</p>","kapcsolat","1","szolgaltatasok","0","0","2","hu","2013-03-09 23:27:06","2013-03-09 23:27:06","2013-03-16","0000-00-00","0","Kapcsolat","45","0","","kapcsolat.php");
INSERT INTO diakotthon_szoveg VALUES("62","","","","list","0","","","","","hu","0000-00-00 00:00:00","0000-00-00 00:00:00","0000-00-00","0000-00-00","0","","0","","","list.php");
INSERT INTO diakotthon_szoveg VALUES("63","Garancia","","<div><strong>Az árucikkek cseréje:</strong><br />Ha a megrendelt árucikk gyári hibás, esetleg a szállítás során megsérül, a Pflum Loretta Kft. a telephelyre visszaküldve azt kicseréli a vevőnek. A csere lehetősége csak és kizárólag a láthatóan és bizonyíthatóan gyári hibás termékekre vonatkozik! A nem rendeltetésszerű használatból eredő károkért a Pflum Loretta Kft. nem felel, a címkén bevarrt vásárlói tájékoztatónak nem megfelelő kezelésből fakadó minőségromlásért felelősséget nem áll módunkban vállalni, és az ilyen használt terméket nem cseréljük ki.</div>
<div> </div>
<div><strong>Az elállás joga:</strong><br />A megrendelt árucikk kézhez vételétől számított 8 napon belül vásárlóinknak joguk van elállni a vásárlási szándékuktól. Ebben az esetben a Pflum Loretta Kft. köteles a sérülésmentes eredeti csomagolásban lévő árucikkért kifizetett vételárat visszatéríteni a vásárlónak legkésőbb az elállást, illetve az árucikk visszaszolgáltatását követő 30 napon belül. A visszatérítés a szállítási költségre nem vonatkozik, valamint az árucikk visszajuttatásának költségeit a megrendelő viseli.</div>","garancia","1","","0","0","2","hu","2013-09-24 17:17:05","2013-09-24 17:17:05","0000-00-00","0000-00-00","","Garancia","46","0","","");
INSERT INTO diakotthon_szoveg VALUES("64","Oldaltérkép","","<p class=\"normal\"><span>Hamarosan...</span></p>","oldalterkep","1","","0","0","2","hu","2013-09-24 17:17:12","2013-09-24 17:17:12","0000-00-00","0000-00-00","","Oldaltérkép","47","0","","");
INSERT INTO diakotthon_szoveg VALUES("65","Hírlevél","","<p class=\"normal\">Adja meg email címét és mi értesítjük legfrissebb ajánlatainkról, akcióinkról!</p>","hirlevel","1","","0","0","2","hu","2013-09-24 17:17:19","2013-09-24 17:17:19","0000-00-00","0000-00-00","","Hírlevél","48","0","","hirlevel.php");
INSERT INTO diakotthon_szoveg VALUES("66","Akciók","","<p class=\"normal\"><span>Hamarosan...</span></p>","akciok","0","","0","0","2","hu","2013-09-24 17:17:24","2013-09-24 17:17:24","0000-00-00","0000-00-00","","Akciók","49","0","","");
INSERT INTO diakotthon_szoveg VALUES("67","Fiókom","","","fiokom","0","","0","0","2","hu","2013-09-24 17:17:36","2013-09-24 17:17:36","0000-00-00","0000-00-00","","Fiókom","50","0","","profil.php");
INSERT INTO diakotthon_szoveg VALUES("68","Rendeléstörténet","","<p class=\"normal\"><span>Hamarosan...</span></p>","rendelestortenet","0","","0","0","2","hu","2013-09-24 17:17:44","2013-09-24 17:17:44","0000-00-00","0000-00-00","","Rendeléstörténet","51","0","","rendelesek.php");
INSERT INTO diakotthon_szoveg VALUES("69","Kedvencek","","<p class=\"normal\"><span>Hamarosan...</span></p>","kedvencek","0","","0","0","2","hu","2013-09-24 17:17:51","2013-09-24 17:17:51","0000-00-00","0000-00-00","","Kedvencek","52","0","","");
INSERT INTO diakotthon_szoveg VALUES("72","Kosár","","","kosar","0","","0","0","2","hu","2013-09-24 17:33:35","2013-09-24 17:33:35","0000-00-00","0000-00-00","","Kosár","55","0","","kosar.php");
INSERT INTO diakotthon_szoveg VALUES("73","Regisztráció","","","regisztracio","0","","","","","hu","","","","","","","","","","regisztracio.php");
INSERT INTO diakotthon_szoveg VALUES("74","Bejelentkezés","","","bejelentkezes","0","","","","","hu","","","","","","","","","","bejelentkezes.php");
INSERT INTO diakotthon_szoveg VALUES("90","Új jelszó igénylése","","","elfelejtett","0","","","","","hu","","","","","","","","","","elfelejtett.php");



