-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: test_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `buys`;
CREATE TABLE `buys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `market_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  `order_date` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`market_id`) REFERENCES `markets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `markets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` VALUES (1,'oponpjpmzz','bscloburjq'),(2,'tstppiczxx','mdesmwhpiz'),(3,'qacdobmjbx','mfhxxhckrg'),(4,'asjzhbcbpd','bwacmvnkxq'),(5,'ahhzegqyrt','kcytgtohzg'),(6,'zmxfahhbmo','ssskwbwazz'),(7,'blzxasozup','wvsmyqypuq'),(8,'fhnjsrgdvf','xwmstoxeac'),(9,'jcujndqmbv','mxkcbzrmhd'),(10,'tbopimuozl','ftahmxhfuu'),(11,'fyyygddxuk','znywbhmwae'),(12,'uxwurwvlje','zlqmrlajxq'),(13,'kxogbgorvr','lkjhiapfzp'),(14,'ywfokrrxlm','gurdiaszzp'),(15,'tgpepaekoi','gotakvjfxn'),(16,'qskppdqrfw','nmacrsvusx'),(17,'mfzsxzxhoi','qhvpxrwdyi'),(18,'lsvmddwywq','spidfivnkv'),(19,'hypdjqggxy','bhkviwafdj'),(20,'tzsoudeqzy','lbyjyrxvnd'),(21,'pumwlvpmsr','tvxxcqpowt'),(22,'pvdhkmfddm','nxdrwncwqq'),(23,'sgsyxkmesv','ltyhzkhsnq'),(24,'qafqjxqkvb','rgdilofixs'),(25,'ljudyswegw','jilkslwxxx'),(26,'zaosskanpp','vyyvicubwd'),(27,'dehwqukcsd','bttihwznwd'),(28,'mcsprwbhbw','bmfunfefmx'),(29,'wyauqxcbbl','achdebnwkm'),(30,'sxpyybvzsd','xnmfyidakc'),(31,'avcrjvajkh','cdgkzxxqxp'),(32,'gucmyycpwi','wzgipdusby'),(33,'hxbtwcqlkb','wcpupvcobl'),(34,'ifrxmnzogv','trgljcugep'),(35,'axbiwfqnzc','ciaorlnomi'),(36,'gdvnlgfvix','tvroqbhukb'),(37,'dieashqaje','tjgofiryev'),(38,'lnjmvlvrvg','bwlskkbieo'),(39,'nsyactosrw','fmvwbrzlht'),(40,'pwdorleroa','njrdchzekp'),(41,'ycdqfhxzqn','tgroqtfksx'),(42,'fphjpmplim','rwrxlyqqkx'),(43,'exmxrivmwv','thwjnzgvzm'),(44,'bhyttfmrke','xtofyzvfye'),(45,'hrpavhybnk','cvfjspqzbw'),(46,'unoyauiepk','ytvaofhzgy'),(47,'atlkuqqvkq','nhgmchfral'),(48,'kwokhakygl','vxrkmztznv'),(49,'ldxegfuanr','jvvunpjuwq'),(50,'escimbotoo','wuzzytwujy'),(51,'rqojgpdugm','cpgxwjfznw'),(52,'wsqtxqmtgm','qrsqiofgpb'),(53,'txnqhzyjud','ylsbwrvcvx'),(54,'fmmxdxwdgs','xbwfctuvus'),(55,'xdlbidcgrh','ecoufhsjbc'),(56,'xnjmbjazsw','xeidpbhgwn'),(57,'ldgdshsjqt','jnrqwasjsj'),(58,'ohkmkffpaw','bbzuzusxuu'),(59,'cgfevdgikc','wuumajetwm'),(60,'dedicpxrcy','eyujydkfii'),(61,'ybtieinduo','kezhpvzbux'),(62,'twdgvavewb','lziemetjbb'),(63,'uzbteibqvy','oahqtfvzpw'),(64,'ekzmflrqof','lrgujddwdy'),(65,'rglkbjlmsk','lgewsxyuik'),(66,'ywkqvhquyf','nqqhabtded'),(67,'warxnjkivl','ttglidbmwt'),(68,'wtsztcnmbz','snrsxkmseh'),(69,'livmowfisz','uqqaqsldfh'),(70,'joolxhchfh','agxikufzry'),(71,'bdpyjjqpwk','rsqvhxkkmo'),(72,'mmxrlvkslk','ceercvhyvl'),(73,'lrkolxywgi','fdmpceozlw'),(74,'ozzgjcyxxv','wymqujhpkw'),(75,'vjhkxhogoz','pqmojuayaq'),(76,'hbfqbnvqwz','sltpxuihiz'),(77,'dlrycqopxc','ryyreedawp'),(78,'rcyufmldoy','nebuntnaaq'),(79,'ksljrbkwly','qdqvftbtcd'),(80,'aomigmkmdn','savisvmehv'),(81,'rykforncgr','kxvweuiefr'),(82,'tzdklewcbu','tepvliebay'),(83,'yzlpxydouw','qjayldpnvk'),(84,'iolyqgvalc','jhcmmwhunp'),(85,'rpkgeghilk','yorerdszkx'),(86,'qwooycackn','losoygawpk'),(87,'oiwtmqjbcc','slrqaujbwj'),(88,'aitrgmmkjl','anqgpwgvmh'),(89,'xdlkuxwrlf','znhusztyez'),(90,'xcjsiddlhx','epnzvkskta'),(91,'qlyrczmiby','dojrgsfsdl'),(92,'eozmkrmhgj','eqjmfaspgx'),(93,'kqoqhpctut','qqfcdolmlg'),(94,'libhldwndk','cbplzdxvnh'),(95,'fkfloaqhuk','qfwkduujxh'),(96,'zntfmtzecw','oggvvnjscq'),(97,'zkuurmxadw','jdqumjmlvh'),(98,'muenqjzmgl','pdvefpzjnx'),(99,'vzkchcqhag','whqwwbvsqp'),(100,'osqaufrscl','fjwtmzgxji'),(101,'xtdktajufc','tzcpkiwsch'),(102,'iqucogxqub','iztznnhghi'),(103,'eyswxbaybp','ukgagmfnaj'),(104,'ghtjyywucp','fovipluoef'),(105,'fotiyqkzpe','pkbklhvoeo'),(106,'gxhqqbkkeg','iugoxuweuk'),(107,'wplylmywmh','evgpnnccyq'),(108,'jzcslwvrtf','mpjsgafzcc'),(109,'kjfxhisewx','smtcxowzyz'),(110,'vqfrnszeyu','mewqvajbyp'),(111,'olbtlwlwix','eiyggbfvoa'),(112,'yjpnshttot','mzftxvryff'),(113,'kimkqgeqvg','idqayicdvc'),(114,'gzfayovjwe','akortljfvm'),(115,'pfmysjtuym','hqhmlarwnc'),(116,'zulmlwrluq','ocbwobzecb'),(117,'osbjhqzwfj','rhslzvepfq'),(118,'pzgtgwrhje','cwqqsfetmi'),(119,'yrwcklmgid','tolgwvauza'),(120,'kitpgatflu','yxukljbcwt'),(121,'bakrqxofpt','vhnttvefej'),(122,'dgqcjlycud','qzrvdpxcdc'),(123,'tdzcqcvpyc','dpetbtpyee'),(124,'qzgmktejze','tzuxiiflzb'),(125,'qyvlgwrxti','fumdgkbiaq'),(126,'enlupazlxa','ibcjfgehpx'),(127,'otnbwiporw','dhsyzfambe'),(128,'zvkzdanoid','fistcmvtqe'),(129,'zoryxhpomz','bsxvitxpct'),(130,'yrivthbsmr','mdsvppmkde'),(131,'katxkouieg','mvvrshmvyv'),(132,'vkeifpfcpn','fjcqrludiw'),(133,'wauzhhwsur','cypwvjskbg'),(134,'elmcrhogrn','bmfzdbglpw'),(135,'gfptclovrf','yflfhaixsh'),(136,'zjufdccczn','aogsxikvtw'),(137,'hrsiqzwhin','szdllpbgzg'),(138,'chihdlzybk','srzlhnplnf'),(139,'porhlyvuic','lssjvetgkf'),(140,'fvvgodvqpb','ipauabqwiz'),(141,'tcmqyvsvfq','rohsluvhhc'),(142,'pumzvupcfc','kbvtorplxu'),(143,'akaikjztkr','dkjodykxzn'),(144,'sxmwfjrinp','cviyzgmywk'),(145,'poyzfhzreu','lpfziyovdo'),(146,'htmrbhgyza','ygdjmsichn'),(147,'ueaojuanei','hjfhmeelmx'),(148,'okldycnayu','pdgvpuivsp'),(149,'rrqkzknoex','odcnmocsdr'),(150,'denzammxbh','ufzuvflrvy'),(151,'eyzdyrpnbs','kwewmavgde'),(152,'ahvawnnyhw','prijtmukfe'),(153,'glbkdmpkex','zxgenyqhca'),(154,'hvzkbwzcis','qkaocrgfhs'),(155,'lpzqhikees','dglcreickp'),(156,'pjgqkgpizx','whilmtdndm'),(157,'qejmhcfpwv','emcldkyqch'),(158,'ezoeelmevw','srramjqqua'),(159,'wxuuorfrnz','bvodziwwwn'),(160,'pkvtalydus','ztrkxavfov'),(161,'cefrsvdlfo','zsbeqhzzxw'),(162,'ispdyfedlj','czfohiqccf'),(163,'dhkbgcjhdu','flgsusrece'),(164,'hqkqvexcvj','pwdwbsosss'),(165,'fpukqptxcp','wlnbtqvixm'),(166,'gfsiuzqvhw','esmomoolgi'),(167,'sbeubxlycz','bgnqaiynyw'),(168,'zkmslegkzg','euvmjjuere'),(169,'uimzwpzkmz','xskanoqjhw'),(170,'whkgirejpu','qbxlvyopbx'),(171,'gibzbnabbl','igjaxyxfzt'),(172,'izysowbepf','ggwnxgajau'),(173,'hjnnltimex','dicyhfjthe'),(174,'nafdzcdyuw','xladdesimc'),(175,'aobafmpdts','xgtmlwdqne'),(176,'pmizacyiml','jehnoawqkr'),(177,'rdxesyzals','rsidaphfep'),(178,'ywczsuscmm','awaswxpfvu'),(179,'lvolcxrckb','vqewltwrxy'),(180,'nawhrtowrj','qgjlulcztm'),(181,'lorbfldjph','keapiozgay'),(182,'jcwszfwbjp','yaysfhsfig'),(183,'eeufnlnobz','tptlwcghqy'),(184,'bjgafhnlig','qtithwzeqa'),(185,'fqulwkoifu','jegzwlplbn'),(186,'xusnkdiaeo','ahfmmgfjdc'),(187,'jkdmvzujpt','ywnhrdqmuk'),(188,'pshznkjuur','pbovosylyv'),(189,'rprwfrkqvs','lpdngugoou'),(190,'orjvxlygmv','xehmhvzkgh'),(191,'vlvekvpsnd','rppmtaldwi'),(192,'iixhypmhki','tqrqxylanc'),(193,'dkntajjbvm','iauciqehnq'),(194,'eybdofxpbp','speayitlke'),(195,'dpdkbxdyit','qrmhvqagul'),(196,'kgyhxbaizo','yneywzlleq'),(197,'xrkbghmlge','ozdxxlmhbq'),(198,'pradseiwod','ywzrybifzx'),(199,'denybpqmgo','atixrpfuyr'),(200,'joxaqjpimb','lctnonkyyv'),(202,'fefe','ddddd');
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20 22:20:54
