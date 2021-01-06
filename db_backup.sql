-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: nmb0
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` varchar(10) DEFAULT NULL,
  `poster_ip` varchar(50) DEFAULT NULL,
  `head` tinyint(1) DEFAULT NULL,
  `next` int(11) DEFAULT NULL,
  `post_time` datetime DEFAULT NULL,
  `title` text,
  `content` text,
  `section` varchar(40) DEFAULT NULL,
  `avatar` int(11) DEFAULT NULL,
  `withpic` tinyint(1) DEFAULT NULL,
  `pic_route` varchar(100) DEFAULT NULL,
  `ider` varchar(256) DEFAULT NULL,
  `replies` int(11) DEFAULT NULL,
  `topped` tinyint(1) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `no_show` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'1802725D','219.217.159.247',1,2,'2019-06-05 08:34:28','反馈集中处','待增加的功能，已有的bug，UI更改...','反馈',13,1,'static/uploads/1.jpg','c0050fdc1abf68f0722f4cde30e3d50b',11,1,'2019-06-07 23:58:38',0),(2,'1802725D','219.217.159.247',0,0,'2019-06-05 08:47:59','82e8ee7aa0839e0ab6c2ee777fdb40e5','增加https;\r\n优化编码器使用体验；\r\n回复时可引用其他postID；\r\n优化图片存储（缩略图+查看大图）；\r\n','反馈',13,0,'null','8026dc37239b02dd30454fbcebd52433',0,0,'2019-06-05 08:47:59',0),(4,'5D47F449','223.104.237.153',1,36,'2019-06-05 19:35:21','姑且试一下','良い世、来いよ！','综合',6,0,'null','c9b62f1d70480f3313ab9c2b836e79f7',2,0,'2019-06-08 14:09:11',0),(6,'5D47F449','223.104.237.153',0,10,'2019-06-05 19:44:38','d49afe2bbc2db9eff16e85c078ab87d5','友善爱国平等爱国诚信自由敬业友善敬业友善爱国公正敬业诚信和谐诚信富强平等诚信自由平等诚信富强公正爱国文明诚信自由公正诚信富强友善法治诚信富强自由诚信自由诚信平等友善平等诚信文明爱国友善公正友善爱国公正爱国爱国敬业民主友善爱国平等友善自由诚信自由爱国友善公正友善爱国平等爱国平等友善自由爱国友善爱国公正敬业爱国爱国友善爱国友善爱国法治敬业敬业友善平等友善法治诚信自由自由诚信民主友善自由爱国公正友善爱国平等敬业民主诚信富强文明文明爱国友善爱国平等爱国平等友善平等公正诚信自由平等友善自由诚信自由敬业友善爱国友善爱国平等友善平等敬业友善平等公正友善爱国公正友善平等文明友善自由民主友善爱国公正敬业友善公正爱国敬业诚信自由公正爱国法治爱国文明文明敬业','反馈',6,0,'null','687cc81139de020ad72bab2f438add38',0,0,'2019-06-05 19:44:38',0),(8,'1802725D','219.217.157.206',1,0,'2019-06-05 19:59:42','关于版内隐私问题：','考虑到匿名版的特点，希望各位不要在发贴时提到有关自己或他人的隐私信息，包括但不限于姓名、学号、照片等等。','综合',13,0,'null','946a77352647afd092b898cc83a9614b',1,1,'2019-06-05 20:00:58',0),(10,'1802725D','219.217.157.206',0,0,'2019-06-05 20:04:51','7b9494fe0963a9ee6dec23aefeb2a59e','可能存在的问题：数据量大了之后访问奇慢','反馈',13,0,'null','c5274b9da324bf119d106f7bffb39c63',0,0,'2019-06-05 20:04:51',0),(11,'57753445','223.104.237.153',1,0,'2019-06-05 20:21:17','福利 大量资源网盘链接','诚信自由敬业敬业和谐诚信民主诚信自由友善爱国公正爱国友善爱国友善自由平等和谐友善自由公正爱国法治自由法治自由法治富强法治和谐和谐诚信富强文明诚信平等文明友善敬业法治富强公正民主公正诚信自由文明诚信自由公正文明公正民主公正敬业公正自由法治平等文明诚信自由公正和谐公正友善敬业公正诚信和谐文明友善敬业法治和谐文明友善敬业和谐民主自由友善法治平等敬业平等文明和谐爱国平等和谐公正公正平等自由公正友善爱国和谐民主平等民主平等富强平等友善自由平等公正法治民主自由爱国平等诚信富强自由和谐自由自由法治公正公正公正自由法治公正法治诚信文明文明诚信富强富强友善爱国公正爱国友善敬业敬业富强友善爱国平等爱国友善敬业敬业公正诚信自由法治友善自由富强爱国民主和谐友善自由和谐法治法治自由和谐敬业和谐爱国','综合',6,0,'null','f35c39c4958324dad277e6641227c107',0,0,'2019-06-05 20:21:17',0),(12,'1802725D','219.217.158.187',1,13,'2019-06-06 13:31:24','没品图警告','图在这','综合',13,0,'null','a9acf70c5a54b4b823a3ed3e0cc1c426',5,0,'2019-06-08 13:53:35',0),(13,'1802725D','219.217.158.187',0,17,'2019-06-06 13:32:00','d6c33cf1179b4029062f0aaa3d2dde36',' 233','综合',13,1,'static/uploads/13.jpg','a285f6657a2e8243a3ede4cc78215b8b',0,0,'2019-06-06 13:32:00',0),(14,'1802725D','219.217.158.231',1,16,'2019-06-07 10:03:41','Do not walk gentle into that good night','Do not go gentle into that good night\r\nDylan Thomas - 1914-1953\r\n\r\n\r\nDo not go gentle into that good night,\r\nOld age should burn and rave at close of day;\r\nRage, rage against the dying of the light.\r\n\r\nThough wise men at their end know dark is right,\r\nBecause their words had forked no lightning they\r\nDo not go gentle into that good night.\r\n\r\nGood men, the last wave by, crying how bright\r\nTheir frail deeds might have danced in a green bay,\r\nRage, rage against the dying of the light.\r\n\r\nWild men who caught and sang the sun in flight,\r\nAnd learn, too late, they grieved it on its way,\r\nDo not go gentle into that good night.\r\n\r\nGrave men, near death, who see with blinding sight\r\nBlind eyes could blaze like meteors and be gay,\r\nRage, rage against the dying of the light.\r\n\r\nAnd you, my father, there on the sad height,\r\nCurse, bless, me now with your fierce tears, I pray.\r\nDo not go gentle into that good night.\r\nRage, rage against the dying of the light.','综合',13,0,'null','ef8482319c54513ad4e74cc5c6574bfc',2,0,'2019-06-10 17:10:17',0),(16,'57753445','223.104.177.71',0,37,'2019-06-07 14:41:03','2822a6e16dcead6e7f1621ce95a3cd35','A Dream Within A Dream \r\nEdgar Allan Poe\r\nTake this kiss upon the brow!\r\nAnd, in parting from you now,\r\nThus much let me avow--\r\nYou are not wrong, who deem\r\nThat my days have been a dream;\r\nYet if hope has flown away\r\nIn a night, or in a day,\r\nIn a vision, or in none,\r\nIs it therefore the less gone?\r\nAll that we see or seem\r\nIs but a dream within a dream.\r\n\r\nI stand amid the roar\r\nOf a surf-tormented shore,\r\nAnd I hold within my hand\r\nGrains of the golden sand--\r\nHow few! yet how they creep\r\nThrough my fingers to the deep,\r\nWhile I weep--while I weep!\r\nO God! can I not grasp\r\nThem with a tighter clasp?\r\nO God! can I not save\r\nOne from the pitiless wave?\r\nIs all that we see or seem\r\nBut a dream within a dream?','综合',6,0,'null','139a8da416d4cfecaf257ba274c25c05',0,0,'2019-06-07 14:41:03',0),(17,'57753445','223.104.177.71',0,22,'2019-06-07 14:47:28','de528ca9b99de1aef7aa6ac035c54a6a','political incorrection','综合',6,1,'static/uploads/17.jpg','b9f0d91e541abe7cd1223fe42d3efd81',0,0,'2019-06-07 14:47:28',0),(19,'1802725D','111.117.123.134',1,0,'2019-06-07 18:18:51','no show test2','this is no show','综合',13,0,'null','13f2c09552635a4247aee97091a8ba13',0,0,'2019-06-07 18:18:51',1),(22,'1802725D','111.117.123.134',0,33,'2019-06-07 19:12:52','aa6e6df590fcd8958b08ea16654abca9','>>>13|||WE CITE键盘C有点失灵 草[图片]','综合',13,1,'static/uploads/22.gif','001af495e567789c4cd9e4328f50b924',0,0,'2019-06-07 19:12:52',0),(33,'1802725D','223.104.176.227',0,0,'2019-06-08 13:53:35','0a82502a8c61c4a14347770e34d48d3c','>>>22|||','综合',13,1,'static/uploads/33.jpg','eb496ce6e053abab316d39d1c6e23875',0,0,'2019-06-08 13:53:35',0),(35,'1802725D','223.104.176.227',1,38,'2019-06-08 14:03:18','About this site, and more','\"Too shame\"','其他',13,0,'null','06e0527274606e1cb4a6b2765ea83eb2',1,0,'2019-06-15 13:18:37',1),(36,'1802725D','223.104.176.227',0,0,'2019-06-08 14:09:11','01bfd6fd221c2c3a7a41bc5ecc84759c','<a href=\"/viewpost/4\">>4|</a>more testing','综合',13,0,'null','5ed6cb0c40d332aa0bc63543fccf3dae',0,0,'2019-06-08 14:09:11',0),(37,'1802725D','111.117.123.134',0,0,'2019-06-10 17:10:17','3055d00ad5b815e969a980f04dbe9a25','“But the Machine asked me to tell you something before we part. You once told John, the whole point of Pandora’s Box is that once you’ve opened it, you can’t close it again. She wanted me to remind you how the story ends. When everything is over and the worst has happened, there’s still one thing left in Pandora’s Box: hope.”','综合',13,0,'null','10c785037c8d0786866103f6af1bba25',0,0,'2019-06-10 17:10:17',0),(38,'1802725D','223.104.176.174',0,0,'2019-06-15 13:18:37','4d64bb62fdeb25e5cc9efdb4459f00b3','是谁 在等待来自TAO的ip访问...','其他',13,0,'null','c50bcb84d0de053311df4a88905677c2',0,0,'2019-06-15 13:18:37',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `active_time` datetime DEFAULT NULL,
  `active_ip` varchar(50) DEFAULT NULL,
  `password_hash` varchar(256) DEFAULT NULL,
  `password_cmp` varchar(50) DEFAULT NULL,
  `kookies` varchar(10) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `avatar` int(11) DEFAULT NULL,
  `oldkookies` text,
  `fav_color` varchar(10) DEFAULT NULL,
  `cited` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','202cb962ac59075b964b07152d234b70','2889205153@qq.com','2019-06-05 08:31:13','2019-06-05 08:31:13','111.117.123.134','4bb9f32d1e2010625a6628e95d93d5fb','4bb9f32d1e2010625a6628e95d93d5fb','1802725D',1,1,13,'#1802725D-','000000',''),(2,'253999131@qq.com','ee7f4666319690c4b61b60ac56f72e0b','2539999131@qq.com','2019-06-05 19:29:28','2019-06-05 19:29:28','180.154.124.119','041571d26c449e244f2d799a9f33672f','041571d26c449e244f2d799a9f33672f','00000000',0,0,0,'#','000000',''),(3,'吴玄阁','c4d038b4bed09fdb1471ef51ec3a32cd','wangdian233@foxmail.com','2019-06-05 19:30:32','2019-06-05 19:30:32','219.217.159.53','6f37d6e99fd8fd704a44884212d0f705','6f37d6e99fd8fd704a44884212d0f705','57753445',0,1,6,'#5D47F449-4C2E94F5-57753445-','000000',''),(5,'ruerue','2d7473f980fc74398d97b3dbcff8a1ad','1019154296@qq.com','2019-06-05 22:34:54','2019-06-05 22:34:54','219.217.157.182','70398b34ab6965e2f80f97a34f02eb53','70398b34ab6965e2f80f97a34f02eb53','14A77994',0,1,15,'#0CC1576C-9C722E09-2379D7E0-14A77994-','000000',''),(6,'A1B2C3D4','134f119d43a6682eb99ddbe23bbdef97','hjpf123@163.com','2019-06-06 11:29:33','2019-06-06 11:29:33','219.217.159.23','854fa796a7509602e07e6c72de76b4bc','854fa796a7509602e07e6c72de76b4bc','6EF4A8D1',0,1,0,'#FB890AC7-6EF4A8D1-','000000','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 23:36:10
