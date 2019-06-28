-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 26, 2019 at 02:41 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `geometry_columns`
--

DROP TABLE IF EXISTS `geometry_columns`;
CREATE TABLE IF NOT EXISTS `geometry_columns` (
  `F_TABLE_CATALOG` varchar(256) DEFAULT NULL,
  `F_TABLE_SCHEMA` varchar(256) DEFAULT NULL,
  `F_TABLE_NAME` varchar(256) NOT NULL,
  `F_GEOMETRY_COLUMN` varchar(256) NOT NULL,
  `COORD_DIMENSION` int(11) DEFAULT NULL,
  `SRID` int(11) DEFAULT NULL,
  `TYPE` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `geometry_columns`
--

INSERT INTO `geometry_columns` (`F_TABLE_CATALOG`, `F_TABLE_SCHEMA`, `F_TABLE_NAME`, `F_GEOMETRY_COLUMN`, `COORD_DIMENSION`, `SRID`, `TYPE`) VALUES
(NULL, NULL, 'kartasura', 'SHAPE', 2, 1, 'POLYGON');

-- --------------------------------------------------------

--
-- Table structure for table `kartasura`
--

DROP TABLE IF EXISTS `kartasura`;
CREATE TABLE IF NOT EXISTS `kartasura` (
  `OGR_FID` int(11) NOT NULL AUTO_INCREMENT,
  `SHAPE` geometry NOT NULL,
  `objectid` decimal(9,0) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kabkot` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `pulau` varchar(100) DEFAULT NULL,
  `id_desa` double(19,11) DEFAULT NULL,
  `desa` varchar(50) DEFAULT NULL,
  UNIQUE KEY `OGR_FID` (`OGR_FID`),
  SPATIAL KEY `SHAPE` (`SHAPE`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartasura`
--

INSERT INTO `kartasura` (`OGR_FID`, `SHAPE`, `objectid`, `provinsi`, `kabkot`, `kecamatan`, `pulau`, `id_desa`, `desa`) VALUES
(1, '\0\0\0\0\0\0\0\0\0\0\0\0ýëûÁW±[@Ûð[.À=&s¨V±[@Åc.Àð‰ËªU±[@Å\"KšÊ.À‹òF’R±[@ƒëÙdn/À *ë¦P±[@BóÔ/À?»—‰O±[@=Ûà20À\\\n|N±[@üêXmJ0ÀAÒ^M±[@ÔX¤„0À\'©‹•J±[@+W¥1ÀÕøp¼G±[@@UD¦¬1ÀŽÞF±[@Ÿ¢×1ÀË\0F±[@JÃ¬ô1À¿˜šõC±[@¤äóo2À“_7S>±[@D8Î—3ÀŸX|J;±[@=k±Ì<4ÀzCLO9±[@¼q¡4ÀÈ¾M±[@C¢\Z@	5ÀÈS)RN±[@ƒéU%5ÀyÃHòF±[@}ßêØ¿7À#¤ng?±[@|1‘c:À†qŸ+±[@¾;˜):À!äÎâ+±[@X¡9ÀQ»PÚ*±[@½\0æ,|9Àµ;/)±[@€U![9À¸nê!±[@;‘’[9ÀAHï±[@¼ÅÒ…-9À3ìÏü±[@¼ÑØÓ9Àu‘^®±[@€²s|¯9À†èÉb±[@ÂAx‰ñ9À	lÞ±[@Ë_G±:À*SãÝ±[@Ån<V+:ÀŽŒæ±[@ƒõ\rB:À.i	±[@DCëÙZ:À@%?±[@=/À;Àm¸Xéÿ°[@ÿÀ;ÀÖîpžþ°[@Cø·ù:À|6Ø¿þ°[@Ã“ÅŸÖ:Àå4®ùý°[@~o³£:Àý×Bû°[@Å0¾ó:À<	”ù°[@|[Ï}:ÀüŠ7ö°[@¼ •2«:À¼ÐÂó°[@Ã‡µw”:À7àÈCì°[@gÜ_3:À¬Ãvœç°[@Å´¤,:ÀTŽï©á°[@Íú«ÿ9ÀâUdáÜ°[@þÚïëè9ÀFÚé®Ü°[@[|Èc9À\Z·ÝsÜ°[@Â¯˜$9À–x@Ù°[@ðÜ{¸ä8À»DõÖ°[@\rTÆ¿Ï8Àíæó›Ó°[@ÄypwÖ8À£cPkÏ°[@ \Z,ÿÎ8ÀdñÃÊ°[@þ-Û|“8ÀŸ°ÄÊ°[@¸…ëQ8Àæ\\Š«Ê°[@c—¨Þ\Z8À÷Ç{ÕÊ°[@€óå8Àž^)Ë°[@Öÿ9Ì7ÀÉ«sÈ°[@Hþ`à¹7ÀØõvÃ°[@du«ç¤7À\\¬¨Á°[@bg\n7ÀÚæÆôÄ°[@?&¹ñ^7Àöq®\rÇ°[@UøÆ7Àô¦\"Æ°[@JFÎÂž6ÀÔÔ²µ¾°[@J+‡6Àßýñ^µ°[@fƒL2r6Àÿ²{ò°°[@õ¾ñµg6ÀØžY °[@Ù_vO6À´Èv¾Ÿ°[@½:Ç€ì5À[±¿ìž°[@K< lÊ5À»íBs°[@öî÷ª5Àª‚QI°[@¡¡‚‹5ÀßÃ%Ç°[@ÚUHùI5À/)Ù›°[@{Ó`1\"5ÀÒ^^/–°[@Ã%N&\"5À€%ºÛ“°[@Yé¤­\05ÀÂO&²’°[@ÆÔ4À\0Ï5M‘°[@\\ro4À)F”°[@;ðŽ„d4À#2¬â°[@keÂ/õ3Àíð×d°[@2ÉÈYØ3ÀÛ…æ:°[@kñ)\0Æ3Ào”M°[@Aš;µ3Àä3{Ž°[@À~î¨Š3Àã Y°[@ü²;`3ÀK!Iv°[@Å\0Ï53ÀÉñ)‘°[@•ú3ÀòO\"\"’°[@ÅS+Åî2ÀujÄR˜°[@V—»\\å1Àß*š°[@\0ÚÐy1ÀPV×œ°[@„› þ\"1À=QäÙ°[@ÅS6§ð0À²]©€ž°[@‰eÚ0ÀÏª	 °[@ºTX…0À·ÑÚ¶°[@<ç1ÀL†Ù‡¹°[@Ågéäî0À|ÅÑW»°[@Â•é®0À¤•ºå¼°[@ýö¨i^0À=RY!À°[@:dò\rR0À—uÂ°[@ýPÄ}?0À‚VË°[@ÉÐ¯.Àë~€{¿°[@ÂóÆe.À°ˆd?À°[@Å{/ÒL.ÀÅs#¿°[@zhš­E.À/ê¿°[@=–Bèì-ÀÈÃfsÁ°[@SLï,-À˜ËÑÙÅ°[@?H]¹,ÀÍôÄÓÈ°[@~Ào,À„Û?Ê°[@\0­º%q,ÀµM3ã°[@Cãe…Ö,ÀäãWç°[@ÃKP˜7,À§ÈÎ°[@½ô&\0«+À1å³¤Ò°[@ÁÉ1Ü*ÀÐ÷bÓ°[@À‰âÅ*À“dÿ7Ô°[@\Zíæ*ÀÕÒ]‹Ö°[@¦ &~+À3óËýá°[@£n’“+Àyã(é°[@€Ïýº+ÀãB³%ê°[@¿§—â+À}YË~ì°[@Bc\\õ+ÀfO(bö°[@þ\"\r,Àò—Xü°[@\0 ^VL,À\Z½”f±[@n¤qJ,Àˆø¼\r±[@þ}˜x˜,Àkš“ñ±[@–Úÿ¾,ÀAÇ·±[@?jo/ê,ÀÍ@Dî±[@ÅH}Eö,ÀÕñÒ,±[@Ã$d…ú,ÀÌ½Ô±[@@S¹-ÀOÆV¢±[@?ñ8\0-Àá«®\' ±[@]¶Ëe@-À{Ÿ34!±[@>¾÷®v-ÀJº–+$±[@ÂküŒ‚-ÀÓ9*±[@>qPÿ¯-Àc½8±[@ÿ1(‰Û-À;É‡;±[@Sšˆ†Þ-ÀÓ³†vA±[@ûm5ú-À@‚6ÇF±[@À Ÿ%.ÀJ|ÍöQ±[@ÿXÅ½\'.À)Oî±S±[@}	æ.À5à¥4X±[@þ3fE.ÀýëûÁW±[@Ûð[.À', '23647', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17324.00000000000, 'GONILAN'),
(2, '\0\0\0\0\0\0\0\0\0\0\0 Ñ*Q{°[@„V»z?À‚ÿ­dÇ°[@âÌ¯æ\0AÀ—‹øNÌ°[@þ·’AÀôÃáÑ°[@7TŒó7AÀ{÷Ç{Õ°[@þ++MJAÀð¿•ìØ°[@Œ¡œhWAÀ·Ñ\0Þ°[@ŒÛh\0oAÀô\Z»Dõ°[@‹ýe÷äAÀÛŠýe÷°[@ýÁÀsïAÀû\\mÅþ°[@nÀç‡BÀ;äf¸±[@ü5Y£BÀ–$F ±[@À¸SÍ»BÀ÷Ç\'±[@<ûi…äBÀ&l¾˜-±[@ÖN÷®ÿBÀîÓÕC2±[@„ß$ªCÀ\'Â×î6±[@ÞwÏ+CÀX{3ÅW±[@‚Ô¥CÀÞNúùQ±[@oÆaâDÀ8èãO±[@„ëdnEÀÝÓûäM±[@tžAÛEÀ†åbW±[@}P¸FÀŒÚeU±[@ƒœÉ¦xFÀa cIT±[@½€Xº«FÀù7†Y±[@þÈ¸FÀ\nTY±[@úO\'íFÀtfÙ˜Y±[@Á®8Ê1GÀðÙ]Y±[@¾ö­d4GÀ8ž+Y±[@?ù€6GÀºW{W±[@D?®´\\GÀœò©âT±[@Cƒ#F¤GÀj‡à4T±[@­ÃÑUºGÀl´QÚQ±[@Âu{ÿGÀ{{P±[@ü+±\'HÀÔ¥£M±[@Óuœ3HÀ€æ	J±[@f”MHÀ‚m”ZG±[@š˜ñ`HÀDK5ë@±[@ýzeFŽHÀ{‡,é@±[@€\rÒ5ŽHÀ¯¾–d8±[@~¯îHHÀq>8±[@Ä7pFNHÀÞ~Gô5±[@Ä\0©HÀØ#yS6±[@\0Æž¼HÀ-Ž†07±[@ëg\nIÀÒ3³2±[@ŠÖk)IÀÆðr1±[@N+…@.IÀüŸÃ-±[@âÜ3}<IÀxem\'±[@ÂXÂ“CIÀ ll\'±[@…Ž™CIÀÂY!\"±[@ýÍuÆiIÀÒ®&u ±[@Ä:”qIÀ&÷\'0±[@–H|IÀp7±[@ƒ±ã¼ˆIÀœ£±[@?m²”IÀ*æ/±[@b•Á×IÀYºü3±[@BtÙêIÀ. “±[@ÿ¸©óIÀóÁÈQ±[@|«)3JÀçnÒ±[@@>%hEJÀá¨Gà±[@~ëª_JÀý‘%±[@Ã˜(Y†JÀè¡N*±[@<QÁb†JÀ	,ð}\0±[@<DÇMŽJÀðÜmü°[@Ã/~1“JÀÁ_6û°[@þE>ñ”JÀÿ·.û°[@ÁÅ?ü”JÀá):Kö°[@ðxªJÀ»wŠõ°[@}|<å²JÀSðëò°[@ï>dÐJÀù‹°ò°[@@ÜTÃÏJÀ¦Y\Z¤ò°[@Àöÿ<ÐJÀy2N/ð°[@@že{ÌJÀEð¿•ì°[@´å\\Š«JÀ}ùsì°[@A]l…©JÀåŸáé°[@Ãã8vJÀ­QÑè°[@C­iÞqJÀN‹Êæ°[@±{~Z=JÀåÕ\\å°[@{]óÆ#JÀ’¿~â°[@B+é&JÀÿÄ!Ká°[@ü‚9JÀÛ_pÝ°[@fá	þIÀû	Ü°[@?€e\0JÀÁ“œgÚ°[@RÌÅJÀ$27ÕÖ°[@¿¨Ü#JÀŸ\n4¯Õ°[@_þT&JÀƒ)ìÅ°[@ÞDN|JÀ×C‘tÁ°[@@*ú_ˆJÀ¿ŸLÁ°[@L0Þ‡JÀQMšÁ°[@:µyI‡JÀ°Ž¾°[@‚2Pî~JÀ5ïh~½°[@E7î%qJÀd?•¼°[@\0öbX`JÀ\raà²°[@ÃƒvryJÀÇýÍß²°[@12^yJÀu®æ²°[@†0ÚÖ[JÀ›+«2±°[@•¹pUJÀäðÒ°°[@}q¨MJÀØ»?Þ«°[@íÓñ˜JÀO¹üf¦°[@E@Æ©JÀ\Zs¢°[@CÖg\'³JÀt¯‰ˆŸ°[@>Å½™›JÀÜú2›°[@7[Ô‚rJÀ\r•[g—°[@»BŸgjJÀoùP°[@üà“Ò\\JÀÍÒð[„°[@EU†èEJÀÒ“Ô7€°[@ZÁDJÀƒäo°[@WrÄCJÀe–é	~°[@N9)CJÀ¢¬Ì}°[@ºèÏ•@JÀ‰õ¦}°[@ÁY×h9JÀì²S|°[@CÛ‹-JÀŽA¿ y°[@Ãj â\0JÀã3©y°[@Å\nö,öIÀÊà(yu°[@\' ‰°áIÀUª<hs°[@}è´ÊIÀÑõ-s°[@µ¦yÇIÀ›¦áq°[@ÂT=kIÀ*Uûo°[@€¦sHIÀ‚þû¹l°[@Ñïî\rIÀå³t¹l°[@BBÅØIÀE;q°l°[@Â#Ñ3IÀ¢š°l°[@;ÿ6úHÀ=Uš¡l°[@‚ØS¼ÛHÀ]¢zk°[@Ôšæ§HÀƒ}i°[@ñ×dzHÀÊ#Û f°[@=dofJHÀ}j”¬e°[@»än^<HÀÍxÈ…d°[@Bxo+HÀ¦°dd°[@a;‘7+HÀ¾ÍÖRd°[@Ãxo+HÀìÒ¯Bd°[@¾Cþ*HÀ3çëb°[@CÐçº(HÀje¸½a°[@>ñ…Ý8HÀd£¸a°[@Né§I:HÀó)(Ža°[@D™¥-FHÀÚåó;a°[@½ùB0]HÀôS\n$b°[@A–DV´HÀ& w(b°[@þ<xÿµHÀ\\Ýûea°[@‚3ùØHÀ5)Ý^°[@)\\ÂõHÀ¦Ðy]°[@)\\ÂõHÀõ¡ê[°[@)\"Ã*ÞHÀ+­Œ4[°[@i§¿ÉHÀœŠT[°[@)èö’ÆHÀ£Nz[°[@Ä§ªB–HÀ8LZ°[@?0ÄrHÀÙó„X°[@@UecHÀÙ=yX°[@ñ˜õbHÀ”·\rX°[@ªÃðbHÀ	a@V°[@\0èõÛbHÀœvU°[@<é²mHÀ5´nT°[@Ä:Œ|HÀ}È!U°[@½ýÀŸHÀ»¢ÓT°[@ƒZg#§HÀÆe[T°[@ÂðB¹»HÀO©EVT°[@…$ñ™¼HÀ­ZÔR°[@@‹»ÂHÀ3uŒhQ°[@€æ©/ÇHÀs·D^Q°[@EŒ×TÇHÀ€@7™P°[@}áBtÁHÀLjñôM°[@EnýÁ®HÀÚâïM°[@ýÎdÔ¼HÀnæÊL°[@Á/aKÇHÀÚÅãK°[@ƒ|ÿ[ÓHÀBuµ\rJ°[@Á¦µ÷HÀj0\rÃG°[@·Íu\ZIÀ,ƒÓD°[@{#•ï:IÀ‰©ÑD°[@»²·å:IÀ5©¨ÇD°[@9úS;IÀˆó.æ@°[@BQó%IÀn4€·@°[@)Ð\'ò$IÀ×ëŸ@°[@=wOë$IÀI[>9°[@À¿üò\"IÀ<ÂÞ6°[@¿ÑåIÀ—Ìëg5°[@\0d’	IÀ£;®d,°[@„*S°ìHÀb2Ì>,°[@ûzûaîHÀüEÖ\'°[@ýƒkt\"IÀ¦C¤&°[@{/Ã!IÀÒ¯Áƒ%°[@@m!IÀ´Ù5z%°[@{­ƒ!IÀêÖÆ3#°[@<|ÿV\ZIÀ†ó\"s\"°[@zÁ÷IÀ!Âí °[@BÜƒØåHÀW °[@nçÒ*ÀHÀ±«TF°[@+rŠ¹HÀ¦ÖÒ°[@½.¼¶HÀ^Ñ°[@áðù–HÀJ0#°[@¾rè9‘HÀ¾¤ê„°[@“àmRHÀôÉ\Z°[@„ÐóSŽHÀ°4×\Z°[@”ždwHÀBcµ°[@Àš.Ð]HÀÃIb°[@|¢Œ[HÀXY&°[@Áòpø`HÀO‹Ó¦°[@A¨ÅWpHÀIŒz•°[@[ý¤pHÀÄ0©Ÿ°[@D“ù_HÀ%A¸\n°[@¾‡+<oHÀ7ÄR	°[@üþxGwHÀ•÷ò´ü¯[@»$ÈÛHÀã®û¯[@hñÞ(äHÀ\ZOÞ©û¯[@½\0¹ãHÀÃ:~=ù¯[@¼™Ñ\'£HÀÿïv\'ù¯[@þvâÜ HÀ’‘Fù¯[@RññœHÀjÏ÷¯[@F-Fè]HÀ=D¿÷¯[@ý=âZHÀ¦.(òõ¯[@üöHHÀeŠò2î¯[@AÉŽÿ•HÀÌã\r‰ë¯[@{Éf<HÀaGGç¯[@Ã€cHÀ9+|â¯[@¶JÑF…HÀ¹ü‡ôÛ¯[@›8¹ß¡HÀÎQÚ¯[@ñKý¼©HÀdéCÔ¯[@c(\'ÚUHÀ;›æÒ¯[@Ë;=¥9HÀ˜Z8Ñ¯[@\0\"ìƒHHÀ3è[QÐ¯[@~øÁ$UHÀIÜÌ¯[@ÀGŒHÀ„\'‚¥Ë¯[@ÿ\n¥É¡HÀõFéÄ¯[@üÚS¢GÀ.É™×Å¯[@ÀHyèFÀéÝÞ‰Ç¯[@c¦\ZáFÀM«(Ë¯[@Â‚:EDFÀØ„*Ë¯[@˜ððCFÀ3/xÒ¯[@d¾Qe÷DÀè=Ë|Ò¯[@ÅîU“öDÀŸÆðêÒ¯[@}ÞÀûâDÀ~ßëÒ¯[@ÿH³óâDÀ•ÔíÒ¯[@=S8xâDÀçîÒ¯[@@rÑmâDÀV#QîÒ¯[@Úÿ¢pâDÀ*’wZÓ¯[@­kÕ*ÑDÀ\ZL¾7Ø¯[@@m\rDÀVNd®Ø¯[@;&íCÀ£úÚ¯[@‚¤mà4CÀS\\èYï¯[@Ä£$´}CÀUöƒØþ¯[@‚†-²§CÀ)]ÔÐ!°[@jt$DÀùbþ\"°[@ò8×óCÀL‡D](°[@ÂÚ‚JDÀ ›Qä*°[@ûáB¤úBÀQ¨I3°[@¸Òçz\rCÀƒ¢4°[@c°ŒTBÀÜ<°[@ÁÓ*Ô|BÀ=ïâ×Q°[@ì›.BÀ[HW°[@ãe”xŠBÀúË=X°[@ºÝS©AÀ\Zj[gX°[@„sÇ¬(AÀ…Z°[@\reÖÂ@ÀêÝ™[°[@ ³°@ÀÁ—1!`°[@CDh’Å@Àh‚¡a°[@Ã&K·@ÀgÝ©úa°[@w†©-u@Àùg,¸d°[@Â$¤ì/@À{O­\ni°[@{<R.¡?À‰4sFi°[@ñhb?Ànælk°[@¿·Õ7&?À Ñ*Q{°[@„V»z?À', '23648', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17325.00000000000, 'GUMPANG'),
(3, '\0\0\0\0\0\0\0\0\0{\0\0\0FÖu\0¯[@þwx2¬2ÀÙü4øÿ®[@Ãñš‡®2À6yùÿ®[@{\'èŒ®2À)–[Z\r¯[@û\\mÅþ2Àž{¯[@‰ÒÞà3ÀÓŸýH¯[@û–9]3À,·´\Z¯[@‰ÒÞà3ÀBCÿ¯[@4…Îkì2ÀI…±… ¯[@Püs×2ÀE>‘\'¯[@ÞqŠŽä2ÀðŠà+¯[@Þ«V&ü2À×ú\"¡-¯[@3ùf›3ÀÚ|a2¯[@ˆ€C¨R3À…%P6¯[@l	ù g3Àì£SW>¯[@lCÅ83À~8gD¯[@ˆôÛ×3À·e¥I¯[@l	ù g3À÷_˜L¯[@¥÷¯=3ÀÅæãÚP¯[@Ô·Ìé2Àá—úyS¯[@Püs×2ÀÅÊ¦\\¯[@ût<f 2ÀÒ¼š>f¯[@ƒÕ¨ÄË2Àâ_ŠÆh¯[@„¾ß:2À<û „m¯[@Àr\n%¥2ÀöýRAp¯[@ÅVYò°2Àó™wr¯[@@§\\ÊÁ2À‡xm4u¯[@D<ðHô2À¯~Â’x¯[@ƒ4\rJ3ÀpR“|¯[@?Ùb‰—3À™Þ‰O}¯[@:ï$Óµ3ÀAsâz¯[@?€Òÿ3À82åüz¯[@<¿V74ÀßÇ|¯[@D‘¸ia4À3]ò¹¯[@¤\Zws†4ÀL8 …¯[@Î¹½Ÿ4ÀH—¡k‹¯[@{…ü@­4À%´ÓyŽ¯[@{íµ¥°4Àµo¯[@ în+Þ4Ààz¹ô”¯[@*ö4À ¯¾™¯[@ÂËb³:5À\nTÖ¡¯[@üí­ÿ5ÀË^Y§¯[@@ÖNò5À…¦Ä¬¯[@üÔ‰‡Ô5À[ÅH\Z¯¯[@=(Pìê5À”)?Ù¯¯[@ãk76ÀR€yß°¯[@{«ß8h6À]»pÄ³¯[@„´ÿ6À}î¹¯[@Æô)l«6À´­À¯[@ÆT©ö6À6Ç¯ÛÄ¯[@Éf~ù6À[üf•Ë¯[@¼g\\7ÀÖ¸ÇÒ¯[@ž{7ÀçNÂâÖ¯[@ƒ1\Z7À\0©MœÜ¯[@‚Êø÷7ÀåV\\ªß¯[@€¦àó:7À·\rêõã¯[@=Ww1o7À«\'tå¯[@Á\"d¦7ÀùÛ(è¯[@Åß\\ï7À‚f¯õç¯[@{Hå¶8ÀnLOXâ¯[@Ô·Ìé²8ÀÖ­ž“Þ¯[@ÓÙÉà(9À^™ï”Ù¯[@g@b`Â9À€šZ¶Ö¯[@µl­/:ÀY£¢Ñ¯[@_µ2á—:Àkx‡Ï¯[@;¹Iå:À^yÌ¯[@ÿU£–g;À:JÉ¯[@EÚÇÄ;Àé.VÂ½¯[@­|,=ÀÀU÷¸¯[@<b––Á=Àd’Œú¶¯[@?À9Ò>À\Z_ð³¯[@B(œTi>ÀHSª5®¯[@ÄÎ:?ÀÒ\'Ó«¯[@Ä°™Ô´?À÷\'r:©¯[@„Š]ù1@À+~©Ÿ¯[@rÄZ|\n@Ài	PX„¯[@\0£hœˆ?ÀÞ	Š¯[@;6ñº>À¡¡‚‹¯[@&pën>À½5°U‚¯[@ÊÞå\">ÀÈ+ÝKd¯[@ÿÞ“Ð[=ÀÑQAWX¯[@>ì²=ÀÜoêL¯[@ý ¾(ë<À= O?¯[@ŸöÆ<À&ôZ0¯[@}êýƒž<À)pµÅ*¯[@ý ^‹<À†õ¶.¯[@DÉŒŒ<ÀAªñj*¯[@Á\nž\n<ÀE÷‹]+¯[@DÙ@Ñ;À@£Àw%¯[@{kŒç};À×+>¯[@¿÷òâ:À@×¯[@„uîž…:ÀŸz’¯[@ûú¨r:ÀÍiÍ‘ ¯[@~oÊé¦9ÀEÊó9\'¯[@Ù‘R–B8ÀH)ƒË¯[@…Mù¼T7À¦gÐ‰\n¯[@Ã‰7ÀƒÖ¯³¯[@|}¿z×6À%·ý]¯[@ERpœ6Àüî¤%ù®[@ß‰Ú&ª5À~Ijnó®[@=ÓÛë5ÀRý9»ë®[@A{pH5À:3ï¨Ù®[@½	FÏt5À¯ßÏÍ×®[@uš5ÀÌE‹×®[@,ï\r2‡4À°êS^Ð®[@|Œ\0 ‡4ÀèÇ¨0Ë®[@704ÀæÉ˜/Í®[@ƒÑ§Þå3ÀÛ\'ùqÑ®[@?}ÌŸ 3À&¼y´Õ®[@€Ê‰¦N2À}-}\"Î®[@ý¢à\02ÀE³àµÓ®[@ÿ*2L1À¢QpgÕ®[@EÇÛ„Z1ÀŸÍªÏÕ®[@S\\Uö]1À¾fÞÕ®[@þÂÿ<^1À“}vÝ®[@?mx˜1À+cÙRû®[@{Þ¯ÏŠ2Àu`ü®[@û@5§2ÀØøèÿ®[@D\\à®2ÀJ×±éÿ®[@HÒ\0®2ÀgÐêÿ®[@FÖž\Z®2ÀÊHëÿ®[@ÁŸ©®2À%`Ôëÿ®[@€1ø­2ÀFÖu\0¯[@þwx2¬2À', '23649', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17326.00000000000, 'KARTASURA'),
(4, '\0\0\0\0\0\0\0\0\0‹\0\0\0\rgjQà­[@CLHà+Ày¯Z™ð­[@ê[ætY,À.ÿ!ýö­[@±mQfƒ,À!YÀ®[@ÍÌÌÌÌ,À`YiR\n®[@iÆ¢é,À2ZGU®[@>?Œ-Àç©¹®[@èŸàbE-Àã¥›Ä ®[@vOj-ÀÉ&®[@¯ëì†-ÀUjö@+®[@è‡Â£-ÀÀìž<,®[@=›UŸ«-À±¢Ó0®[@Y†8ÖÅ-ÀŽé	K<®[@Ë¾+‚ÿ-Àõg?RD®[@‘Ð–s).ÀßøÚ3K®[@Ï½‡K.ÀÑ®BÊO®[@æWs€`.À|a2U®[@ôlV}.ÀCsFZ®[@Xf,š.À<NÑ‘\\®[@æØG§.ÀJµOÇc®[@tµûË.ÀÕ	h\"l®[@Wx—‹ø.ÀÊà(yu®[@Wì/»\'/Àf 2þ}®[@M„\rO/Àƒn/iŒ®[@«ç¤÷/ÀF6Ž®[@ûèÔ•/Àí\r¾0™®[@\0©MœÜ/ÀXf,š®[@V¼‘yä/ÀbX9´®[@qÉq§t0À;6ñº®[@*Æù›0ÀÂ†§WÊ®[@7Ã\røü0ÀE³àµÓ®[@ÿ*2L1À}-}\"Î®[@ý¢à\02À&¼y´Õ®[@€Ê‰¦N2ÀÛ\'ùqÑ®[@?}ÌŸ 3ÀæÉ˜/Í®[@ƒÑ§Þå3ÀèÇ¨0Ë®[@704ÀÓŸðÆ®[@¿¦À4À]%¡òÄ®[@|›R„ò3ÀÎõ÷¾®[@BÒlÒø3ÀÚj §¹®[@@Ä÷w4À“Ÿîµ®[@þóù(#4ÀBáæfµ®[@ý@ƒ64Àx¶ûà²®[@Eâò>ß3Àé´J¯®[@„<“¹Ö3À7]\0.©®[@?\rc&ß3À†{¦®[@D-GÀÏ3Àõþ£®[@ÄÍ.YÁ3ÀÑf±¡®[@úÏ{ñ²3Àœ	%J®[@~“¬¶§3ÀÖEÊIš®[@ECWR‰3À&‰É˜®[@™	Q3À%_˜®[@@å~Œ3À„Ô{—®[@;â5 ¿3À¨;„.—®[@‚àò]ì3ÀÐèba•®[@\0·\0õå3À(ÏG‘®[@þ˜*òÍ3ÀA\r!ßŒ®[@»¨k94À%díÝ‰®[@;×À†B4ÀG¨wÃ†®[@€ÀT4À&t«¨€®[@~R¡E4Àä˜ô{®[@—¦kš54Àõ•äÙu®[@„€Y’4ÀßûÏ%r®[@þã3í#4À!·Wm®[@Ú8Ù;4ÀjAUpk®[@{äfÂs4Àó>V<j®[@¿\0E{¨4ÀwÀ¶f®[@ž¼šÌ4Àþdª^®[@‚Ýð 5Ào~QïZ®[@>e¬·5À„‘Z[®[@{!´bÛ5ÀÇ\n•·W®[@jÂÛ5ÀñºðW®[@„ŠƒÀÔ5ÀT§þŸU®[@…dh»5À•º÷T®[@ÿ¼µ5Àó,>ŽQ®[@\0!/Cš5ÀïðÿL®[@&æöp5À¶a\0 H®[@B\'ž65ÀÌ—ìßB®[@Ay¶ð4À9—þÿA®[@þÃ¾æ4Àa¼ó?®[@`f¾Ô4ÀIß<®[@\'ë§g4Àc»Ûò:®[@„é‰§Q4À»\Zºˆ8®[@ÔØ“ý3Ài.¶7®[@¾Á-ü3ÀP¿C2®[@@LõÂo3ÀSÿëŸ1®[@@Œþe3À?­ø?-®[@*ú>z3À+[à(®[@<ÈB~z3À&@  ®[@É=Þ]3ÀŠtî_®[@ûé~ö2À©ðÅéô­[@öçÎ2ÀìZÎçô­[@|ÂApÌ2À’‡õ®ð­[@]›X£2Àç¹©tÜ­[@Dh=R2À#,ÞSÏ­[@¾Dy2ÀMF/Í­[@¾S8É)2ÀŠt?Ç­[@½wé82ÀŽáéIÄ­[@Eu52À®ÝKÂ­[@\'>2ÀåèÁ­[@Å§â\r2Àˆl¦–»­[@Åëê1ÀQ·­[@ƒù#æ1ÀÐ„‹´«­[@ÄscÐÂ1À¯×.Lª­[@À´gï¼1À«oË\r§­[@E˜Æº®1ÀÛç·£­[@@äb•1ÀÇ±¶¨­[@ü4Ÿf1Àè¬š­[@1„1ÀÁ=½¼š­[@Åú­˜o1ÀÃÌõ¸š­[@¾WÍ‚o1Àã@J›­[@;;~G1ÀR¹hL‘­[@}cÍÈ 1À~»xŠ­[@LÂ	1À]v	\0Ž­[@€†]~!0Àwƒ´;Ž­[@¿O/rû/Àó…\nº­[@ENIï~/ÀÒÈ\rÝ‘­[@Â#>Ð:/À!,Iï’­[@<\Zù›Ô.À¹ø_—­[@ü³ñ<Å-ÀD€—­[@‰»-ÀÕ½ÿ£—­[@=qôÕ®-ÀD&’H˜­[@¬˜BÎ˜-À³Ž‚^š­[@\Z]W,-À«Tðž­[@ðöK,À\0ô¥­[@ƒìÆÞ2+À.\Zž¨­[@}ðŸn *À‡QùŸ¨­[@8 *À\"@¨­[@ö_)ÃŸ*ÀíçY¸¨­[@îÕ¿Ò–*Àñ«¯­[@¿Ú•¹*ÀÐcD²­[@Ä$ê¾É*À*±\r\nº­[@<îKö*Àex!ZÁ­[@…ICõ%+ÀC Ò?Ã­[@¿ð­1+ÀmÛPaÇ­[@~¯Ä‚I+ÀOLýÍ­[@Ã„–)q+ÀÌ(¼\"Ý­[@¾ÛR%Ï+ÀSÝráß­[@$díÝ+À\rgjQà­[@CLHà+À', '23650', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17327.00000000000, 'KERTONATAN'),
(5, '\0\0\0\0\0\0\0\0\0¾\0\0\0I	1ÿ×±[@C\"ÅÃ%<ÀY¬ú¿×±[@C*ž1<Àrp`Ö±[@¾LŸ>~<À“–	@Õ±[@¿â†=¿<ÀoóÔ±[@Å.m=å<ÀîÐ`Ô±[@àò»]í<Àš•àÓ±[@\r „>ý<Àá}	 Î±[@Å¹þõ=Àˆ@Ù±[@ƒÿœ=(>À²Ø\nÀÝ±[@µp´>@>Àß€ã±[@½^~>Àp5÷ÿí±[@}ÇóÜì>À4=\0`÷±[@CÀ—=?Àrñ¿÷±[@;Ù^@?À’Dò?\0²[@{NYž?À×HþŸ²[@=d¾Ò?Àlìö²[@E³^],@ÀÁ\'ôÿ²[@ßÊé4@À‰‹íÿ\r²[@Úi¿C@ÀÐÈô?²[@<h<~`@À_ðÿ²[@Ep\\^j@ÀIâ@²[@üŠQý¡@À]4÷Ÿ²[@DtÝ¼@À½_@ ²[@£¦ýÙ@ÀÇø?&²[@=!3ÝAÀ·`*²[@¿ª•½0AÀ•¹þÿ-²[@ÄÖÉ~µAÀÏÍü?.²[@ÆÜÆAÀ\r“íŸ.²[@~‹’Þ×AÀ$	ú¿.²[@AU&½îAÀ^øÿ.²[@¼)ÕþBÀ$	ú¿.²[@;çÈÞBÀG}ü,²[@€ò^ÄBÀ8ëŸ*²[@Â4CÀ1Ý\0@)²[@V1ÞTCÀŒù_(²[@CZ_‚CÀù€\'²[@ÀË‡²CÀ»;é$²[@BÓežMDÀ|vø$²[@A›IžbDÀ êú!²[@zaßòDÀ¢hÀN!²[@;´{EÀJ´+Ç ²[@À®>EÀ›ÿ¿ ²[@’³1ŸAEÀU{ò_)²[@þ+YREÀÆ+÷Ÿ(²[@{e^¯EÀqðù(²[@Â~H>ýEÀ!fï¿\'²[@…=ö=FÀÑÛä_\'²[@mÖÞ|FÀ=`&²[@Ã™¿ GÀ°‹û¿%²[@ü.ÌuGÀ°‹û¿%²[@ÀEgGÀÊ²úÿ%²[@}Ý$}GÀŽeà&²[@ÿãhßóGÀÜ¡À(²[@CÓýHÀo¢ñŸ)²[@;R\r¾ÚHÀi£öÿ*²[@üS†]SIÀ¢·ô?+²[@\nOžhIÀ¹-`+²[@P\"¿~ˆIÀóAÿŸ+²[@ÐW¾žIÀÜËò+²[@ÀÑ^²IÀ¹-`+²[@;ùžØIÀdòà*²[@€¼ÝJÀ·`*²[@Àx#IJÀÄÝî*²[@‘Ã4>YJÀÍ*ò?\'²[@„‰ÝKÀŽeà&²[@`UÿKÀ!<\0\0%²[@?:¾[KÀØ°ð?#²[@L~KÀû$óŸ ²[@\01¡^ýKÀKí²[@Â|gý+LÀå„÷¿²[@€ù(uLÀúþ²[@ëÑLÞLÀ¨ùÿ²[@{ºZ=MÀÝëë“²[@ãëcì!MÀIâ@²[@@O‚PMÀqù¿²[@ý{]‰MÀ©£ÿ¿²[@~>&þšMÀŽ|\0€²[@r¬]£MÀŽd¨í²[@ÛÄ¥®¥MÀçhð²[@™’¾¦MÀMÉý²[@Im­MÀþSâ²[@?@®MÀ:k@²[@}gßmÂMÀù÷²[@’®™|³MÀÑ’*þ\r²[@»¦[/³MÀÒ\0Þ	²[@è‡Â£MÀmÌ²[@>¤&sŒMÀ|í™%²[@Ëœ.‹‰MÀÖakò±[@<•«dMÀu†ì±[@ûEÓ{XMÀ·è±[@Ëâ˜AMÀ=M„è±[@ÓŠ	½@MÀ„Ø™Bç±[@é+H3MÀ5ë¨ä±[@¤fc³LÀg\'ƒ£ä±[@±áé•²LÀyðâ±[@=X2ÞŽLÀ‡ïòäâ±[@ÁÖ1õLÀÅóö@Û±[@Á²œ,LÀ_³\\6Ú±[@¿=})LÀÂ¼è§Ï±[@ûäxBLÀÚÄÉ±[@y¯Z™ðKÀû\n-Æ±[@³ïïKÀ§BãYÇ±[@{j³¹KÀjË±[@C‚^\'KÀ·ÀÿË±[@ÿ®ÆšKÀŒaÒË±[@ÿ¢ëKÀ)¾ÜRÇ±[@…Y\ZðàJÀž=XEÆ±[@Ó©ƒØJÀØë}­Â±[@rƒFU¸JÀ‹\"œý¾±[@‚¬åu”JÀUÍ’Q¼±[@.+„‚JÀy‡P¯¸±[@­ySfJÀ!éOòµ±[@ÙSJÀùH\\]´±[@…fªAGJÀD]Ñ±±[@ÿâ”¶AJÀ\0’ý´°±[@ä?JÀI\"·®±[@ÄFdí)JÀ\Z¶­±[@î6(JÀÎ_ý¬­±[@ÊMð\'JÀúE	ú«±[@N°gJÀ4ôâÓ¢±[@¤±¬êIÀ£‡Å›±[@|Ÿ(IÀ†/Ôà„±[@¾Mþ\r+IÀ\0k¼‰±[@CÓM/IÀžjZMŠ±[@?zÿ0IÀmEøŒ±[@ƒŠÇp5IÀtŠ#I±[@AÃûó2IÀ¾f—±[@ƒ\"½Ä2IÀÚ E¢±[@{<d2IÀy!É’±[@½)VIÀÚdCí±[@û}}ÚÌHÀÍ²Ì‹±[@Áïçæ«HÀí8Ç~‹±[@ÃËš~§HÀ;œ±Š±[@\0û].›HÀ‘å/‚±[@; HÀ#Þ¬T±[@…:çjÕGÀÑØÛ‰y±[@ûGU;GÀJJx±[@Ã¹†\ZGÀÖ¨‡ht±[@eüûŒGÀSR¸p±[@¿èaGÀòú\Zéo±[@¿ÐªÎGÀ]êüèo±[@}±½ÏGÀLõl±[@A’üšBGÀ.úËmi±[@€f=QGÀäb±[@Ál´wGÀ¡d&Üa±[@~<UÀhGÀU3¼p_±[@2\0›FGÀ^ë«Û[±[@EyŽ*GÀ`2ÏöZ±[@?kÃh#GÀ\ZºÊôZ±[@Cú<~#GÀ±ôZ±[@ýÉ2x#GÀtfÙ˜Y±[@Á®8Ê1GÀ\nTY±[@úO\'íFÀù7†Y±[@þÈ¸FÀa cIT±[@½€Xº«FÀŒÚeU±[@ƒœÉ¦xFÀ†åbW±[@}P¸FÀÝÓûäM±[@tžAÛEÀ8èãO±[@„ëdnEÀÞNúùQ±[@oÆaâDÀX{3ÅW±[@‚Ô¥CÀ\'Â×î6±[@ÞwÏ+CÀîÓÕC2±[@„ß$ªCÀ&l¾˜-±[@ÖN÷®ÿBÀ÷Ç\'±[@<ûi…äBÀ–$F ±[@À¸SÍ»BÀ%úöZ\"±[@\0K|t>BÀ›è%±[@gœDŒðAÀÑÂ=M(±[@„#ÁAÀî!†Â,±[@\0Àý •AÀŒ^O/±[@H<sbQAÀÓjë2±[@Eþrîõ@ÀWôö8±[@üž2¨@ÀP«ò@±[@ÒæÚE@À RqXD±[@€/n@ÀeEeI±[@vŽ?À«ô¨2K±[@Á{²á7?À‡ îL±[@!Ë•>ÀzÅrK±[@Ê¦\\á=À\"”Ä€O±[@=W\n•@=À×\"Å§P±[@ÁäÐ>0=À²‘\n´R±[@¾ŸÛ(=ÀoÑ÷ŠV±[@ÃÝçý!=À“	bZ±[@ÀÓ-Œ=À-p5\\±[@€,Èó<ÀsÏ4\r\\±[@5·cfv<ÀZ´£±[@~°EÐm;À¡½Ô±Å±[@A]—;ÀÜ•?ÚÝ±[@¾\rŒBæ:ÀI	1ÿ×±[@C\"ÅÃ%<À', '23651', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17328.00000000000, 'MAKAMHAJI'),
(6, '\0\0\0\0\0\0\0\0\0Ž\0\0\0l«ô;6¯[@=ioõ>\'Àç	Í3¯[@ßóì‡(Àãý	E2¯[@ÿÊt(Ài¤>;¯[@‚øg(À—ºEE¯[@<%>X(ÀkƒÖmW¯[@Å«É2H(Àçöb¯[@[xRO(ÀÜ$	9d¯[@À‘T(À¬ÌWsg¯[@\0õý_k(À\"no3l¯[@¾/h+s(À)G\\[s¯[@RŸe(ÀS[6¯t¯[@â—(Àµ-ý]u¯[@]ªS—(ÀN–˜¯[@À¡‘Ç(Àhs|ƒ¯[@z®îëÏ(Àú©žŠƒ¯[@ÿ† —Ð(À¦Ÿ¾ƒ¯[@oÑ(ÀÔÛ…¯[@ÁS\\iÚ(ÀòqEàŠ¯[@»Üö(ÀØf&Â¯[@ô8ˆ­)ÀW4‘*Ž¯[@þ»þ6!)À(wcŽ¯[@`i÷.)ÀFÏN‚Ž¯[@7vÈN)À­Ž5†¯[@=trb)Àp’ó¹‹¯[@>vÑ—)Àð³‹¯[@CÉû¼Ò)À´ÞóŒ¯[@\"Š‡ÿ)ÀFz°Ž¯[@~—q©*À%¸Ë]¯[@Béá*À/èCk“¯[@…ù’»?*À@uÅïš¯[@„º«v*À$m”	 ¯[@BÞzf*À ¹é÷¦¯[@YÃB­i*À–vÒ¬¯[@¥¶ŸO*Àrl5¯¯[@Íº•ˆd*ÀÎ‚Q°¯[@øßJv*Àóä×e±¯[@§ƒ*À¤Ìf±¯[@t£ú”*À±÷p6®¯[@Â\rž³L+ÀÙ_ãë¬¯[@i4¯¦+À÷--«¯[@ÿ_†;!,À–¶§¯[@ÅeÌd-ÀM½dŸ¤¯[@Õj Ý-À;ÕO£¯[@C9	¥/.ÀZærX¡¯[@†‹Mä¯.À‡üž¯[@ýoA(‚/Àìj\\˜¯[@„möøž0À7`½•¯[@¼ß£Á1Àd_\r«“¯[@EhÂJ“1À˜A &Ÿ¯[@Åº;É1Àl`>hœ¯[@¼\"Fš;2À’Å™¯[@ƒ·6É™2À»</–¯[@\\¢âÅã2ÀË.”¯[@üu/3ÀPâ,’¯[@E-xit3ÀÇr\",¯[@ÄOO3À€îçŽ¯[@š‰3ÐÆ3À+×9Ø‹¯[@ÎF»<c4ÀÀŠ`×‡¯[@ÐÙ T4À ¶É…ƒ¯[@Añ^_24À¿ªn†¯[@Ä=9â3À™Þ‰O}¯[@:ï$Óµ3ÀpR“|¯[@?Ùb‰—3À¯~Â’x¯[@ƒ4\rJ3À‡xm4u¯[@D<ðHô2Àó™wr¯[@@§\\ÊÁ2ÀöýRAp¯[@ÅVYò°2À<û „m¯[@Àr\n%¥2Àâ_ŠÆh¯[@„¾ß:2ÀÒ¼š>f¯[@ƒÕ¨ÄË2ÀÅÊ¦\\¯[@ût<f 2Àá—úyS¯[@Püs×2ÀÅæãÚP¯[@Ô·Ìé2À÷_˜L¯[@¥÷¯=3À·e¥I¯[@l	ù g3À~8gD¯[@ˆôÛ×3Àì£SW>¯[@lCÅ83À…%P6¯[@l	ù g3ÀÚ|a2¯[@ˆ€C¨R3À×ú\"¡-¯[@3ùf›3ÀðŠà+¯[@Þ«V&ü2ÀE>‘\'¯[@ÞqŠŽä2ÀI…±… ¯[@Püs×2ÀBCÿ¯[@4…Îkì2À,·´\Z¯[@‰ÒÞà3ÀÓŸýH¯[@û–9]3Àž{¯[@‰ÒÞà3À)–[Z\r¯[@û\\mÅþ2À6yùÿ®[@{\'èŒ®2ÀÙü4øÿ®[@Ãñš‡®2ÀFÖu\0¯[@þwx2¬2Àp%;6¯[@ŠÈ°Š72À•_>\r¯[@½sDä2À4¿š¯[@5æè1À÷XúÐ¯[@\ZnÀç‡1À,šÎN¯[@áÑÆk1Àð3.¯[@âé•²1Àébg\n¯[@ªek}‘0Àâé•²¯[@ªCn†0À‚­,¯[@ ˜£Ç/Àì/»\'¯[@¬ÿs˜/ÀEGrù¯[@üÁÀs/ÀÓŸýH¯[@:uå³</ÀIhË¹¯[@Ê\Zõ.À‰ïÄ¬¯[@u«ç¤÷-À:3P¯[@è‡Â£-Àp_Î¯[@=a‰”-Às€`Ž¯[@°¶-Ê,ÀI…±… ¯[@ê•²q,ÀŠ}\"¯[@\\rÜ),ÀB`åÐ\"¯[@²KTo\r,À5	¾ ¯[@Â)¢Â+Às€`Ž¯[@wgí¶+ÀlÙRî¯[@ÁU#5™+ÀŸ‰Ò¯[@‚þÌ<“+ÀÂ4¯[@–²q¬+À²U\r¯[@¼>öÛ*Àeî£¯[@\0F½Ý*ÀÇtše¯[@Æƒ#*ÀÕ ÍI¯[@ÂÖ9*À9—þÿ®[@î–*ÀÏóÃâù®[@€Gl\0*À8aÔKò®[@„Ží\0*ÀHAÑë®[@Ã.¬èý)À×rí_ç®[@\0™Ýý)ÀT+7Dá®[@“Áûñ)ÀçÒP‡Û®[@þô!&ã)ÀØèðžÐ®[@¾\"º¤À)À)kàÖ®[@~ù1ÿK(À¥ƒÕÝ®[@DgÒ_\'À°/#ë®[@A¡£CJ\'ÀE‰“„ï®[@j9¶;\'À°ìô®[@>,Ø{.\'ÀÿQàú®[@Ãœv=@\'Àc•§³\0¯[@?ÄR\'Àù3Y/¯[@~ç7[_\'Àé]‚t\r¯[@Äd‰žù&ÀËòOR¯[@„€Ï01\'À%› ¯[@€‘¡†\'ÀD¶)¯[@Ãï¥\'À„‘Ra0¯[@ˆ(\01\'Àl«ô;6¯[@=ioõ>\'À', '23652', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17329.00000000000, 'NGABEYAN'),
(7, '\0\0\0\0\0\0\0\0\0n\0\0\06\rÓ¼8°[@Cã@E:À@ÊC7?°[@t—ž:Àý[U8:°[@}¤½Ýl;ÀdN°[@ßÅ¹U)<Àì£SW°[@?ÆÜµ„<Àÿç0_^°[@Í¯æ\0Á<ÀXÎüj°[@[Ó¼ã=À?Œm°[@éH.ÿ!=Àñc¡Ýn°[@ðì-=ÀlK;:p°[@Å±¦8b=Àjë8bs°[@@eÔÁ=À+›FNw°[@\"]>ÀCÍëã|°[@~Ê0X>ÀY,s*°[@šF±Xš>À Ñ*Q{°[@„V»z?Ànælk°[@¿·Õ7&?À‰4sFi°[@ñhb?À{O­\ni°[@{<R.¡?Àùg,¸d°[@Â$¤ì/@ÀgÝ©úa°[@w†©-u@Àh‚¡a°[@Ã&K·@ÀÁ—1!`°[@CDh’Å@ÀêÝ™[°[@ ³°@À…Z°[@\reÖÂ@À\Zj[gX°[@„sÇ¬(AÀúË=X°[@ºÝS©AÀ[HW°[@ãe”xŠBÀ=ïâ×Q°[@ì›.BÀÜ<°[@ÁÓ*Ô|BÀƒ¢4°[@c°ŒTBÀQ¨I3°[@¸Òçz\rCÀ ›Qä*°[@ûáB¤úBÀL‡D](°[@ÂÚ‚JDÀùbþ\"°[@ò8×óCÀ)]ÔÐ!°[@jt$DÀUöƒØþ¯[@‚†-²§CÀS\\èYï¯[@Ä£$´}CÀ£úÚ¯[@‚¤mà4CÀVNd®Ø¯[@;&íCÀ\ZL¾7Ø¯[@@m\rDÀ*’wZÓ¯[@­kÕ*ÑDÀV#QîÒ¯[@Úÿ¢pâDÀçîÒ¯[@@rÑmâDÀÜQyÌ¯[@þ|3€£DÀA:ÃtÄ¯[@g¸sDÀ+dýR¾¯[@?å,\0NDÀ	.h·¯[@Ó‹§DÀ\0ó´ï¶¯[@[XìCÀ•·(U°¯[@ÀúHÆCÀç×ÿÎ°¯[@„BMUCÀqüÔ¡¨¯[@AMÕ2CÀª¨”³¤¯[@»¯íCÀßü`Â£¯[@Ä÷ÍAóBÀý[{ÿœ¯[@<š\n“×BÀ€Ð‡\"•¯[@ÄYýÔBÀ\rˆ%’¯[@5y~ÜBÀ9s›²‹¯[@@\Z2úBÀ\\sûp†¯[@|B¦çBÀQ+=´~¯[@=}SøBÀðèv¯[@>Û	ßBÀþŠ7]o¯[@C«~w»BÀj+Æ^g¯[@ƒø­f5BÀ*ŠŠJ`¯[@âhþ\0BÀ3ú…b¯[@6ru±AÀ&¬q\\d¯[@@•ü\"}AÀ50\\—f¯[@}édAÀ‘÷zi¯[@Ä©N OAÀ¶Ö	m¯[@Æ3hèŸ@ÀÓ‡.¨o¯[@UMu@Àaà¹÷p¯[@Èïmú³?Àlµ$s¯[@CsƒÑG?Ài	PX„¯[@\0£hœˆ?À+~©Ÿ¯[@rÄZ|\n@À÷\'r:©¯[@„Š]ù1@ÀÒ\'Ó«¯[@Ä°™Ô´?ÀHSª5®¯[@ÄÎ:?À\Z_ð³¯[@B(œTi>Àd’Œú¶¯[@?À9Ò>ÀÀU÷¸¯[@<b––Á=Àé.VÂ½¯[@­|,=À:JÉ¯[@EÚÇÄ;À^yÌ¯[@ÿU£–g;Àkx‡Ï¯[@;¹Iå:ÀY£¢Ñ¯[@_µ2á—:À€šZ¶Ö¯[@µl­/:À^™ï”Ù¯[@g@b`Â9ÀÖ­ž“Þ¯[@ÓÙÉà(9ÀnLOXâ¯[@Ô·Ìé²8À‚f¯õç¯[@{Hå¶8À5æè¯[@ÕÏ›ŠT8À}³Íé¯[@ö#Ed8À½:Ç€ì¯[@ÔC4ºƒ8ÀýÁÀsï¯[@¸Ìé²˜8À9EGrù¯[@\r\Zú\'¸8Àº\ZÔý¯[@z¼§ª8À‹|êš°[@––rs8À{\0+°[@ƒ«õCA8À‹qà\r°[@ÁîD28Àiù˜G°[@¿ìÖ28À{ôÈ°[@¾T½«8À<m0°[@	Ô\'û7Àé­´°[@>»þ\'ö7À6¹aÙ!°[@Aç€s28Àb°#°[@ÄU=¯d8Àmí$ò\"°[@úæš{¨8Ày³6(\"°[@Aƒ~Fì8ÀÎiD \"°[@ßƒ¢<9À¿ML%°[@}&´^l9À_¹47,°[@û·.Aµ9À6\rÓ¼8°[@Cã@E:À', '23653', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17330.00000000000, 'NGADIREJO'),
(8, '\0\0\0\0\0\0\0\0\0\0\0çîÒ¯[@@rÑmâDÀ•ÔíÒ¯[@=S8xâDÀ~ßëÒ¯[@ÿH³óâDÀŸÆðêÒ¯[@}ÞÀûâDÀè=Ë|Ò¯[@ÅîU“öDÀ3/xÒ¯[@d¾Qe÷DÀØ„*Ë¯[@˜ððCFÀM«(Ë¯[@Â‚:EDFÀéÝÞ‰Ç¯[@c¦\ZáFÀ.É™×Å¯[@ÀHyèFÀõFéÄ¯[@üÚS¢GÀ„\'‚¥Ë¯[@ÿ\n¥É¡HÀÇ÷ûË¯[@ô=³¼HÀ\nSÎöÌ¯[@?×èoIÀÜT‰$Í¯[@~ñû90IÀšñ~(Í¯[@ÀbÄ1IÀaÕ/Í¯[@¤¡2IÀt71Î¯[@þµŽeRIÀºÍ–Î¯[@üþ¤7bIÀý”ýÏÎ¯[@¼t>ÔgIÀ¥wÞÎ¯[@¼üÖ?iIÀc ñ˜Ï¯[@}ïpŒ{IÀ}Õv…Ñ¯[@zÛÂ«IÀöùg‡Ñ¯[@;HÁ¬IÀ´‰3‰Ñ¯[@}\'Ú>¬IÀ~xËÓ¯[@ÿò˜ÅçIÀñd<ìÓ¯[@:–×óIÀñçÞ:Ô¯[@}öì÷IÀ$å:Ô¯[@»¦ù(øIÀŸ…æ5Ô¯[@\r\nûIÀùtrÔ¯[@,A7JÀZòöÓ¯[@;+•”JÀî—óÓ¯[@•SmýJÀ7øRÎ¯[@¤z¹ïIÀ]_Ê¯[@;tãÕIÀÓ\nÛÈ¯[@„a†3°IÀ=.˜bÈ¯[@}Ç½«IÀT#)&Å¯[@½ƒÍ‡IÀFª”Ã¯[@ý\Zü•IÀq‡9€¿¯[@»¼àºIÀ©ãJÀ¯[@Š¹JÀ’°ŸÀ¯[@ Ã5JÀ¤¤,èÂ¯[@ÄÎ¢0UJÀ7ÈO£Ã¯[@?eí^JÀeÛPÎÃ¯[@Ì­üqJÀŠª¸¡Ä¯[@#ÈJÀ!l€ëÍ¯[@Àf‡7ìJÀ½`¾\\Î¯[@\0lÇíJÀ¬N¿%Ï¯[@;ìwKÀI|Ž’Î¯[@üT¯0KÀ Í¢^Í¯[@~¼]KÀEðnNÍ¯[@>Ð‰#`KÀ×õÛ<Í¯[@­\0hKÀ«oœÌ¯[@„Ócé°KÀ†édqË¯[@{…ð:«KÀ}$	È¯[@?¤G¢KÀÕo¢Å¯[@#SºË°KÀzç¦†Ã¯[@üC©…ÞKÀt½×ŠÂ¯[@~GY@\ZLÀô‡²,Â¯[@ç\'I•0LÀ„UCÂ¯[@ûWÐ¬SLÀîE:WÂ¯[@;LƒrLÀ:\\iÁ¯[@{{´­LÀ@CeçÀ¯[@AœSÝäLÀC#À¯[@ÃØ}MÀ¤6qr¿¯[@¯%äƒžMÀˆf6y¾¯[@ÇNkßMÀùá¿¯[@|GoKóMÀžr¿¯[@{:˜$NÀ{ÕN½¯[@¨Oß#NÀyõ”º¯[@{†g\\NÀNÕŽ¹¯[@\ZÌ·™eNÀ	€Øo¹¯[@C@–ugNÀ½Œb¹¯[@<k·]hNÀZr„(¹¯[@=åÞ¼kNÀÀ2*µ¯[@;|»…«NÀtmû`±¯[@}²AößNÀ§ÿ5ë¯¯[@ÃM®óNÀÆK-®¯[@þ‹nü\nOÀÄW­¯[@œÓ{OÀº{¬¯[@PžD¾*OÀÞON3«¯[@ÃÛy69OÀ^Sòz¨¯[@~ü£ÜnOÀ5\\Ðº§¯[@€ù…kvOÀÄÚÎ­¦¯[@‚CŠµƒOÀ¨ñ=é¥¯[@?V…kOÀçÛÛ]¢¯[@Åì÷fÉOÀgTqÇ¡¯[@üŠyXÓOÀs_ž3¡¯[@Dp®}ÛOÀþd¯[@Æ52PÀ=ÌØœ¯[@„ÔPÀXH\0š¯[@!ŠMTPÀ†¶x…™¯[@ý Ï¯_PÀT:ã•¯[@ÀNf+KPÀä¤V¶”¯[@…Zs–EPÀå	Æ¹”¯[@‚ÇDPÀO—ƒ¨”¯[@œ;DPÀN\"¸M•¯[@€É©¢\ZPÀ‡÷u–¯[@û#†aãOÀwßauŒ¯[@‚®”¹OÀ{x\'ƒ‰¯[@Á‘¹OÀžsˆ¯[@ý6©ßºOÀÿ—§‡¯[@‚\0äßÂOÀ¨¥=N†¯[@yLeÐOÀ\\žœÛƒ¯[@sðÐ 6PÀî#Œ¦€¯[@ÃÈ¹PÀ’ŸO€¯[@7£(ÈPÀ²P.7¯[@C÷TøPÀŽá»~¯[@…ŒvQþPÀ,œ©²}¯[@Ã×r\'QÀàum×z¯[@\0÷¶EQÀ3#äv¯[@BV€¨QÀ†\'c˜m¯[@Å&¯QÀÐÍl¯[@SSúÏ»QÀ\'–l¯[@¾,GIÁQÀœ1%i¯[@ÐZÂ»QÀ¥¡Ïg¯[@œˆAóQÀrÓü·f¯[@¾	ÑÁýQÀàø:f¯[@@Â2ýQÀ	5Áe¯[@îÜtþQÀA’ž‘d¯[@Àé†%RÀÚ(èd¯[@;g—ý\'RÀØÐ¢~d¯[@<ã÷\'RÀØr1}d¯[@A¤w\'(RÀâÛû!d¯[@„ŸÑX&RÀˆÃÏa¯[@ýN¡RÀ,®@à`¯[@Å³{RÀB€K^¯[@ƒ Ì44RÀèL´Z¯[@ÃÂj@ERÀ7Ûî{Z¯[@›,b–ERÀ¦“žV¯[@ƒàDzRÀÂYc3T¯[@”¸éRÀ©7·ÊR¯[@„Q­šRÀ`€Y®R¯[@»Ö!€™RÀv@+“N¯[@}’ªèmRÀ5Ž\'L¯[@Àë0ÚnRÀy¦-4K¯[@‚‰Ð8oRÀVd¤yH¯[@Å^³RRÀiÑ„ëF¯[@þBrBRÀ®ÊÅåF¯[@;Gô5BRÀ__ÀÒF¯[@‚SoARÀÙšuF¯[@„Ùð=RÀ–¸§F¯[@=]æÞ=RÀÎ¡±›>¯[@A-8RÀÿ$>¯[@¿°©ý\ZRÀ/k~Ö>¯[@ºAÞ‘RÀ,8\0>?¯[@ûyN$ßQÀ¢ÖÑÄ=¯[@ü^c¦ÓQÀ,(¶É;¯[@|áý2ÄQÀZ2dÈ3¯[@gVßŽªQÀ÷½U0¯[@Elò$QÀôEah,¯[@½®ùøQQÀ\\Œw)¯[@EçF¢QÀX\'°þ$¯[@û4·r‘QÀ^ó¯‡$¯[@Ä]€QÀä0é\"¯[@¾_=§†QÀ\r®\n¯[@<¾xQÀv.£¯[@ýftéZQÀe%\"¯[@ƒ^ÊHQÀùSd&¯[@{½îä;QÀnË¯[@?ß*;<QÀÚ¯ô¯[@;ŽR³NQÀfÀçô\r¯[@õ¦¨NQÀêK*«\r¯[@|k{tPQÀäA,û¯[@»ŒQMQÀÜüO–¯[@BÐTMQÀ˜V}¯[@B]uÓQÀœG|)¯[@¯4|MQÀN—×§¯[@mfÛPÀ¨¿–\0¯[@ÁàÿêPÀ’\"üÿ®[@Á*ïfêPÀú;œÿ®[@+GÐ±æPÀA²Fþ®[@; ¬}ÙPÀ»wyßý®[@|\n¨˜ÌPÀ@ÙCäü®[@¼B07­PÀ$ðaØü®[@A©&»«PÀ¢ezû®[@÷³’5PÀ‘ë{û®[@¿,ÿO5PÀ‡ò¢ø®[@ûî-)PÀ°Û(1ö®[@ú´@œ6PÀ¾¥œ/ö®[@¿ž‹¾6PÀ}¬ô®[@|0o;XPÀSO[-ô®[@ûÍ2ÍlPÀf¦ß~ó®[@?ÔŽPÀ¥Sk\"ò®[@ƒÎèPÀ\0Ç£öð®[@Ã•€e“PÀPT,í®[@|a•ËyPÀ=Ë´|ë®[@€þ…újPÀ\\§‚ë®[@=iÅ©iPÀ¯Bð®[@ÿ{€±hOÀ›B+Só®[@>%û£NÀŽ4šWó®[@½Óñ¢NÀdé”^ó®[@Eùß¯¡NÀlÂŸÜô®[@ýîý\\NÀ ¶¢õ®[@€€¦‹8NÀ‚Ù ö®[@ÿóáNÀDÅ¾ø®[@@iÆ¬MÀž^ù‘ú®[@†KˆñNMÀ)iVšú®[@BƒnCMMÀ+uý®[@\0í*]\'MÀ¿hï‰þ®[@wóLÀ¶ÖÞÿ®[@\0°éÂÁLÀ™¾Nþ®[@<æ%xLÀ¦…w+þ®[@@&:rtLÀÅ™Gþ®[@\rý\\LÀ<ëí«ÿ®[@€|Y\rLÀSXƒÙÿ®[@ûöÝ¢LÀÞa\'}\0¯[@Â×[ÙKÀŸDß8¯[@,¹íï*KÀ5hÖ¼¯[@|Ö‰KÀŒF4=¯[@E—›öJÀ”Wß§¯[@~È©hoJÀ¥Œ9	¯[@<n»ÆêIÀ¥U½”¯[@¼06ßNIÀ‡\\ü¯¯[@Â£]6NIÀÚj*\r¯[@@\ZówEIÀ´íÃ`¯[@ÄO›xÔHÀÛAR¯[@éšŒÔHÀˆˆ‰p\r¯[@Ä·¥$×HÀÙ§æ	¯[@CÙV<ÀHÀ™`u:	¯[@_ÐÝ—HÀž\r/	¯[@EÐ)D—HÀCi|\Z¯[@|{ŠHÀKøa¯[@|EridHÀvÇl\r¯[@„¤\nïGÀÃ*vå¯[@À­ÅÆGÀi’]¯[@Í³¦:GÀµ&º¯[@€Û#üFÀ&¿Ã¯[@<§·©ûFÀÝ÷ªÀ	¯[@„—ósàFÀÚ\n\r¯[@„íqˆ³FÀÊCáÞ¯[@Ä4½pYFÀ\r¼Ïû#¯[@ÅÂ­(FÀõ_kß1¯[@ýA$\"€FÀ`‘¡[6¯[@;šÔ0yFÀ3³÷+B¯[@ý‡1‹~FÀëNñdI¯[@†ÀÄ1FÀLÏL¯[@_tä\0FÀ#W¥…O¯[@A¸ÞnýEÀì3PáT¯[@ãÞà1FÀ3Šå–V¯[@…™¶eEÀŒ¡œhW¯[@ÛŠýe÷DÀžŽ’W¯[@÷Ç{ÕÊDÀå¸S:X¯[@1Îß„BDÀö#EdX¯[@£¢ÑDÀ–çÁÝY¯[@Þ<Õ!7CÀH0[¯[@Â£#ÖBÀÂõ(\\¯[@ÂiÁ‹¾BÀAñcÌ]¯[@¦\nF%uBÀ¬sÈ^¯[@[rPBÀ*ŠŠJ`¯[@âhþ\0BÀj+Æ^g¯[@ƒø­f5BÀþŠ7]o¯[@C«~w»BÀðèv¯[@>Û	ßBÀQ+=´~¯[@=}SøBÀ\\sûp†¯[@|B¦çBÀ9s›²‹¯[@@\Z2úBÀ\rˆ%’¯[@5y~ÜBÀ€Ð‡\"•¯[@ÄYýÔBÀý[{ÿœ¯[@<š\n“×BÀßü`Â£¯[@Ä÷ÍAóBÀª¨”³¤¯[@»¯íCÀqüÔ¡¨¯[@AMÕ2CÀç×ÿÎ°¯[@„BMUCÀ•·(U°¯[@ÀúHÆCÀ\0ó´ï¶¯[@[XìCÀ	.h·¯[@Ó‹§DÀ+dýR¾¯[@?å,\0NDÀA:ÃtÄ¯[@g¸sDÀÜQyÌ¯[@þ|3€£DÀçîÒ¯[@@rÑmâDÀ', '23654', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17331.00000000000, 'NGEMPLAK'),
(9, '\0\0\0\0\0\0\0\0\0Ö\0\0\0Ÿ$KP]°[@{`¦œ0À·‡­_°[@@°€-¢0À}txu_°[@%1”U	1Àø¡|ˆ`°[@ô&ŽQ1À·d¡a°[@;–ýZa1ÀRˆ¨d°[@Á®ö­_1ÀyÝK¯g°[@ÅžsŒk1À{š¼–j°[@¾©“;…1À7d¿k°[@|Â³Å´1ÀÙk°[@ÅV“µ1ÀKÌA=n°[@ýñmà1ÀX)Æm°[@E:Œ?\r2ÀmÉ8³n°[@À<ÞÜF2À^˜øn°[@À§CI2À„ø’Vt°[@BÁÝOI2Às˜Ky°[@‚ÞÆ2ÀÒGÔœ€°[@½mA¯r2À†-­î‡°[@~qÖÁ2Àæ\rtŒ°[@Cnûtõ2ÀÉñ)‘°[@•ú3ÀK!Iv°[@Å\0Ï53Àã Y°[@ü²;`3Àä3{Ž°[@À~î¨Š3Ào”M°[@Aš;µ3ÀÛ…æ:°[@kñ)\0Æ3Àíð×d°[@2ÉÈYØ3À#2¬â°[@keÂ/õ3À)F”°[@;ðŽ„d4À\0Ï5M‘°[@\\ro4ÀÂO&²’°[@ÆÔ4À€%ºÛ“°[@Yé¤­\05ÀÒ^^/–°[@Ã%N&\"5À/)Ù›°[@{Ó`1\"5ÀßÃ%Ç°[@ÚUHùI5Àª‚QI°[@¡¡‚‹5À»íBs°[@öî÷ª5À[±¿ìž°[@K< lÊ5À´Èv¾Ÿ°[@½:Ç€ì5ÀØžY °[@Ù_vO6Àÿ²{ò°°[@õ¾ñµg6Àßýñ^µ°[@fƒL2r6ÀÔÔ²µ¾°[@J+‡6Àô¦\"Æ°[@JFÎÂž6Àöq®\rÇ°[@UøÆ7ÀÚæÆôÄ°[@?&¹ñ^7À\\¬¨Á°[@bg\n7ÀØõvÃ°[@du«ç¤7ÀÉ«sÈ°[@Hþ`à¹7Àž^)Ë°[@Öÿ9Ì7À÷Ç{ÕÊ°[@€óå8Àæ\\Š«Ê°[@c—¨Þ\Z8ÀŸ°ÄÊ°[@¸…ëQ8ÀdñÃÊ°[@þ-Û|“8À£cPkÏ°[@ \Z,ÿÎ8Àíæó›Ó°[@ÄypwÖ8À»DõÖ°[@\rTÆ¿Ï8À–x@Ù°[@ðÜ{¸ä8À\Z·ÝsÜ°[@Â¯˜$9ÀFÚé®Ü°[@[|Èc9ÀâUdáÜ°[@þÚïëè9ÀTŽï©á°[@Íú«ÿ9À¬Ãvœç°[@Å´¤,:À7àÈCì°[@gÜ_3:À¼ÐÂó°[@Ã‡µw”:ÀüŠ7ö°[@¼ •2«:À<	”ù°[@|[Ï}:Àý×Bû°[@Å0¾ó:Àå4®ùý°[@~o³£:À|6Ø¿þ°[@Ã“ÅŸÖ:ÀÖîpžþ°[@Cø·ù:Àm¸Xéÿ°[@ÿÀ;À@%?±[@=/À;À.i	±[@DCëÙZ:ÀŽŒæ±[@ƒõ\rB:À*SãÝ±[@Ån<V+:À	lÞ±[@Ë_G±:À†èÉb±[@ÂAx‰ñ9Àu‘^®±[@€²s|¯9À3ìÏü±[@¼ÑØÓ9ÀAHï±[@¼ÅÒ…-9À¸nê!±[@;‘’[9Àµ;/)±[@€U![9ÀQ»PÚ*±[@½\0æ,|9À!äÎâ+±[@X¡9À†qŸ+±[@¾;˜):À#¤ng?±[@|1‘c:ÀyÃHòF±[@}ßêØ¿7ÀÈS)RN±[@ƒéU%5Àdœ|Q±[@E¼œ55Àöù{kX±[@C†e6?5ÀiTÛ«a±[@€€*k5À!ŒFh±[@{n*µ‹5ÀTçÃFh±[@Ö†/¸‹5Àö§à2±[@d:Iú5ÀµêÙ±[@¹oº6À	lƒ±[@?±üÁ6ÀWB`­†±[@Aù´v\Z6À³ƒ¯‡±[@ÆTiÒ@6ÀdÃeØ’±[@þlqÙ]6ÀÁA¡”±[@ÛŽãf6À„~/P•±[@ƒo´Kj6Àœ¸f<›±[@Å:K˜‚6Àºn¢±[@ÁsËF›6ÀFCÐ¨±[@ÃÐŸÁ6À×=¹s¯±[@~uüç6ÀŽ Y[¶±[@DÖ…}\r7ÀÝ¥øëº±[@YŒW¬#7ÀÝî£Â±[@¼;)E7ÀÖC‚IÔ±[@A9ñ+7À%¤YÌÔ±[@Äû–1ì7À87àÒÕ±[@=ûÙF>8À£Ý*Ö±[@EÔ¬‚8ÀT…>Ø±[@½RGº«8ÀÑ9:Ø±[@ô6–­8À7Ø±[@ÿl®8À=)Ø±[@¿”0¼8ÀäÀØ±[@‚hêç8Àtuã×±[@¦9Àb¾×±[@”h\\G9À8(ÞØ±[@Ä ¬a„9ÀjzÁÙ±[@a¦MI”9ÀBœìÙ±[@¾¥µ9À¶30Ú±[@;ðG¯Ø9À¿IfÚ±[@?öñ9ÀþLHaÚ±[@få¿‰:À=ã(dÚ±[@D¡wŠ:ÀÆ\'XÝ±[@>ç7˜:À1ofß±[@\0×ä´:Àq»Aà±[@þD\nV¶:À0ž’ŠÞ±[@…[\n\\ß:À@0Gß±[@—ÅÄæã:ÀëÌ´2Þ±[@|m†Åï:Àóë Ü±[@Äa9?N;À“Àøÿ×±[@Dòcž%<ÀI	1ÿ×±[@C\"ÅÃ%<ÀÜ•?ÚÝ±[@¾\rŒBæ:À¡½Ô±Å±[@A]—;ÀZ´£±[@~°EÐm;ÀsÏ4\r\\±[@5·cfv<À-p5\\±[@€,Èó<À“	bZ±[@ÀÓ-Œ=ÀoÑ÷ŠV±[@ÃÝçý!=À²‘\n´R±[@¾ŸÛ(=À×\"Å§P±[@ÁäÐ>0=À\"”Ä€O±[@=W\n•@=ÀzÅrK±[@Ê¦\\á=À‡ îL±[@!Ë•>À«ô¨2K±[@Á{²á7?ÀeEeI±[@vŽ?À RqXD±[@€/n@ÀP«ò@±[@ÒæÚE@ÀWôö8±[@üž2¨@ÀÓjë2±[@Eþrîõ@ÀŒ^O/±[@H<sbQAÀî!†Â,±[@\0Àý •AÀÑÂ=M(±[@„#ÁAÀ›è%±[@gœDŒðAÀ%úöZ\"±[@\0K|t>BÀ–$F ±[@À¸SÍ»BÀ;äf¸±[@ü5Y£BÀû\\mÅþ°[@nÀç‡BÀÛŠýe÷°[@ýÁÀsïAÀô\Z»Dõ°[@‹ýe÷äAÀ·Ñ\0Þ°[@ŒÛh\0oAÀð¿•ìØ°[@Œ¡œhWAÀ{÷Ç{Õ°[@þ++MJAÀôÃáÑ°[@7TŒó7AÀ—‹øNÌ°[@þ·’AÀ‚ÿ­dÇ°[@âÌ¯æ\0AÀ Ñ*Q{°[@„V»z?ÀY,s*°[@šF±Xš>ÀCÍëã|°[@~Ê0X>À+›FNw°[@\"]>Àjë8bs°[@@eÔÁ=ÀlK;:p°[@Å±¦8b=Àñc¡Ýn°[@ðì-=À?Œm°[@éH.ÿ!=ÀXÎüj°[@[Ó¼ã=Àÿç0_^°[@Í¯æ\0Á<Àì£SW°[@?ÆÜµ„<ÀdN°[@ßÅ¹U)<Àý[U8:°[@}¤½Ýl;À@ÊC7?°[@t—ž:À6\rÓ¼8°[@Cã@E:ÀöÃÒ7>°[@€Óïˆ8Àë@‚T=°[@½­ÙAZ8ÀÔ÷8Ø=°[@ÁÒ++8Àã¡ŠC?°[@B=½·Á7À™‹^@°[@ÌÅh_q7ÀøD¸xA°[@F7À¿!\\\ZB°[@½xâ¸Ú6ÀK,äB°[@>²,|£6ÀœPˆ€C°[@JÒ5“o6ÀãüM(D°[@.­†Ä=6ÀÓ0|D°[@.sº,&6À¸ŸF°[@Ù=yX¨5ÀîBsF°[@,g~5À¯òÑÐI°[@B\0ë\"™4Àw¦·K°[@Ã?z4ÀzIÓL°[@8váë3À\\ætYL°[@2üÁÀ3ÀØÓM°[@¥1ZGU3ÀŠ}\"O°[@‰^F±Ü2Àã4ôO°[@¦›Ä °2À¿CQ O°[@ì†m‹2À¦ØÖñM°[@¼«øh2À<ƒóšX°[@DøZR0Àõmß¨W°[@@ß=c0ÀÇƒ©=W°[@ÁÔD®º/ÀoxŽU°[@Ä›/À¤mŠT°[@ƒEšk/ÀÂiO6V°[@¾€0_z/À>VI”X°[@ýy;i±/ÀŸ$KP]°[@{`¦œ0À', '23655', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17332.00000000000, 'PABELAN'),
(10, '\0\0\0\0\0\0\0\0\0&\0\0èÇ¨0Ë®[@704À°êS^Ð®[@|Œ\0 ‡4ÀÌE‹×®[@,ï\r2‡4À¯ßÏÍ×®[@uš5À:3ï¨Ù®[@½	FÏt5ÀRý9»ë®[@A{pH5À~Ijnó®[@=ÓÛë5Àüî¤%ù®[@ß‰Ú&ª5À%·ý]¯[@ERpœ6ÀƒÖ¯³¯[@|}¿z×6À¦gÐ‰\n¯[@Ã‰7ÀH)ƒË¯[@…Mù¼T7ÀEÊó9\'¯[@Ù‘R–B8ÀÍiÍ‘ ¯[@~oÊé¦9ÀŸz’¯[@ûú¨r:À@×¯[@„uîž…:À×+>¯[@¿÷òâ:À@£Àw%¯[@{kŒç};ÀE÷‹]+¯[@DÙ@Ñ;ÀAªñj*¯[@Á\nž\n<À†õ¶.¯[@DÉŒŒ<À)pµÅ*¯[@ý ^‹<À&ôZ0¯[@}êýƒž<À= O?¯[@ŸöÆ<ÀÜoêL¯[@ý ¾(ë<ÀÑQAWX¯[@>ì²=ÀÈ+ÝKd¯[@ÿÞ“Ð[=À½5°U‚¯[@ÊÞå\">À¡¡‚‹¯[@&pën>ÀÞ	Š¯[@;6ñº>Ài	PX„¯[@\0£hœˆ?Àlµ$s¯[@CsƒÑG?Àaà¹÷p¯[@Èïmú³?ÀÓ‡.¨o¯[@UMu@À¶Ö	m¯[@Æ3hèŸ@À‘÷zi¯[@Ä©N OAÀ50\\—f¯[@}édAÀ&¬q\\d¯[@@•ü\"}AÀ3ú…b¯[@6ru±AÀ*ŠŠJ`¯[@âhþ\0BÀ¬sÈ^¯[@[rPBÀAñcÌ]¯[@¦\nF%uBÀÂõ(\\¯[@ÂiÁ‹¾BÀH0[¯[@Â£#ÖBÀ–çÁÝY¯[@Þ<Õ!7CÀö#EdX¯[@£¢ÑDÀå¸S:X¯[@1Îß„BDÀžŽ’W¯[@÷Ç{ÕÊDÀŒ¡œhW¯[@ÛŠýe÷DÀ3Šå–V¯[@…™¶eEÀì3PáT¯[@ãÞà1FÀ#W¥…O¯[@A¸ÞnýEÀLÏL¯[@_tä\0FÀëNñdI¯[@†ÀÄ1FÀ3³÷+B¯[@ý‡1‹~FÀ`‘¡[6¯[@;šÔ0yFÀõ_kß1¯[@ýA$\"€FÀ\r¼Ïû#¯[@ÅÂ­(FÀÊCáÞ¯[@Ä4½pYFÀÚ\n\r¯[@„íqˆ³FÀ²F\r\r¯[@<\nìŠIFÀËK¼\r¯[@A/ËFFÀVßë¯[@C¡÷ûFÀ¤ÃòÐÿ®[@½}µ3äEÀ­tjsë®[@{ïŽ)«EÀŽX[ë®[@¾Rè$ªEÀ\0ï%é®[@Â†ÿÀEÀ–[4æ®[@C7½[¾EÀMNæ®[@ûÐG¾EÀóºßä®[@„f•¡EÀæß¿]Ü®[@EÄõvEÀƒR¢Ó®[@\"ûKKEÀÁ>t Ï®[@<†Œ=EÀ—JÌ®[@‚\Z;EÀ…y%Ë®[@žÊqÀEÀÆ}³æÊ®[@ìƒMEÀáÅÆ®[@ƒX+uñDÀ‡!oÂ®[@D¾´ÜDÀ¼ÛnÂ®[@D&WÅÜDÀ82üÁ®[@¢îÚDÀ;(„µÁ®[@?‘ƒrØDÀ¥\ZÒ¼®[@¿³0/³DÀô!Obµ®[@@š¶LtDÀ6ðJb®®[@4^ãÈ=DÀË³æUª®[@|‹ßDÀ\râÆ×¥®[@B±2HDÀ˜pü¥®[@¾€ÚªODÀÇ…uv¡®[@ÁVú‚vDÀN”ž®[@¾æ)‘•DÀ\ndÔ‡ž®[@Quð•DÀ×ä\0,˜®[@CIÇDÀ†ã\Z‘®[@@?â¨óDÀºªuŽ®[@§Çø(\nEÀ÷¹(\ZŽ®[@Eì2\rEÀÜ6.ƒ®[@û8QåEÀS ró}®[@o!{üEÀ‘zpó}®[@‹fîcýEÀ\n’7ó}®[@½”ZFÀ0ÂX|®[@‚\\Š€JFÀ)ï¡L|®[@„ÈÎåJFÀž\'Îì{®[@U]òNFÀw>“z®[@E/ÏHYFÀw¢íy®[@{¦—dYFÀe¹(Wq®[@¼Û›B[FÀm¨ço®[@¼?Þ«VFÀVa‘1g®[@EsHoZFÀW÷ú`®[@{±YrFÀ®øt_®[@\0ˆ¹ÅxFÀÆÄæãZ®[@„[H/†FÀ:;0¸Z®[@Â€µ†FÀºéåcV®[@„b¶vFÀ§!B\rS®[@‰q`jFÀB©2–M®[@~ú«³™FÀýa-9L®[@B¿\r‚¥FÀ4\r…-H®[@¿ï;°FÀ‹õ¨ H®[@„/+ä¯FÀyIåëG®[@ÜŸ~°FÀ9@˜*D®[@AË-$•FÀÀhf˜@®[@Uè}FÀ‚‹¿4?®[@=Å`´}FÀ%”æ=®[@€JýW~FÀ™ö»\Z:®[@ÿ\r¬FÀ¶G?9®[@E5a0¼FÀ£ž\\X9®[@}§§9ÀFÀ¸â£D9®[@P¡¿éÀFÀU«†/9®[@{)ZÂFÀº\0ž.7®[@»ÎÝÔFÀ6E\'4®[@@KòÄFÀ”G3®[@K4Ñ)ÀFÀ—B42®[@A¤`‹²FÀT-z‹-®[@~3uYwFÀÆ­8‹-®[@ý	VwFÀj\nÙƒ-®[@^îYøvFÀšM£p-®[@>&š+vFÀ!½Y+®[@û\\^æ_FÀ²Bž*®[@…‰\'SFÀ:ã(®[@¼a„0FÀ…e4>(®[@ÍDZ(FÀ˜K3(®[@JF\r\'FÀNƒ¥&®[@B’:÷EÀëü&®[@ÅpJ´EÀJJG\'®[@Ã+Ú«EÀê@Ô\'®[@>ûaœEÀ«ô]&®[@ÀÅm4€EÀG˜S&®[@¿P~òzEÀÁµô#®[@=ÊÃ¹»EÀ¶•þ(!®[@þßgañEÀž´Óƒ ®[@Ì‡¶ÆFÀfÑ®[@œØUFÀ@õ¾Ú®[@‚ä áFÀŸ™S®[@>æ®vGÀd\\\0®[@h·3ŸµGÀ›G¯\Z®[@ÿ»nøzHÀ¹g†®[@Ed.ÜHÀæ8‚®[@Aö@þHÀÿ‰º®[@@Rpv@IÀZï¶Yü­[@ôP£#JÀñâlV÷­[@ó¬æ1±JÀ–Î@ò­[@</áä?KÀ¿™í­[@›tÍKÀ¿sÂ`ë­[@…íLÀ´À¹ç­[@¿ÖHEuLÀJ‹ýÜå­[@‚çÞ´LÀªSnä­[@>åÜ(ÝLÀGV•µá­[@«KÈ2MÀéŒv|Þ­[@dC¬šMÀzßéÜ­[@»˜ÁžÊMÀ90‹Ù­[@Íƒ+BNÀ):Ï.Ø­[@]ámNÀØD.×­[@A·µi’NÀÜ#žcÕ­[@¡\ZÐNÀêª”,Ô­[@ƒùí¶NÀ«ÃFcÑ­[@~³¬dNÀg9ôÉ­[@BÌHCáMÀµANáÆ­[@…rh²MÀlú#tÆ­[@‚ÝaoMÀÓYL½Å­[@ÁCÀTMÀ×¬†Ä­[@EHRtRMÀx²–`Ã­[@@Ã`²|MÀì¶ŠLÀ­[@{Ðô0¹MÀ^YÞ¿­[@ƒ°mØMÀ½k$»­[@¯¥‘àWNÀžkÅ\"¹­[@É#¦®NÀˆFB«­[@C¹OBtNÀfÎ:°ª­[@~`ÐƒNÀ—éC‰©­[@¼Úhc™NÀY“7X©­[@ÿó×ª«NÀ·„jí—­[@Á”ÎM¼MÀË;ß3˜­[@–cªG·MÀß—[££­[@f)Ý†æLÀýù(¶±­[@3C¨\'MÀ|äðø¿­[@;M ’·KÀŠø&Í­[@‚ÒMÀ\r¶Î­[@@…é48MÀ_\\TÒÝ­[@Œ^·ÆoKÀÃfò`ú­[@DB­—HÀŒìåŸ\"®[@AoZ#”DÀA‘ñŸ#®[@ûºÄzDÀ—*ë-®[@ÿpŒÌrCÀÛ×m\'®[@C9CÀ‘ñXÎ&®[@¾§È&›BÀ[Ný®[@¨!óÆBÀÉ™‹®[@E§QÂBÀ.×Ë„®[@E}¦þDBÀ3ÍÙÚ®[@„÷òÚ#BÀÁbm\Z®[@Äs¬	BÀ¿c‚^®[@¢ åçAÀŽ›®[@Ä¬%ÝÉAÀ›ÚûO®[@BÓnT¤AÀ\"ì®È®[@=ý-M†AÀä³î®[@°úSAÀ À®[@\0`~~JAÀ\0p¼ ®[@»Ë°¯GAÀìÝk}®[@ÂŠ\r”AÀ¯›‡P®[@˜Üˆ›AÀOg$Ë®[@ÅRªÃX@Àè{É£®[@ÿöŽZ@ÀÛH~i®[@ƒ¯÷M\'@Àæ×@®[@†DýÕ?Àžýÿ\Z®[@;sŸß¡?À\"Oð®[@¾¶ˆ?Ài\r ®[@Dà\'Þf?ÀéeÜ ®[@‚•¿žV?ÀJõó_\r®[@ƒ8Ê}O?Àõ \n®[@€`»~8?À:Tó	®[@;¬§4?À÷ÿ®[@ü1°?À½_@\0®[@½^_ò>ÀÚþø¿®[@@%W•>Àìí€®[@;vE?>À½É`®[@Ãˆ=ÀyØñ®[@¤2¤=Àp6ð®[@Õ¿wÝS<ÀF%Tô0®[@\0V\r{=À–Ã;®[@Á¹¡);;À\r€šU=®[@¿e/iù:À]`?®[@›õÓ=º:Àá¹H¸H®[@=²§fÔ9Àò±¶‡O®[@;·ñÎq9À}»™S®[@„@¹B_9ÀÏÍ[®[@;µm9ÀEzûºf®[@zóŒ6ô8À¡ôÇ¬e®[@;È\'f8À-/„’e®[@B,(XX8À.+½f®[@¸N8ÀÀ•ço®[@ÿ_…8À&–þŸo®[@\0HÚ]8À*ìŸ0s®[@AÛî¦Ú7Àøp\Zy®[@À‡Ðï˜7À©Øß¬}®[@Å2‚»#7À	|}®[@Å»óT7À¹=¡t®[@\0]Øæ6Àà¡t^m®[@Aâó©´6À>ŸKa®[@ÀÄ½ib6À$°_®[@ƒ¸òåG6ÀZ”2ÙZ®[@ƒis\"6Àcï»¥Y®[@„ÃQkú5ÀWñZÊX®[@‚Á[ç5ÀÇ\n•·W®[@jÂÛ5À„‘Z[®[@{!´bÛ5Ào~QïZ®[@>e¬·5Àþdª^®[@‚Ýð 5ÀwÀ¶f®[@ž¼šÌ4Àó>V<j®[@¿\0E{¨4ÀjAUpk®[@{äfÂs4À!·Wm®[@Ú8Ù;4ÀßûÏ%r®[@þã3í#4Àõ•äÙu®[@„€Y’4Àä˜ô{®[@—¦kš54À&t«¨€®[@~R¡E4ÀG¨wÃ†®[@€ÀT4À%díÝ‰®[@;×À†B4ÀA\r!ßŒ®[@»¨k94À(ÏG‘®[@þ˜*òÍ3ÀÐèba•®[@\0·\0õå3À¨;„.—®[@‚àò]ì3À„Ô{—®[@;â5 ¿3À%_˜®[@@å~Œ3À&‰É˜®[@™	Q3ÀÖEÊIš®[@ECWR‰3Àœ	%J®[@~“¬¶§3ÀÑf±¡®[@úÏ{ñ²3Àõþ£®[@ÄÍ.YÁ3À†{¦®[@D-GÀÏ3À7]\0.©®[@?\rc&ß3Àé´J¯®[@„<“¹Ö3Àx¶ûà²®[@Eâò>ß3ÀBáæfµ®[@ý@ƒ64À“Ÿîµ®[@þóù(#4ÀÚj §¹®[@@Ä÷w4ÀÎõ÷¾®[@BÒlÒø3À]%¡òÄ®[@|›R„ò3ÀÓŸðÆ®[@¿¦À4ÀèÇ¨0Ë®[@704À', '23656', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17333.00000000000, 'PUCANGAN'),
(11, '\0\0\0\0\0\0\0\0\0À\0\0\0	;å¯[@BÈ©c¶*ÀÑÓR	ç¯[@€nb…±*Àyö¡zç¯[@AO‚Ö*Àß½xFè¯[@ÅL9êÞ*À“¨è¯[@€P&ìÝ*À!ñé¯[@ÄZç*ÀB¤²é¯[@A[\réí*Àª[âmê¯[@AI¦í*À0“»ë¯[@Å&R©ø*ÀÀjú&ì¯[@¾ˆfØ+ÀÃ ï¯[@Àg9â&+Àê‡í¯[@ÿŸÁ4y+À«÷áë¯[@B®ÖÕ+ÀgDn(ê¯[@B µm>,ÀçEé¯[@|ÈO‡n,ÀÅ:ÌÌé¯[@ÿœV¤ž,À…Ì»è¯[@\0ü³ð,Àëfø¯é¯[@\r¨ -À9¬ì¯[@—E8˜-À:½ÿí¯[@»2íR-Àœôª\rï¯[@=´;õ_-À­Ú[èï¯[@¾2U`c-Àt®ò¯[@ƒ±gƒ-À@åýWô¯[@Â³Ùw–-À¯k¬ø¯[@D²L@Å-ÀM‰ìÏú¯[@€R•×Æ-À²\'Ž÷û¯[@¿*·Oï-ÀÄÀTþ¯[@‚™Eyý-ÀÉ=Áÿ¯[@¾I…©.Àé«7¬°[@{w™6#.ÀæÄ0½°[@¾göè).ÀùWf|°[@¼?m$.À¶¢Ò*°[@žó +.Àjut‡\r°[@¢ËPO.ÀM>£˜°[@C ¹:?.Àw\rÀ\'°[@…vLJ2.À\0^*,°[@\0B_ª4.Àðò¢æ°[@ÿï¿(P.À»Ã°[@½ž¯i.ÀlN[¬°[@L¡r.À0f/°[@¾=¼m.À{GÀú°[@>¨x q.Àcn@I°[@ótÿo.ÀäíWí°[@½¿)šq.Àˆ ¦°[@NÖÝy.ÀFeo›°[@Ã&)qœ.À$Î{°[@~çï¨.ÀE!°[@¾‹<©.ÀË%<°[@©\"¬.ÀËe£s°[@¼^Ñô¬.Àá¦¸\n°[@ÀÑl´.À\"£ç°[@Ã‚C“·.À_Ð °[@{SÞTÅ.À!ƒñà\"°[@ýÒ€ëÑ.Àº*%%°[@öp°Ô.À–t9Ê&°[@RÇXÝ.Àsl!î(°[@4¨\r¹ß.À|-ív+°[@¿äV¿Ô.ÀMW‚U-°[@ÃuJ:Ü.À@ý¸/°[@oUéYÖ.À1‚Í0°[@ÁhèÔÒ.À ÿ©1°[@Å»VØ.À	Ü92°[@ýŒêDç.À½Ül2°[@{ð“û/ÀÃ}‰2°[@©>/À£íó3°[@ütæý/À‡Üt\Z5°[@$C“Ý//À™;L4°[@>]rAU/ÀMÉÅZ4°[@ÃFV/ÀÌú7©4°[@Æ`i«U/ÀÞÁ67°[@D4òÅS/ÀÜš:°8°[@|Mœd/À&¤ä¾=°[@q«³i/ÀÃ“RÚ?°[@‚1ém/ÀèaB°[@BF·ßS/Àï<öUG°[@š!—0/Àü¡9µJ°[@{))#/ÀYñE/N°[@,¡7ì)/À›—•¶P°[@…	þ./Àí~ôÑR°[@¼îä\Z9/À×ÆußS°[@{ËFYR/À¤mŠT°[@ƒEšk/ÀoxŽU°[@Ä›/ÀÇƒ©=W°[@ÁÔD®º/Àõmß¨W°[@@ß=c0À<ƒóšX°[@DøZR0À¦ØÖñM°[@¼«øh2À¿CQ O°[@ì†m‹2Àã4ôO°[@¦›Ä °2ÀŠ}\"O°[@‰^F±Ü2ÀØÓM°[@¥1ZGU3À\\ætYL°[@2üÁÀ3ÀzIÓL°[@8váë3Àw¦·K°[@Ã?z4À¯òÑÐI°[@B\0ë\"™4ÀîBsF°[@,g~5À¸ŸF°[@Ù=yX¨5ÀÓ0|D°[@.sº,&6ÀãüM(D°[@.­†Ä=6ÀœPˆ€C°[@JÒ5“o6ÀK,äB°[@>²,|£6À¿!\\\ZB°[@½xâ¸Ú6ÀøD¸xA°[@F7À™‹^@°[@ÌÅh_q7Àã¡ŠC?°[@B=½·Á7ÀÔ÷8Ø=°[@ÁÒ++8Àë@‚T=°[@½­ÙAZ8ÀöÃÒ7>°[@€Óïˆ8À6\rÓ¼8°[@Cã@E:À_¹47,°[@û·.Aµ9À¿ML%°[@}&´^l9ÀÎiD \"°[@ßƒ¢<9Ày³6(\"°[@Aƒ~Fì8Àmí$ò\"°[@úæš{¨8Àb°#°[@ÄU=¯d8À6¹aÙ!°[@Aç€s28Àé­´°[@>»þ\'ö7À<m0°[@	Ô\'û7À{ôÈ°[@¾T½«8Àiù˜G°[@¿ìÖ28À‹qà\r°[@ÁîD28À{\0+°[@ƒ«õCA8À‹|êš°[@––rs8Àº\ZÔý¯[@z¼§ª8À9EGrù¯[@\r\Zú\'¸8ÀýÁÀsï¯[@¸Ìé²˜8À½:Ç€ì¯[@ÔC4ºƒ8À}³Íé¯[@ö#Ed8À5æè¯[@ÕÏ›ŠT8À‚f¯õç¯[@{Hå¶8ÀùÛ(è¯[@Åß\\ï7À«\'tå¯[@Á\"d¦7À·\rêõã¯[@=Ww1o7ÀåV\\ªß¯[@€¦àó:7À\0©MœÜ¯[@‚Êø÷7ÀçNÂâÖ¯[@ƒ1\Z7ÀÖ¸ÇÒ¯[@ž{7À[üf•Ë¯[@¼g\\7À6Ç¯ÛÄ¯[@Éf~ù6À´­À¯[@ÆT©ö6À}î¹¯[@Æô)l«6À]»pÄ³¯[@„´ÿ6ÀR€yß°¯[@{«ß8h6À”)?Ù¯¯[@ãk76À[ÅH\Z¯¯[@=(Pìê5À…¦Ä¬¯[@üÔ‰‡Ô5ÀË^Y§¯[@@ÖNò5À\nTÖ¡¯[@üí­ÿ5À ¯¾™¯[@ÂËb³:5Ààz¹ô”¯[@*ö4Àµo¯[@ în+Þ4À%´ÓyŽ¯[@{íµ¥°4ÀH—¡k‹¯[@{…ü@­4ÀL8 …¯[@Î¹½Ÿ4À3]ò¹¯[@¤\Zws†4ÀßÇ|¯[@D‘¸ia4À82åüz¯[@<¿V74ÀAsâz¯[@?€Òÿ3À™Þ‰O}¯[@:ï$Óµ3À¿ªn†¯[@Ä=9â3À ¶É…ƒ¯[@Añ^_24ÀÀŠ`×‡¯[@ÐÙ T4À+×9Ø‹¯[@ÎF»<c4À€îçŽ¯[@š‰3ÐÆ3ÀÇr\",¯[@ÄOO3ÀPâ,’¯[@E-xit3ÀË.”¯[@üu/3À»</–¯[@\\¢âÅã2À’Å™¯[@ƒ·6É™2Àl`>hœ¯[@¼\"Fš;2À˜A &Ÿ¯[@Åº;É1Àd_\r«“¯[@EhÂJ“1À7`½•¯[@¼ß£Á1Àìj\\˜¯[@„möøž0À‡üž¯[@ýoA(‚/ÀZærX¡¯[@†‹Mä¯.À;ÕO£¯[@C9	¥/.ÀM½dŸ¤¯[@Õj Ý-À–¶§¯[@ÅeÌd-À÷--«¯[@ÿ_†;!,ÀÙ_ãë¬¯[@i4¯¦+À±÷p6®¯[@Â\rž³L+À¤Ìf±¯[@t£ú”*Àóä×e±¯[@§ƒ*À‘PÞ²¯[@ÿÉ—”*Àòó¶¯[@¿Ð2œ|*Àpaò¿¯[@;êì™b*À\\Pç£Ï¯[@½E~NX*Àq×™âÔ¯[@OT\\êZ*Àçæ½_Ü¯[@ûê\r·v*À8wÐùä¯[@ƒÒÿ¼*À	;å¯[@BÈ©c¶*À', '23657', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17334.00000000000, 'SINGOPURAN'),
(12, '\0\0\0\0\0\0\0\0\0z\0\0\0¥ƒÕÝ®[@DgÒ_\'À)kàÖ®[@~ù1ÿK(ÀØèðžÐ®[@¾\"º¤À)ÀçÒP‡Û®[@þô!&ã)ÀT+7Dá®[@“Áûñ)À×rí_ç®[@\0™Ýý)ÀHAÑë®[@Ã.¬èý)À8aÔKò®[@„Ží\0*ÀÏóÃâù®[@€Gl\0*À9—þÿ®[@î–*ÀÕ ÍI¯[@ÂÖ9*ÀÇtše¯[@Æƒ#*Àeî£¯[@\0F½Ý*À²U\r¯[@¼>öÛ*ÀÂ4¯[@–²q¬+ÀŸ‰Ò¯[@‚þÌ<“+ÀlÙRî¯[@ÁU#5™+Às€`Ž¯[@wgí¶+À5	¾ ¯[@Â)¢Â+ÀB`åÐ\"¯[@²KTo\r,ÀŠ}\"¯[@\\rÜ),ÀI…±… ¯[@ê•²q,Às€`Ž¯[@°¶-Ê,Àp_Î¯[@=a‰”-À:3P¯[@è‡Â£-À‰ïÄ¬¯[@u«ç¤÷-ÀIhË¹¯[@Ê\Zõ.ÀÓŸýH¯[@:uå³</ÀEGrù¯[@üÁÀs/Àì/»\'¯[@¬ÿs˜/À‚­,¯[@ ˜£Ç/Àâé•²¯[@ªCn†0Àébg\n¯[@ªek}‘0Àð3.¯[@âé•²1À,šÎN¯[@áÑÆk1À÷XúÐ¯[@\ZnÀç‡1À4¿š¯[@5æè1À•_>\r¯[@½sDä2Àp%;6¯[@ŠÈ°Š72ÀFÖu\0¯[@þwx2¬2À%`Ôëÿ®[@€1ø­2ÀÊHëÿ®[@ÁŸ©®2ÀgÐêÿ®[@FÖž\Z®2ÀJ×±éÿ®[@HÒ\0®2ÀØøèÿ®[@D\\à®2Àu`ü®[@û@5§2À+cÙRû®[@{Þ¯ÏŠ2À“}vÝ®[@?mx˜1À¾fÞÕ®[@þÂÿ<^1ÀŸÍªÏÕ®[@S\\Uö]1À¢QpgÕ®[@EÇÛ„Z1ÀE³àµÓ®[@ÿ*2L1ÀÂ†§WÊ®[@7Ã\røü0À;6ñº®[@*Æù›0ÀbX9´®[@qÉq§t0ÀXf,š®[@V¼‘yä/Àí\r¾0™®[@\0©MœÜ/ÀF6Ž®[@ûèÔ•/Àƒn/iŒ®[@«ç¤÷/Àf 2þ}®[@M„\rO/ÀÊà(yu®[@Wì/»\'/ÀÕ	h\"l®[@Wx—‹ø.ÀJµOÇc®[@tµûË.À<NÑ‘\\®[@æØG§.ÀCsFZ®[@Xf,š.À|a2U®[@ôlV}.ÀÑ®BÊO®[@æWs€`.ÀßøÚ3K®[@Ï½‡K.Àõg?RD®[@‘Ð–s).ÀŽé	K<®[@Ë¾+‚ÿ-À±¢Ó0®[@Y†8ÖÅ-ÀÀìž<,®[@=›UŸ«-ÀUjö@+®[@è‡Â£-ÀÉ&®[@¯ëì†-Àã¥›Ä ®[@vOj-Àç©¹®[@èŸàbE-À2ZGU®[@>?Œ-À`YiR\n®[@iÆ¢é,À!YÀ®[@ÍÌÌÌÌ,À.ÿ!ýö­[@±mQfƒ,Ày¯Z™ð­[@ê[ætY,À\rgjQà­[@CLHà+À‡Å)ìâ­[@CT—+Àˆ\Z‚lä­[@}®¨ón+À™.ô#æ­[@<ímî@+ÀfÂ9gç­[@þ+2æ +Àjä]oç­[@‚¢L +ÀæSƒ\rè­[@BBs+À¹òÄ9ë­[@³§¼*ÀãHÜí­[@‚î¾»y*À¿yâò­[@ÄÛ2\'*ÀsÃ¼µö­[@=7VÂ*ÀP„×¥û­[@ÛÌ”÷)À©6¾J®[@…qw;š)ÀÅ§Z®[@»fþkU)ÀE$ª\Z®[@@qw,)Àlr\0®[@;âà[#)À-²V\Z®[@À!;#)À2+g1)®[@.È3»(ÀGôäú4®[@¼Ýô](À§ß@®[@ûÆŸ(ÀÒaE®[@¼ûlæ\'À6n«H®[@ÿ#R¹Ú\'Àz+6ÙK®[@MË\'À[tÉpP®[@„L¶½\'ÀîõÅP®[@¾=»\'À‰qn{Q®[@EÓ=°¸\'À®9\0U®[@kRë¬\'ÀKBIY®[@î<¡\'Àp!÷Ã[®[@<èš\'À°ß®¿n®[@ÂÚ¦å&Àû]3T ®[@^ûú™\'À«±8\'¬®[@}Øî×Ê\'À‡·®[@„£¢ö\'ÀHÄn¿®[@Â1¦(Àß·kSÆ®[@tç..(À¹+V5Ê®[@À¢Â{\'Àÿ_ØÍ®[@?Aã‡\'Àµ‰ö%Ù®[@ƒ¼­f0\'À$C\\Ú®[@½#¡\'À\"+Û®[@…51\'À¥ƒÕÝ®[@DgÒ_\'À', '23658', 'JAWA TENGAH', 'SUKOHARJO', 'KARTASURA', 'JAWA', 17335.00000000000, 'WIROGUNAN');

-- --------------------------------------------------------

--
-- Table structure for table `spatial_ref_sys`
--

DROP TABLE IF EXISTS `spatial_ref_sys`;
CREATE TABLE IF NOT EXISTS `spatial_ref_sys` (
  `SRID` int(11) NOT NULL,
  `AUTH_NAME` varchar(256) DEFAULT NULL,
  `AUTH_SRID` int(11) DEFAULT NULL,
  `SRTEXT` varchar(2048) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spatial_ref_sys`
--

INSERT INTO `spatial_ref_sys` (`SRID`, `AUTH_NAME`, `AUTH_SRID`, `SRTEXT`) VALUES
(1, NULL, NULL, 'GEOGCS[\"WGS 84\",DATUM[\"WGS_1984\",SPHEROID[\"WGS 84\",6378137,298.257223563,AUTHORITY[\"EPSG\",\"7030\"]],AUTHORITY[\"EPSG\",\"6326\"]],PRIMEM[\"Greenwich\",0,AUTHORITY[\"EPSG\",\"8901\"]],UNIT[\"degree\",0.0174532925199433,AUTHORITY[\"EPSG\",\"9122\"]],AUTHORITY[\"EPSG\",\"4326\"]]');

-- --------------------------------------------------------

--
-- Table structure for table `spot`
--

DROP TABLE IF EXISTS `spot`;
CREATE TABLE IF NOT EXISTS `spot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) DEFAULT NULL,
  `Shape` geometry DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `jarak` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spot`
--

INSERT INTO `spot` (`id`, `Nama`, `Shape`, `icon`, `jarak`) VALUES
(1, 'UMS', '\0\0\0\0\0\0œ¬¬ÈC±[@ág·ñ‚;À', 'ums.png', '0'),
(2, 'Canarisla', '\0\0\0\0\0\0è*‚$±[@pÚt_1À', 'canarisla.png', '1120.8663384055546'),
(3, 'Coffca', '\0\0\0\0\0\0ðü¢ý°[@ÎQGÇÕ8À', 'coffca.png', '557.7970821752956'),
(4, 'RS UNS', '\0\0\0\0\0\0Åï\\Î[±[@˜æ{<À', 'rsuns.png', '197.96840918798424'),
(5, 'RS Islam Surakarta', '\0\0\0\0\0\0†Ï1{4±[@èDÌ6;À', 'rsis.png', '102.95614555084413'),
(6, 'Transmart', '\0\0\0\0\0\0Ñó]\0±[@Ø	Ô7>À', 'transmart.png', '540.2812042580936'),
(7, 'Solo Square', '\0\0\0\0\0\0¿ÊëÒP²[@_\ZÐ£>À', 'ss.png', '1841.59406289781'),
(8, 'Pemadam Kebakaran', '\0\0\0\0\0\0;@æ¹t±[@Ö]4¿õ<À', 'pemadam.png', '364.9111611186148'),
(9, 'Hotel Multazam', '\0\0\0\0\0\0NàŒP\"±[@¤XÉ\"8À', 'multazam.png', '430.1923718850248'),
(10, 'Hotel Alana', '\0\0\0\0\0\0hïço±[@Uþ.À', 'alana.png', '1489.8589429956355');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
