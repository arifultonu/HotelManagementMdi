-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hotel_management
--

CREATE DATABASE IF NOT EXISTS hotel_management;
USE hotel_management;

--
-- Definition of table `bill_info`
--

DROP TABLE IF EXISTS `bill_info`;
CREATE TABLE `bill_info` (
  `customer_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `room_bill` double NOT NULL,
  `extra_bed` double NOT NULL,
  `food_bill` double NOT NULL,
  `service_bill` double NOT NULL,
  `other_bill` double NOT NULL,
  `total_bill` double NOT NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_info`
--

/*!40000 ALTER TABLE `bill_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_info` ENABLE KEYS */;


--
-- Definition of table `charge_info`
--

DROP TABLE IF EXISTS `charge_info`;
CREATE TABLE `charge_info` (
  `first_name` varchar(45) default NULL,
  `last_name` varchar(45) default NULL,
  `room_no` int(11) default NULL,
  `food_bill` double default NULL,
  `service_bill` double default NULL,
  `other_bill` double default NULL,
  `date` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charge_info`
--

/*!40000 ALTER TABLE `charge_info` DISABLE KEYS */;
INSERT INTO `charge_info` (`first_name`,`last_name`,`room_no`,`food_bill`,`service_bill`,`other_bill`,`date`) VALUES 
 ('Ariful','Islam',101,400,0,0,'2013-05-21'),
 ('Abdul','Bari',102,400,0,0,'2013-05-21'),
 ('Abdul','Bari',102,200,0,0,'2013-05-22'),
 ('Abdul','Bari',102,0,300,0,'2013-05-22'),
 ('Abdul','Bari',102,0,0,400,'2013-05-22'),
 ('fdsf','rret',106,400,0,0,'2013-05-22'),
 ('fdsf','rret',106,0,500,0,'2013-05-22'),
 ('fdsf','rret',106,0,0,800,'2013-05-22'),
 ('Mashukur','Rahman',106,300,0,0,'2013-05-25'),
 ('Mashukur','Rahman',106,0,300,0,'2013-05-25'),
 ('Mashukur','Rahman',106,0,0,600,'2013-05-25'),
 ('fdgd','dfgb',101,433,0,0,'2013-05-28'),
 ('fdgd','dfgb',101,0,434,0,'2013-05-28'),
 ('fdgd','dfgb',101,434,0,0,'2013-05-28'),
 ('sfsdgd','fgdh',102,300,0,0,'2013-05-30'),
 ('sfsdgd','fgdh',102,300,0,0,'2013-05-30'),
 ('sfsdgd','fgdh',102,0,500,0,'2013-05-30');
/*!40000 ALTER TABLE `charge_info` ENABLE KEYS */;


--
-- Definition of table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
CREATE TABLE `customer_info` (
  `customer_id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(65) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `email_adr` varchar(45) NOT NULL,
  `id_passport` varchar(45) NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `arrival_date` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `room_type` varchar(45) NOT NULL,
  `total_food_bill` double NOT NULL,
  `total_service_bill` double NOT NULL,
  `total_other_bill` double NOT NULL,
  `total_bill_paid` double NOT NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` (`customer_id`,`first_name`,`last_name`,`address`,`phone_no`,`email_adr`,`id_passport`,`room_no`,`arrival_date`,`gender`,`room_type`,`total_food_bill`,`total_service_bill`,`total_other_bill`,`total_bill_paid`) VALUES 
 (12,'xdfgvdcxb','cvbxc','cdvbcvb','xcvbc','cvbcxv','cxvx','107','2013-05-30','Male','Double',0,0,0,0),
 (13,'dfsf','sdfds','sdfds','dfgdg','sdfsd','','101','2013-05-31','Male','Single',0,0,0,0);
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;


--
-- Definition of table `reservation_info`
--

DROP TABLE IF EXISTS `reservation_info`;
CREATE TABLE `reservation_info` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `reservation_date` varchar(45) NOT NULL,
  `room_no` int(11) NOT NULL,
  `room_type` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `id_passport` varchar(45) NOT NULL,
  `email_adr` varchar(45) NOT NULL,
  PRIMARY KEY  (`email_adr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation_info`
--

/*!40000 ALTER TABLE `reservation_info` DISABLE KEYS */;
INSERT INTO `reservation_info` (`first_name`,`last_name`,`gender`,`address`,`reservation_date`,`room_no`,`room_type`,`phone_no`,`id_passport`,`email_adr`) VALUES 
 ('fdsg','dfgdf','Male','wertetg','2013-06-20',105,'Single','dsfgdf','fdfg','dsfgd');
/*!40000 ALTER TABLE `reservation_info` ENABLE KEYS */;


--
-- Definition of table `room_info`
--

DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `room_no` int(10) unsigned NOT NULL auto_increment,
  `room_type` varchar(45) NOT NULL,
  `rate_per_night` double NOT NULL,
  `category` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_info`
--

/*!40000 ALTER TABLE `room_info` DISABLE KEYS */;
INSERT INTO `room_info` (`room_no`,`room_type`,`rate_per_night`,`category`,`status`) VALUES 
 (101,'Single',200.5,'AC','Occupied'),
 (102,'Single',200,'AC','Vacant'),
 (103,'Single',200,'AC','Vacant'),
 (104,'Single',200,'AC','Vacant'),
 (105,'Single',200,'AC','Occupied'),
 (106,'Double',400,'AC','Vacant'),
 (107,'Double',400,'AC','Occupied'),
 (108,'Double',400,'AC','Vacant'),
 (109,'Double',400,'AC','Vacant'),
 (110,'Double',400,'AC','Vacant'),
 (111,'Triple',500,'AC','Vacant'),
 (112,'Triple',500,'AC','Vacant'),
 (113,'Triple',500,'AC','Vacant'),
 (114,'Triple',500,'AC','Vacant'),
 (115,'Triple',500,'AC','Vacant'),
 (116,'Triple',500,'AC','Vacant');
/*!40000 ALTER TABLE `room_info` ENABLE KEYS */;


--
-- Definition of table `total`
--

DROP TABLE IF EXISTS `total`;
CREATE TABLE `total` (
  `customer_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `room_no` decimal(10,0) NOT NULL,
  `room_type` varchar(45) NOT NULL,
  `total_bill` double NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total`
--

/*!40000 ALTER TABLE `total` DISABLE KEYS */;
/*!40000 ALTER TABLE `total` ENABLE KEYS */;


--
-- Definition of table `total_info`
--

DROP TABLE IF EXISTS `total_info`;
CREATE TABLE `total_info` (
  `customer_id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) default NULL,
  `last_name` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `phone_no` varchar(45) default NULL,
  `email_adr` varchar(45) default NULL,
  `room_no` varchar(45) default NULL,
  `room_type` varchar(45) default NULL,
  `arrival_date` date default NULL,
  `departure_date` date default NULL,
  `no_of_days` varchar(45) default NULL,
  `total_room_bill` double default NULL,
  `total_food_bill` double default NULL,
  `total_service_bill` double default NULL,
  `total_other_bill` double default NULL,
  `total_bill_paid` double default NULL,
  `gender` varchar(45) default NULL,
  PRIMARY KEY  (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_info`
--

/*!40000 ALTER TABLE `total_info` DISABLE KEYS */;
INSERT INTO `total_info` (`customer_id`,`first_name`,`last_name`,`address`,`phone_no`,`email_adr`,`room_no`,`room_type`,`arrival_date`,`departure_date`,`no_of_days`,`total_room_bill`,`total_food_bill`,`total_service_bill`,`total_other_bill`,`total_bill_paid`,`gender`) VALUES 
 (1,'fdsf','rret','fdg','dfgdf','dfgbfd','106','Double','2013-05-21','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (2,'Enamul','Haque','Dhaka','453564','dfgfdhrtj','101','Single','2013-05-25','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (3,'Ariful','Tonu','Dhaka','4356','rtgtrdh','102','Single','2013-05-25','2013-05-30','0',0,600,500,0,1100,'Male'),
 (4,'Firoz','Kabir','Dhalatr','345646','34645y67','103','Single','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (5,'Abdul','Bari','Dhaka','565466','gdfgdf','104','Single','2013-05-25','2013-05-30','0',0,0,0,0,0,'Male'),
 (6,'Mashukur','Rahman','Dhaka','3435435','3453gtfdsg','106','Double','2013-05-25','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (7,'Atik','Hasan','Dhaka','3432534','erfegrt','105','Single','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (8,'Mashuk','Rahim','Dhaka','45646','dfgh','106','Double','2013-05-25','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (9,'Rahim','Mia','Dhaka','564567','fgrh','107','Double','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (10,'Galib','hasan','Dhaka','4546','ertgrhfg','108','Double','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (11,'Ashraf','islam','Dhaka','3465','sdfgfdsh','109','Double','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (12,'HHHHH','retert','Dgdfh','r5t64567','36ggh','110','Double','2013-05-25','2013-05-28','3',1200,0,0,0,1200,'Male'),
 (13,'bbbb','rtgrgh','wetergy','sdfsdg','etyt','111','Triple','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (14,'fgdfhgf','rtgry','fgdfg','wert3e6','345t6','112','Triple','2013-05-25','2013-05-28','0',0,0,0,0,0,'Male'),
 (15,'Adfgdh','yuhgjhg','ddddddd','5647','fgtfhgf','113','Triple','2013-05-25','2013-05-28','3',1500,0,0,0,1500,'Male'),
 (16,'kkkkkk','iiiii','uyfdj','75646','kjhbjuyf','114','Triple','2013-05-25','2013-05-28','3',1500,0,0,0,1500,'Male'),
 (17,'GGGG','yrtuy','dhfgjhfg','456757','fghfgjh','115','Triple','2013-05-25','2013-05-28','3',1500,0,0,0,1500,'Male'),
 (18,'rwetert','h','ertgeryg','sge2345','ertgbh','116','Triple','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (19,'Tuhin','ahmed','sdfgdsg','345646','esgfrh','101','Single','2013-05-28','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (20,'etrfesg','dfhbfghn','wtgerth','dsfgdf','dfgbd','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (21,'sadfgsdg','sdgvdfg','sdfsdg','sdvdfg','szdgfvd','106','Double','2013-05-28','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (22,'tgdsfg','dfgdsf','gsxvzf','sdgv','xcvxz','101','Single','2013-05-28','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (23,'sdgvfds','fgvdfgbx','xsgvdfxgvdf','sdfgvdxfv','dsfgvdg','108','Double','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (24,'sdfgvxcfvsdfgv','zxcvdxf','sdfgvdgbhr','dsfgdfgh','dfgdfbh','112','Triple','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (25,'adsfcsdfv','sdfvsdgfv','sdvgfdgvb','sdgvdxfgv','sdgfvds','107','Double','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (26,'hfthgf','fdhgfhgf','hfhgfhgf','cfgjf','hfhgf','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (27,'gfvghf','hcgcf','vcbncg','ncvgnfdg','gfcb','103','Single','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (28,'ghf','fhgfgjh','hgcv','ufuktguky','kgfh','105','Single','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (29,'jgfyhf','ghfcghg','nbcnfhg','hgcngf','jhufg','101','Single','2013-05-28','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (30,'ghfcd','ngcd','cnbcfn','hgfc','ncnbv','109','Double','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (31,'mmfgv','hmgcgfch','hgcfgchn','hgfhjfg','ghfcgh','103','Single','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (32,'fdgd','dfgb','dfgbfhn','dbcv','dfxgdt','101','Single','2013-05-28','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (33,'fdgvb','cxvbcxvb','dftg','ertgf','dfgdf','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (34,'fxgvfb','xcv','sdfdg','szdfgdg','dfgbfvb','104','Single','2013-05-28','2013-05-30','0',0,0,0,0,0,'Male'),
 (35,'sdfsdf','sdfd','sdgfvdg','sfgvdfg','rtert','106','Double','2013-05-28','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (36,'sdf','sdfvsd','sdfvsd','sdfsd','fcgvdfb','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (37,'sdfvszdfv','sdfvczx','vfcx','xzcvc','xcvxc','107','Double','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (38,'fgdgdf','gdfgdf','dfgdsfg','dfgfh','fghfgh','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (39,'fgdf','gsdfgds','sdfgdf','sdfgfd','dfgd','108','Double','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (40,'asfcsdf','sdfvsd','sdfvszv','sdzfcvxz','sfggdhnf','101','Single','2013-05-28','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (41,'sdfgvzsdv','xzcvzxcvb','sdgvdbnfg','edryth','sdhfgnjh','102','Single','2013-05-28','2013-05-30','0',0,600,500,0,1100,'Male'),
 (42,'sgddfghfd','dsfhf','dghbfgnh','eryghdfhjfg','fgjfghmkf','103','Single','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (43,'sdfhfgjhn','fgn','fvcgnghkm','zdsfgvxdfcbh','thyjk','104','Single','2013-05-28','2013-05-30','0',0,0,0,0,0,'Male'),
 (44,'zdsfgvdxfgb','dcvbfcv','dfbhfvgnvc','sdfgbng','dfghujtyu','111','Triple','2013-05-28','2013-05-28','0',0,0,0,0,0,'Male'),
 (45,'weterg','awshdff','aewstgh','dsfgd','dfg','101','Single','2013-05-30','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (46,'rete','hfgjhg','cnvbn','dfhrtfy','dfgd','102','Single','2013-05-30','2013-05-30','0',0,600,500,0,1100,'Male'),
 (47,'wertwsrf','sdfsd','sdfgdsg','dsgd','fsdfg','102','Single','2013-05-30','2013-05-30','0',0,600,500,0,1100,'Male'),
 (48,'ertgdfg','sdfgdf','dfxgbv','dfgbfnjhg','sdfdxgv','101','Single','2013-05-30','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (49,'dfgd','sdfgds','stsegd','sdfgd','gdsfgdf','101','Single','2013-05-30','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (50,'dfgd','dfgfh','dfgh','sdfhgfh','fghf','106','Double','2013-05-30','2013-05-30','0',0,700,800,1400,2900,'Male'),
 (51,'ergd','sdfgdfg','dfhgfh','sdfgh','dsfhg','101','Single','2013-05-30','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (52,'dfgd','gdfgd','fgbcxvbxc','zdxfgvbcb','cvxbcn','102','Single','2013-05-30','2013-05-30','0',0,600,500,0,1100,'Male'),
 (53,'sdfdsg','dfgfh','sfgh','gh','jnvbnx','104','Single','2013-05-30','2013-05-30','0',0,0,0,0,0,'Male'),
 (54,'dfdsf','gxcvx','sdgdfb','xzcv','dhryftgh','101','Single','2013-05-30','2013-05-30','0',0,1267,434,0,1701,'Male'),
 (55,'sfsdgd','fgdh','dfcxbc','vdfbv','cv bcv','102','Single','2013-05-30','2013-05-30','0',0,600,500,0,1100,'Male'),
 (56,'xdfgvdcxb','cvbxc','cdvbcvb','xcvbc','cvbcxv','107','Double','2013-05-30','2013-05-30','0',0,0,0,0,0,'Male'),
 (57,'dfsf','sdfds','sdfds','dfgdg','sdfsd','101','Single','2013-05-31','2013-05-31','0',0,0,0,0,0,'Male');
/*!40000 ALTER TABLE `total_info` ENABLE KEYS */;


--
-- Definition of table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` (`id`,`username`,`password`) VALUES 
 (1,'manager','123'),
 (2,'tonu','123');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
