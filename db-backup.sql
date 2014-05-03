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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_szoveg VALUES("41","Rólunk","","<h2>R&oacute;lunk</h2>
<p>Szolg&aacute;ltat&aacute;sainkxxx</p>
<p>&Aacute;ltal&aacute;nos iskolai k&eacute;pz&eacute;s</p>
<p>&Eacute;rintettek k&ouml;re: enyhe &eacute;rtelmi fogyat&eacute;kos, k&ouml;z&eacute;ps&uacute;lyos &eacute;rtelmi fogyat&eacute;kos, gyeng&eacute;nl&aacute;t&oacute;, enyhe mozg&aacute;skorl&aacute;tozott, k&ouml;zepesen mozg&aacute;skorl&aacute;tozott, Down-szindr&oacute;ma, autista, Williams-szindr&oacute;ma, pszichi&aacute;triai beteg.</p>
<p>Foglalkoz&aacute;sok: &eacute;nek,zene,t&aacute;nc,kos&aacute;rlabda lovagl&aacute;s, r&ouml;plabda, &uacute;sz&aacute;s, h&aacute;ztart&aacute;si ismeretek, sz&aacute;m&iacute;t&aacute;stechnikai ismeretek eszk&ouml;z, seg&eacute;deszk&ouml;z, k&ouml;nyv k&ouml;lcs&ouml;nz&eacute;se.</p>
<p>Ter&aacute;pi&aacute;k: dr&aacute;mapedag&oacute;gia, dr&aacute;maj&aacute;t&eacute;k, gy&oacute;gytorna, HRG (hydroterapi&aacute;s rehabilit&aacute;ci&oacute;s gimnasztika) gy&oacute;gylovagl&aacute;s, hippoter&aacute;pia, zeneter&aacute;pia, diszlexia-, diszgr&aacute;fia-, diszcalculiater&aacute;pi&aacute;k, besz&eacute;dfejleszt&eacute;s, logop&eacute;dia, eml&eacute;kezet- &eacute;s figyelem fejleszt&eacute;s gy&oacute;gy&uacute;sz&aacute;s.</p>
<p>Informatik&aacute;val t&aacute;mogatott k&eacute;pess&eacute;gfejleszt&eacute;s.</p>
<p>Speci&aacute;lis szakiskolai k&eacute;pz&eacute;s</p>
<p>&Eacute;rintettek k&ouml;re: enyhe &eacute;rtelmi fogyat&eacute;kos,k&ouml;z&eacute;ps&uacute;lyos &eacute;rtelmi fogyat&eacute;kos enyhe mozg&aacute;skorl&aacute;tozott, k&ouml;zepesen mozg&aacute;skorl&aacute;tozott.</p>
<p>Foglalkoz&aacute;sok: bőrd&iacute;szműves, kert&eacute;szet, sz&aacute;m&iacute;t&aacute;stechnikai ismeretek, munk&aacute;ra felk&eacute;sz&iacute;t&eacute;s.</p>
<p>&nbsp;</p>
<p>Ter&aacute;pi&aacute;k: gy&oacute;gylovagl&aacute;s, hippoter&aacute;pia gy&oacute;gy&uacute;sz&aacute;s, koll&eacute;gium, di&aacute;kotthon.</p>
<p>koll&eacute;giumi, di&aacute;kotthoni ell&aacute;t&aacute;s &Eacute;rintettek k&ouml;re  enyhe &eacute;rtelmi fogyat&eacute;kos k&ouml;z&eacute;ps&uacute;lyos &eacute;rtelmi fogyat&eacute;kos gyeng&eacute;nl&aacute;t&oacute; enyhe mozg&aacute;skorl&aacute;tozott k&ouml;zepesen mozg&aacute;skorl&aacute;tozott Down-szindr&oacute;ma autista Williams-szindr&oacute;ma Foglalkoz&aacute;sok  sz&aacute;m&iacute;t&aacute;stechnikai ismeretek szuperv&iacute;zi&oacute; Ter&aacute;pi&aacute;k  j&aacute;t&eacute;kter&aacute;pia j&oacute;ga lak&aacute;sotthonok - I-IV. Ell&aacute;tottak sz&aacute;ma: 40 fő. Ell&aacute;tottak &eacute;letkora: 18 - 24 &eacute;ves korig</p>
<p>Szoci&aacute;lis szolg&aacute;ltat&aacute;s(ok)  lak&aacute;sotthoni ell&aacute;t&aacute;s &Eacute;rintettek k&ouml;re  enyhe &eacute;rtelmi fogyat&eacute;kos k&ouml;z&eacute;ps&uacute;lyos &eacute;rtelmi fogyat&eacute;kos Foglalkoz&aacute;sok  eg&eacute;szs&eacute;ges &eacute;letm&oacute;dra nevel&eacute;s ment&aacute;lhigi&eacute;n&eacute;s foglalkoz&aacute;s szexu&aacute;lis felvil&aacute;gos&iacute;t&aacute;s t&aacute;nc ker&aacute;mia, &uuml;vegfest&eacute;s fut&aacute;s kos&aacute;rlabda r&ouml;plabda labdar&uacute;g&aacute;s h&aacute;ztart&aacute;si ismeretek szuperv&iacute;zi&oacute; eszk&ouml;z, seg&eacute;deszk&ouml;z, k&ouml;nyv k&ouml;lcs&ouml;nz&eacute;se Ter&aacute;pi&aacute;k  j&aacute;t&eacute;kter&aacute;pia Sindelar-f&eacute;le komplex fejlesztő elj&aacute;r&aacute;s pszichoter&aacute;pia diszlexia-, diszgr&aacute;fia-, diszcalculiater&aacute;pi&aacute;k eml&eacute;kezet- &eacute;s figyelem fejleszt&eacute;s informatik&aacute;val t&aacute;mogatott k&eacute;pess&eacute;gfejleszt&eacute;s Telephelyek  V. Lak&aacute;sotthon</p>","rolunk","0","rolunk","0","1","2","hu","2013-03-09 23:14:24","2013-03-09 23:14:24","0000-00-00","0000-00-00","0","Rólunk","1","0","","");
INSERT INTO diakotthon_szoveg VALUES("91","Hírek","<p>h&iacute;rek bevezető</p>","","hirek","0","","","0","","hu","","","","","","","0","0","","hirek.php");
INSERT INTO diakotthon_szoveg VALUES("92","Galéria","Ez itt galéria","","galeria","0","","","","","hu","","","","","","","","","","galeria.php");
INSERT INTO diakotthon_szoveg VALUES("93","Kapcsolat","","<h2></h2>
<h3>El&eacute;rhetős&eacute;gek:</h3>
<p><br style=\"clear: both;\" /></p>
<h3>Levelez&eacute;si c&iacute;m:</h3>
<h4>2890 TATA, &Uacute;j &uacute;t 21.</h4>
<p><br style=\"clear: both;\" /></p>
<h3>e-mail:</h3>
<h4>tataidiakotthon@gmail.com</h4>
<p><br style=\"clear: both;\" /> <br style=\"clear: both;\" /></p>
<h6>Int&eacute;zm&eacute;ny&uuml;nket a (+36-34)587-470-es telefonsz&aacute;mon kereszt&uuml;l lehet el&eacute;rni.</h6>
<p><br style=\"clear: both;\" /></p>
<h3>A porta az al&aacute;bbi mell&eacute;kleteket tudja kapcsolni:</h3>
<p><br style=\"clear: both;\" /></p>
<h3>Int&eacute;zm&eacute;nyvezető: Becs&aacute;kn&eacute; Szőke &Eacute;va</h3>
<h4>13-as mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Int&eacute;zm&eacute;nyvezető-helyettes: Sz&aacute;mn&eacute; Maurer Hajnalka</h3>
<h4>27-es mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Gyermekotthon vezető: Soos Bal&aacute;zsn&eacute;</h3>
<h4>14-es mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Koll&eacute;giumvezető: Kis&eacute;kn&eacute; Bens&oacute; No&eacute;mi</h3>
<h4>15-&ouml;s mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Munka&uuml;gyi előad&oacute;: dr. Bokros Albertn&eacute;</h3>
<h4>19-es mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Titk&aacute;rs&aacute;g: Kalm&aacute;rn&eacute; Boros Zsuzsanna, Major Adrienn</h3>
<h4>12-es mell&eacute;k</h4>
<p><br style=\"clear: both;\" /></p>
<h3>Gazdas&aacute;gi iroda: Deli Gyul&aacute;n&eacute;, Kemecsi Vikt&oacute;ria,</h3>
<p><br style=\"clear: both;\" /></p>
<h3>Peczn&eacute; Holczinger Andrea</h3>
<h4>22-es mell&eacute;k</h4>
<p><br style=\"clear: both;\" /> <br style=\"clear: both;\" /></p>
<h3>Fax:  +36 34 587-477</h3>","kapcsolat","0","","","0","","hu","","","","","","","0","0","","");
INSERT INTO diakotthon_szoveg VALUES("94","Címlap","","<h2>Üdvözöljük!</h2>

<p> 
<div id=\"cimszoveg\"> 
<img src=\"graphics/intezmeny.jpg\" alt=\"intezmény\" />
    A Komárom-Esztergom Megyei Óvoda, Általános Iskola, Speciális Szakiskola, Kollégium és Gyermekotthon többcélú, közös igazgatású közoktatási intézmény.
Feladata a szakmai alapdokumentumban meghatározott nevelési-oktatási, gyermekvédelmi tevékenységek és szolgáltatások megvalósítása az intézményi dokumentumokban meghatározottaknak megfelelően:
sajátos nevelési igényű-tanulásban és értelmileg akadályozott, autista gyermekek </br> 
- óvodai nevelése,</br>
- általános iskolai nevelése-oktatása,</br>
- szakiskolai képzése, /speciális szakiskolai, készségfejlesztő speciális szakiskolai/</br>
- kollégiumi ellátása,</br>
- gyermekvédelmi szakellátása.</br></div>
...</p>","cimlap","0","","","","","hu","","","","","","","","","","");
INSERT INTO diakotthon_szoveg VALUES("95","Utazás","<p>Elutaztunk Br&uuml;sszelbe...</p>","<p>Itt pedig hosszan &iacute;runk r&oacute;la</p>","","0","","","1","","hu","2014-05-01 00:00:00","","","","","","2","0","","");



