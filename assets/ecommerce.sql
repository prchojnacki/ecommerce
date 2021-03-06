-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: ECommerce
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Chris','chrisclark1979@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Rod','roderickwoodman@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Paula','chojnacki@gmail.com','5f4dcc3b5aa765d61d8327deb882cf99','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billings`
--

DROP TABLE IF EXISTS `billings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shipping_first` varchar(45) NOT NULL,
  `shipping_last` varchar(45) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(45) NOT NULL,
  `shipping_state` varchar(45) NOT NULL,
  `shipping_zip` int(11) NOT NULL,
  `billing_first` varchar(45) NOT NULL,
  `billing_last` varchar(45) NOT NULL,
  `billing_address` varchar(45) NOT NULL,
  `billing_city` varchar(45) NOT NULL,
  `billing_state` varchar(45) NOT NULL,
  `billing_zip` int(11) NOT NULL,
  `card` int(11) NOT NULL,
  `security` int(11) NOT NULL,
  `expiration_month` int(11) NOT NULL,
  `expiration_year` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billings`
--

LOCK TABLES `billings` WRITE;
/*!40000 ALTER TABLE `billings` DISABLE KEYS */;
INSERT INTO `billings` VALUES (1,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:37:05','2015-05-05 23:37:05'),(2,0,'michael','choi','209 Zanker Road','San Jose','California',94123,'michael','choi','209 Zanker Road','San Jose','CA',94123,1111,123,1,1223,'2015-05-05 23:44:23','2015-05-05 23:44:23'),(3,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:46:07','2015-05-05 23:46:07'),(4,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:46:57','2015-05-05 23:46:57'),(5,0,'Kobe ','Bryant','123 Basketball Lane','Atlantis','HI',12345,'Kobe ','Bryant','123 Basketball Lane','Atlantis','HI',12345,1111,321,12,1234,'2015-05-05 23:48:47','2015-05-05 23:48:47'),(6,0,'Barack ','Obama','1600 Pennsylvania Avenue','Washington','DC',20500,'Barack ','Obama','1600 Pennsylvania Avenue','Washington','DC',20500,1234,321,5,2104,'2015-05-05 23:51:54','2015-05-05 23:51:54'),(7,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:52:59','2015-05-05 23:52:59'),(8,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:54:52','2015-05-05 23:54:52'),(9,0,'Mitt','Romney','123 Rich St','Salt Lake City','UT',32323,'Mitt ','Romney','123 Rich St','Salt Lake City','UT',32323,9999,321,12,1234,'2015-05-05 23:57:04','2015-05-05 23:57:04'),(10,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:57:57','2015-05-05 23:57:57'),(11,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:58:17','2015-05-05 23:58:17'),(12,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:58:26','2015-05-05 23:58:26'),(13,0,'christopher','clark','621 66th Street','Oakland','California',94609,'christopher','clark','621 66th Street','Oakland','California',94609,1234,123,12,1234,'2015-05-05 23:58:37','2015-05-05 23:58:37');
/*!40000 ALTER TABLE `billings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Horseshoes','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Hand Grenades','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Weapons','2015-05-06 21:39:38','2015-05-06 21:39:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,3,1,1),(2,3,3,1),(3,3,5,1),(4,3,2,2),(5,3,1,2),(6,1,4,2),(7,4,5,2),(8,1,6,2),(9,2,2,3),(10,1,4,3),(11,1,5,3),(12,10,3,4),(13,4,2,5),(14,4,6,6),(15,2,4,7),(16,1,4,8),(17,1,6,8),(18,1,2,8),(19,1,3,9),(20,3,4,10),(21,3,4,11),(22,3,4,12),(23,3,4,13);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,0,338.70,'Order in process','2015-05-05 23:37:05','2015-05-05 23:37:05'),(2,2,0,889.40,'Order in process','2015-05-05 23:44:23','2015-05-05 23:44:23'),(3,3,0,384.80,'Order in process','2015-05-05 23:46:07','2015-05-05 23:46:07'),(4,4,0,30.00,'Order in process','2015-05-05 23:46:57','2015-05-05 23:46:57'),(5,5,0,339.80,'Order in process','2015-05-05 23:48:47','2015-05-05 23:48:47'),(6,6,0,359.80,'Order in process','2015-05-05 23:51:54','2015-05-05 23:51:54'),(7,7,0,249.90,'Order in process','2015-05-05 23:52:59','2015-05-05 23:52:59'),(8,8,0,299.85,'Order in process','2015-05-05 23:54:52','2015-05-05 23:54:52'),(9,9,0,3.00,'Order in process','2015-05-05 23:57:04','2015-05-05 23:57:04'),(10,10,0,374.85,'Order in process','2015-05-05 23:57:57','2015-05-05 23:57:57'),(11,11,0,374.85,'Order in process','2015-05-05 23:58:17','2015-05-05 23:58:17'),(12,12,0,374.85,'Order in process','2015-05-05 23:58:26','2015-05-05 23:58:26'),(13,13,0,374.85,'Order in process','2015-05-05 23:58:37','2015-05-05 23:58:37');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `main` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'https://s3-us-west-1.amazonaws.com/horseshoes/not-available.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(2,2,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-m84-stun-grenade.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(3,3,'https://s3-us-west-1.amazonaws.com/horseshoes/not-available.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(4,4,'https://s3-us-west-1.amazonaws.com/horseshoes/not-available.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(5,5,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-franklin-sports-expert-pitching-horseshoe-set.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(6,6,'https://s3-us-west-1.amazonaws.com/horseshoes/not-available.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(7,7,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-razer-front-horseshoe.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(8,8,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-diamond-pony-horseshoe.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(9,9,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-24-inch-styrofoam.png','2015-05-06 10:20:00','2015-05-06 10:20:00','main'),(10,10,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-m67-frag-grenade.png','2015-05-06 12:51:00','2015-05-06 12:51:00','main'),(11,11,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-m18-smoke-grenade.png','2015-05-06 12:51:00','2015-05-06 12:51:00','main'),(12,12,'https://s3-us-west-1.amazonaws.com/horseshoes/fs-mk2-hand-grenade.png','2015-05-06 12:51:00','2015-05-06 12:51:00','main'),(13,10,'https://s3-us-west-1.amazonaws.com/horseshoes/M67_Fragmentation_Grenade.png','2015-05-06 19:01:32','2015-05-06 19:01:32','no');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,8,1),(9,9,1),(10,10,2),(11,11,2),(12,12,2),(13,10,3),(14,12,3);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Acme Horseshoe, set of four','Four entry level horseshoes, for your horse shoeing or horseshoeing pleasure',19.95,222,6,'0000-00-00 00:00:00','2015-05-05 23:44:23'),(2,'M84 Stun Grenade','Effective non-lethal flashbang. Stuns and disorients your enemies',84.95,165,10,'0000-00-00 00:00:00','2015-05-05 23:54:52'),(3,'Acme Horseshoe, used','One horseshoe, lightly used',3.00,194,14,'0000-00-00 00:00:00','2015-05-05 23:57:04'),(4,'RPG-6','Soviet-era anti tank grenade.  If you need to destroy a tank this should serve nicely.  Please note this is NOT \"rocket-propelled\"; RPG is a soviet designation.  ',124.95,88,17,'0000-00-00 00:00:00','2015-05-05 23:57:57'),(5,'Franklin Sports Expert Pitching Horseshoe Set','Franklin Sport Expert Horseshoe Set is an ideal set for the most skilled horseshoe players, it is Sanctioned by the National Horseshoe Pitchers Association. This set features forged carbon steel horse',89.95,160,8,'0000-00-00 00:00:00','2015-05-05 23:46:07'),(6,'M-18 Smoke Grenade','Effective at confusing enemies and ideal for facilitating stealth getaways, the M-18 releases a cloud of thick red smoke.',89.95,239,6,'0000-00-00 00:00:00','2015-05-05 23:54:52'),(7,'Razer Front Horseshoes, set of ten','Razer Front Horseshoes are made of unique flexible tool steel that follows the movements of the hoof capsule, yet strong enough to hold its shape once it is fitted to the hoof. The shoe has a thin, narrow outer rim that easily sinks into the ground surface. This gives the right amount of contact of the frog and sole to the ground, simulating being barefoot.',65.95,115,2,'0000-00-00 00:00:00','2015-05-06 20:39:32'),(8,'Diamond Pony Horseshoe','Forged from special steel to give long wear - Six properly spaced nail holes fit the average pony hoof.',2.69,589,25,'0000-00-00 00:00:00','2015-05-06 10:08:00'),(9,'24\" Styrofoam Horseshoe','Great for making all kinds of pieces.Works amazing with silk florals.',24.99,34,2,'0000-00-00 00:00:00','2015-05-06 10:16:00'),(10,'M67 Fragmentation Grenade','The M67 grenade is a fragmentation hand grenade used by the United States military. The M67 is a further development of the M33 grenade. It has an effective casualty radius of about 15 meters (49 ft).',135.99,17,3,'2015-05-06 12:16:00','2015-05-06 21:39:38'),(11,'M18 Smoke Grenades, set of four','The M18 Colored Smoke Grenade is a 19-ounce US Army grenade used as a ground-to-ground or ground-to-air signaling device, a target or landing zone marking device, or a screening device for unit maneuvering. The M18 has a \"mouse trap\" type igniting fuze with a 1.2 to 2.0 second delay. Ignition ignites the filler and expels it from the grenade body. The top of the grenade is painted red, green, yellow, or violet to indicate the smoke color and the color marked on the side. \n\nWARNING: With both the white AN-M8 and M18, there is a danger of starting a fire if it is used in a dry area. Expended smoke grenade canisters remain hot for some time after burning out and should not be picked up bare-handed. New smoke mixtures are under development that are less harmful if the smoke is inhaled for prolong periods. In enclosed spaces the smoke displaces oxygen and can cause respiratory or oxygen deprivation.',349.95,10,1,'2015-05-06 12:16:00','2015-05-06 12:16:00'),(12,'MK 2 Grenade','The Mk 2 defensive hand grenade (sometimes written Mk II) is a fragmentation hand grenade used by the U.S. armed forces during World War II and in later conflicts including the Vietnam War. It was manufactured with grooves in the cast iron for a better grip when throwing. This gave it the appearance of a pineapple fruit, giving it the common nickname of the \"iron pineapple\". Made with a M6 detonating fuse and a Low Explosive (EC powder) filler.',109.50,24,8,'2015-05-06 12:16:00','2015-05-06 21:48:13');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Micheal','Choi','MChoi@dojo.com','password','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-06 21:51:58
