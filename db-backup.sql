DROP TABLE diakotthon_galeriacsop;

CREATE TABLE `diakotthon_galeriacsop` (
  `sorszam` int(11) NOT NULL DEFAULT '0',
  `felirat_hu` varchar(50) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `sorrendszam` int(2) DEFAULT NULL,
  `csoporttagja` int(11) DEFAULT NULL,
  PRIMARY KEY (`sorszam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_galeriacsop VALUES("1","Intézmény képei","1","0");
INSERT INTO diakotthon_galeriacsop VALUES("2","Leonardo","2","0");
INSERT INTO diakotthon_galeriacsop VALUES("103","rendezvények","3","0");
INSERT INTO diakotthon_galeriacsop VALUES("204","Tata","4","103");
INSERT INTO diakotthon_galeriacsop VALUES("305","Kömlőd","5","103");
INSERT INTO diakotthon_galeriacsop VALUES("406","Komárom","6","103");



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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_galeriakepek VALUES("1","1","1.jpg","1","Tatai Intézmény","1");
INSERT INTO diakotthon_galeriakepek VALUES("2","2","2.jpg","1","Leonardo projekt tabló","2");
INSERT INTO diakotthon_galeriakepek VALUES("4","4","4.jpg","3","Projekt a naptárban","2");
INSERT INTO diakotthon_galeriakepek VALUES("5","5","5.jpg","4","Projekt a naptárban ismét","2");
INSERT INTO diakotthon_galeriakepek VALUES("6","6","6.jpg","5","Külföldi újságcikk","2");
INSERT INTO diakotthon_galeriakepek VALUES("8","7","7.jpg","2","Komáromi Intézmény","1");
INSERT INTO diakotthon_galeriakepek VALUES("9","8","8.jpg","3","Kömlődi Intézmény","1");
INSERT INTO diakotthon_galeriakepek VALUES("10","9","9.jpg","1","","204");
INSERT INTO diakotthon_galeriakepek VALUES("11","10","10.jpg","2","","204");
INSERT INTO diakotthon_galeriakepek VALUES("12","11","11.jpg","1","","305");
INSERT INTO diakotthon_galeriakepek VALUES("13","12","12.jpg","2","","305");
INSERT INTO diakotthon_galeriakepek VALUES("19","14","14.jpg","1","","406");
INSERT INTO diakotthon_galeriakepek VALUES("18","13","13.jpg","1","","103");
INSERT INTO diakotthon_galeriakepek VALUES("20","15","15.jpg","2","","406");



DROP TABLE diakotthon_kepek;

CREATE TABLE `diakotthon_kepek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) COLLATE latin2_hungarian_ci NOT NULL,
  `folder` varchar(100) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `title` varchar(200) COLLATE latin2_hungarian_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(1) COLLATE latin2_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin2 COLLATE=latin2_hungarian_ci;

INSERT INTO diakotthon_kepek VALUES("1","intezmeny.jpg","","","","1");
INSERT INTO diakotthon_kepek VALUES("2","2.jpg","","","","");
INSERT INTO diakotthon_kepek VALUES("3","3.jpg","","","","");



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
INSERT INTO diakotthon_regisztralt VALUES("2","diakotthon","Diakotthon","1a6a2a4609bf828bc56676caafcd55c0","info@diakotthon.hu","","1","0","2014-04-01 00:00:00","","","","","","","","");
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

INSERT INTO diakotthon_szoveg VALUES("41","Rólunk","","<p>Int&eacute;zm&eacute;ny&uuml;nk &ndash; a <strong>Kom&aacute;rom-Esztergom Megyei &Oacute;voda, &Aacute;ltal&aacute;nos Iskola, Speci&aacute;lis Szakiskola, Koll&eacute;gium &eacute;s Gyermekotthon</strong> &ndash; gy&oacute;gypedag&oacute;giai nevel&eacute;si-oktat&aacute;si, gyermekv&eacute;delmi feladatokat l&aacute;t el. T&ouml;bbc&eacute;l&uacute;, szegreg&aacute;lt int&eacute;zm&eacute;ny, melynek sz&eacute;khelye Tat&aacute;n van, k&eacute;t tagint&eacute;zm&eacute;nye K&ouml;mlőd&ouml;n, illetve Kom&aacute;romban. Fenntart&oacute;nk a Klebelsberg Int&eacute;zm&eacute;nyfenntart&oacute; K&ouml;zpont Tatai Tanker&uuml;lete.</p>
<p></p>
<p><strong>K&ouml;mlődi &oacute;vod&aacute;nkban</strong> az &eacute;rtelmileg akad&aacute;lyozott kisgyermekek mellett autista gyermekeket is ell&aacute;tunk.</p>
<p></p>
<p>Nyolc &eacute;vfolyamos <strong>&aacute;ltal&aacute;nos iskol&aacute;inkban</strong> az egy&eacute;ni sz&uuml;ks&eacute;gleteket &eacute;s fejlőd&eacute;smenetet figyelembe vevő oktat&aacute;s mellett nagy hangs&uacute;lyt helyez&uuml;nk a k&uuml;l&ouml;nb&ouml;ző habilit&aacute;ci&oacute;s, rehabilit&aacute;ci&oacute;s foglalkoz&aacute;sok megtart&aacute;s&aacute;ra (hydroter&aacute;pia, gy&oacute;gylovagl&aacute;s, logop&eacute;dia, gy&oacute;gytorna, stb.).</p>
<p></p>
<p></p>
<p><strong>Szakiskol&aacute;inkban</strong> 2+2 &eacute;vfolyamos speci&aacute;lis &eacute;s k&eacute;szs&eacute;gfejlesztő speci&aacute;lis szakiskolai k&eacute;pz&eacute;st biztos&iacute;tunk. A tov&aacute;bbtanulni sz&aacute;nd&eacute;koz&oacute; fiatalok kerti munk&aacute;s, bőrt&aacute;rgyk&eacute;sz&iacute;tő, asztalosipari szerelő, lak&aacute;stextil k&eacute;sz&iacute;tő, sz&aacute;m&iacute;t&oacute;g&eacute;pes adatr&ouml;gz&iacute;tő, park&aacute;pol&oacute;, konyhai kiseg&iacute;tő, takar&iacute;t&oacute;i munka szakm&aacute;kra k&eacute;rhetik felv&eacute;tel&uuml;ket. Ezek k&ouml;z&uuml;l az első &ouml;t szakm&aacute;ban <strong>OKJ-s r&eacute;szszakk&eacute;pes&iacute;t&eacute;s </strong>&eacute;rhető el.</p>
<p></p>
<p><strong>Koll&eacute;giumaink</strong> a megye ter&uuml;let&eacute;n &eacute;lő h&aacute;tr&aacute;nyos, vagy halmozottan h&aacute;tr&aacute;nyos helyzetű gyermekek elhelyez&eacute;s&eacute;t, nevel&eacute;s&eacute;t biztos&iacute;tja.</p>
<p></p>
<p></p>
<p><strong>Gyermekotthonaink</strong> k&uuml;l&ouml;nleges ell&aacute;t&aacute;st ny&uacute;jtanak az &aacute;tmeneti, illetve tart&oacute;s nevel&eacute;sbe vett, &eacute;p &eacute;rtelmű &eacute;s saj&aacute;tos nevel&eacute;si ig&eacute;nyű gyermekek r&eacute;sz&eacute;re egyar&aacute;nt.</p>
<p></p>
<p></p>
<p>Pedag&oacute;giai Programunk szerint nagy hangs&uacute;lyt helyez&uuml;nk tanul&oacute;ink hasznos <strong>szabadidő elt&ouml;lt&eacute;s&eacute;re</strong>. A tehets&eacute;ggondoz&aacute;s &eacute;s a felz&aacute;rk&oacute;ztat&aacute;s k&uuml;l&ouml;nb&ouml;ző műv&eacute;szeti (&eacute;nek-zene, n&eacute;pt&aacute;nc) sport (atl&eacute;tika, strandr&ouml;plabda, &uacute;sz&aacute;s) &eacute;s egy&eacute;b programok, rendezv&eacute;nyek keret&eacute;n bel&uuml;l val&oacute;sul meg.</p>
<p></p>
<p></p>
<p>&Eacute;vek &oacute;ta sikeresen szerepel&uuml;nk k&uuml;l&ouml;nb&ouml;ző hazai &eacute;s eur&oacute;pai uni&oacute;s p&aacute;ly&aacute;zatokon. Kiemelkednek ezek k&ouml;z&uuml;l a <strong>Leonardo Mobilit&aacute;si</strong>, illetve <strong>T&Aacute;MOP</strong>-os programjaink.</p>","rolunk","0","rolunk","0","1","2","hu","2013-03-09 23:14:24","2013-03-09 23:14:24","0000-00-00","0000-00-00","0","Rólunk","1","0","","");
INSERT INTO diakotthon_szoveg VALUES("91","Hírek","<p>h&iacute;rek bevezető</p>","","hirek","0","","","0","","hu","","","","","","","0","0","","hirek.php");
INSERT INTO diakotthon_szoveg VALUES("92","Galéria","<p>Ez itt gal&eacute;ria</p>","","galeria","0","","","0","","hu","","","","","","Galéria","0","0","","galeria.php");
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
INSERT INTO diakotthon_szoveg VALUES("94","Üdvözöljük!","","<p><img alt=\"intezmény\" class=\"jobbrazart_kep\" src=\"graphics/intezmeny.jpg\" /></p>
<p style=\"text-align: justify;\">Intézményünk – a <strong>Komárom-Esztergom Megyei Óvoda, Általános Iskola, Speciális Szakiskola, Kollégium és Gyermekotthon</strong> – gyógypedagógiai nevelési-oktatási, gyermekvédelmi feladatokat lát el. Többcélú, szegregált intézmény, melynek székhelye Tatán van, két tagintézménye Kömlődön, illetve Komáromban. Fenntartónk a Klebelsberg Intézményfenntartó Központ Tatai Tankerülete.</p>
<p style=\"text-align: justify;\"><strong>Kömlődi óvodánkban</strong> az értelmileg akadályozott kisgyermekek mellett autista gyermekeket is ellátunk.</p>
<p style=\"text-align: justify;\">Nyolc évfolyamos <strong>általános iskoláinkban</strong> az egyéni szükségleteket és fejlődésmenetet figyelembe vevő oktatás mellett nagy hangsúlyt helyezünk a különböző habilitációs, rehabilitációs foglalkozások megtartására (hydroterápia, gyógylovaglás, logopédia, gyógytorna, stb.).</p>
<p><img class=\"balrarazart_kep\" height=\"225\" src=\"images/2.jpg\" style=\"text-align: justify;\" width=\"300\" /></p>
<p style=\"text-align: justify;\"><strong>Szakiskoláinkban</strong> 2+2 évfolyamos speciális és készségfejlesztő speciális szakiskolai képzést biztosítunk. A továbbtanulni szándékozó fiatalok kerti munkás, bőrtárgykészítő, asztalosipari szerelő, lakástextil készítő, számítógépes adatrögzítő, parkápoló, konyhai kisegítő, takarítói munka szakmákra kérhetik felvételüket. Ezek közül az első öt szakmában <strong>OKJ-s részszakképesítés </strong>érhető el.</p>
<p style=\"text-align: justify;\"><strong>Kollégiumaink</strong> a megye területén élő hátrányos, vagy halmozottan hátrányos helyzetű gyermekek elhelyezését, nevelését biztosítja.</p>
<p style=\"text-align: justify;\"><strong>Gyermekotthonaink</strong> különleges ellátást nyújtanak az átmeneti, illetve tartós nevelésbe vett, ép értelmű és sajátos nevelési igényű gyermekek részére egyaránt.</p>
<p style=\"text-align: justify;\">Pedagógiai Programunk szerint nagy hangsúlyt helyezünk tanulói</p>
<p><img class=\"jobbrazart_kep\" height=\"217\" src=\"images/3.jpg\" title=\"Komlod\" width=\"300\" /></p>
<p style=\"text-align: justify;\">nk hasznos <strong>szabadidő eltöltésére</strong>. A tehetséggondozás és a felzárkóztatás különböző művészeti (ének-zene, néptánc) sport (atlétika, strandröplabda, úszás) és egyéb programok, rendezvények keretén belül valósul meg.</p>
<p style=\"text-align: justify;\">Évek óta sikeresen szerepelünk különböző hazai és európai uniós pályázatokon. Kiemelkednek ezek közül a <strong>Leonardo Mobilitá</strong><strong><br />si</strong>, illetve <strong>TÁMOP</strong>-os programjaink. ...</p>","cimlap","0","","","0","","hu","","","2014-05-30","","","","0","0","","");
INSERT INTO diakotthon_szoveg VALUES("95","Utazás","<p>Elutaztunk &Iacute;rorsz&aacute;gba...</p>","<p>Az &bdquo;Eg&eacute;szs&eacute;g? Term&eacute;szetesen!&rdquo; c&iacute;mű LEONARDO DA VINCI VETPRO projekt&uuml;nk keret&eacute;n bel&uuml;l szakk&eacute;pz&eacute;si szakemberek 10 napos  tanulm&aacute;ny&uacute;tj&aacute;t val&oacute;s&iacute;tottuk meg int&eacute;zm&eacute;ny&uuml;nk &uacute;j partner&eacute;n&eacute;l, az  &iacute;rorsz&aacute;gi Knockvicar Organic Garden-n&eacute;l. <br /><br /> Az egy&uuml;ttműk&ouml;d&eacute;s szem&eacute;lyes szakmai kapcsolat &uacute;tj&aacute;n j&ouml;tt l&eacute;tre.<br /><br /> A projektben 8 fő speci&aacute;lis k&eacute;pes&iacute;t&eacute;sű szakember &ndash; gy&oacute;gypedag&oacute;gus,  szakoktat&oacute; - vett r&eacute;szt: Becs&aacute;kn&eacute; Szőke &Eacute;va, Sz&aacute;mn&eacute; Maurer Hajnalka,  Nagy L&aacute;szl&oacute;, M&aacute;rkusn&eacute; Jancs&oacute; Ildik&oacute;, L&eacute;vain&eacute; Bicz&oacute; Eszter, Lengyel  Laura, Hegedűs Szandra, Jakab &Aacute;rp&aacute;d. A kedvezm&eacute;nyezettek k&ouml;z&ouml;tt voltak  tapasztalt p&aacute;ly&aacute;z&oacute;k &eacute;s mentor&aacute;lt pedag&oacute;gusok.<br /><br /> A projekt fő c&eacute;ljai: minős&iacute;tett organikus biokert&eacute;szet műk&ouml;d&eacute;s&eacute;nek, az  &ouml;kotermeszt&eacute;s tanulm&aacute;nyoz&aacute;sa; vegyszermentes, k&ouml;rnyezetk&iacute;m&eacute;lő m&oacute;don  elő&aacute;ll&iacute;tott bioterm&eacute;kek felhaszn&aacute;l&aacute;s&aacute;nak, piaci &eacute;rt&eacute;kes&iacute;t&eacute;si  gyakorlat&aacute;nak &iacute;rorsz&aacute;gi tapasztalatai; a fogad&oacute; int&eacute;zm&eacute;ny k&eacute;pz&eacute;seinek,  valamint az &iacute;rorsz&aacute;gi szakk&eacute;pz&eacute;s tanulm&aacute;nyoz&aacute;sa, k&uuml;l&ouml;n&ouml;s tekintettel a  fogyat&eacute;kkal &eacute;lő fiatalok szakk&eacute;pz&eacute;s&eacute;re, munk&aacute;ba &aacute;ll&iacute;t&aacute;s&aacute;ra. <br /><br /> C&eacute;l egy 30 &oacute;r&aacute;s tanfolyamon a biotermeszt&eacute;ssel kapcsolatos ismereteink  bőv&iacute;t&eacute;se, amellyel az iskol&aacute;nk park&eacute;p&iacute;tő &eacute;s kerti munk&aacute;s szakm&aacute;inak  k&eacute;pz&eacute;si tananyag&aacute;t fejleszthetj&uuml;k.</p>
<p>A tanulm&aacute;ny&uacute;t munkaprogramj&aacute;t a fogad&oacute; int&eacute;zm&eacute;nnyel folyamatosan  egyeztetve alak&iacute;tottuk ki. A kiutaz&aacute;s előtti felk&eacute;sz&iacute;t&eacute;s k&eacute;t ter&uuml;letre -  angol szaknyelvi, &eacute;s biokert&eacute;sz szakmai alapoz&oacute; &ndash; terjedt ki. <br /><br /> A kitűz&ouml;tt c&eacute;lokat &eacute;s a munkaprogramban foglaltakat teljes k&ouml;rűen  megval&oacute;s&iacute;tottuk. A tervezetten t&uacute;l egy&eacute;b olyan szakmai kultur&aacute;lis,  szabadidős programokon vett&uuml;nk r&eacute;szt, amely hozz&aacute;seg&iacute;tett benn&uuml;nket  &Iacute;rorsz&aacute;g f&ouml;ldrajzi, kultur&aacute;lis &eacute;rt&eacute;keinek, t&aacute;rsadalmi saj&aacute;toss&aacute;gainak,  az ott &eacute;lő emberek hagyom&aacute;nyainak, szok&aacute;sainak megismer&eacute;s&eacute;hez. <br /><br /> A mobilit&aacute;si program r&eacute;sztvevői szakmai, nyelvi, interkultur&aacute;lis  ter&uuml;leteken egyar&aacute;nt fejlődtek. Az eredm&eacute;nyek sokr&eacute;tűek, melynek  terjeszt&eacute;se, be&eacute;p&iacute;t&eacute;se int&eacute;zm&eacute;ny&uuml;nk szakk&eacute;pz&eacute;si strukt&uacute;r&aacute;j&aacute;ba, adott  szakm&aacute;k tananyag&aacute;nak tematik&aacute;j&aacute;ba, int&eacute;zm&eacute;nyi szab&aacute;lyz&oacute;iba az  elk&ouml;vetkezendő időszak feladata lesz. <br /><br /> A Knockvicar Organic Garden-n&eacute;l teljes&iacute;tett 30 &oacute;r&aacute;s szakmai elm&eacute;leti  tanfolyam &eacute;s gyakorlati tapasztalatszerz&eacute;s megval&oacute;sul&aacute;s&aacute;t a k&uuml;ldő &eacute;s a  fogad&oacute; int&eacute;zm&eacute;ny szakmai vezetői egyar&aacute;nt nyomon k&ouml;vett&eacute;k &eacute;s &eacute;rt&eacute;kelt&eacute;k.  <br /><br /> Ez volt az első olyan Leonardo mobilit&aacute;si p&aacute;ly&aacute;zatunk, melynek teljes&iacute;t&eacute;s&eacute;t Europass Mobility igazolv&aacute;nnyal ismert&eacute;k el. <br /><br /> A tanulm&aacute;ny&uacute;t tapasztalatait folyamatosan terjesztj&uuml;k. Sz&eacute;lesk&ouml;rű  t&aacute;rsadalmi szeml&eacute;letv&aacute;lt&aacute;sra van sz&uuml;ks&eacute;g a k&ouml;rnyezettudatoss&aacute;gra, &eacute;s az  eg&eacute;szs&eacute;ges &eacute;letm&oacute;dra nevel&eacute;s ter&eacute;n, amelyhez mi is hozz&aacute; k&iacute;v&aacute;nunk  j&aacute;rulni azzal, hogy Pedag&oacute;giai Programunkba, valamint int&eacute;zm&eacute;ny&uuml;nk  mindennapi &eacute;let&eacute;be be&eacute;p&iacute;tj&uuml;k az &iacute;rorsz&aacute;gi tanulm&aacute;ny&uacute;t tapasztalatait.</p>","","0","","","1","","hu","2014-05-01 00:00:00","","2013-08-11","2013-08-21","","","2","0","","");



