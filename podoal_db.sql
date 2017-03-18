CREATE DATABASE  IF NOT EXISTS `podoal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `podoal`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: podoal
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `local_number`
--

DROP TABLE IF EXISTS `local_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_number` (
  `local_number_ID` varchar(20) NOT NULL,
  `city_number` varchar(20) DEFAULT NULL,
  `country_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`local_number_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_number`
--

LOCK TABLES `local_number` WRITE;
/*!40000 ALTER TABLE `local_number` DISABLE KEYS */;
INSERT INTO `local_number` VALUES ('1','1','1'),('2','1','1'),('3','1','1'),('4','1','1');
/*!40000 ALTER TABLE `local_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sight`
--

DROP TABLE IF EXISTS `sight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sight` (
  `sight_id` varchar(20) NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `radius` double DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `local_number_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`sight_id`),
  KEY `R_10` (`local_number_ID`),
  CONSTRAINT `R_10` FOREIGN KEY (`local_number_ID`) REFERENCES `local_number` (`local_number_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sight`
--

LOCK TABLES `sight` WRITE;
/*!40000 ALTER TABLE `sight` DISABLE KEYS */;
INSERT INTO `sight` VALUES ('1',37.555865,127.04942,'IT/BT',0.0075,'한양대학교 정보통신관입니다.','1'),('10',37.569196,126.977892,'청계천광장',0.0075,'청계광장은 서울특별시의 청계천에 딸린 작은 광장이자, 청계천의 발원지이다. 인근에는 동아일보사옥과 서울특별시청이 위치해 있다.','2'),('11',37.565847,126.975199,'덕수궁',0.0075,'덕수궁은 서울 중구 정동에 있는 조선과 대한제국의 궁궐로서, 대한민국의 사적 제124호이며 면적은 63,069㎡이다. 원래의 면적은 현재보다 넓었으나, 일제강점기를 거치면서 축소되었다.','3'),('12',37.56557,126.977998,'서울시청광장',0.0075,'서울광장은 서울 중구의 서울시청 앞에 있는 광장이다. 본래 차도였지만, 1987년 6월 항쟁과 2002년 FIFA 월드컵 등 각종 집회·시위·행사의 장소로 널리 이용되었다.','3'),('13',37.560944,126.986373,'명동역',0.0075,'명동역은 서울특별시 중구 충무로2가에 있는 서울 지하철 4호선의 전철역이다.','3'),('14',37.550975,126.990914,'남산공원',0.0075,'1940년 3월 12일 남산 일대가 공원으로 지정되어 1968년 9월 2일에 개원하였으며 1991년부터 8년간 ‘남산제모습가꾸기’ 사업으로 공원 내 부정적 시설 89동을 이전하고 중구 예장동, 회현동, 용산구 한남동 일대를 대대적으로 복원 정비하여 시민의 공원이 되었다.','3'),('15',37.512897,127.10157,'제2롯데월드',0.0075,'롯데월드타워(Lotte World Tower)는 대한민국 서울특별시 송파구 신천동 롯데월드몰 단지 내에 건설 중인 초고층 건물이다.','3'),('16',37.497937,127.027572,'강남역',0.0075,'강남역은 서울특별시 강남구 역삼동에 있는 서울 지하철 2호선과 신분당선의 전철역이자 환승역이다. 테헤란로와 강남대로가 만나는 곳에 위치하며, 강남구와 서초구의 경계에 있다.','4'),('17',37.578802,126.995283,'창경궁',0.0075,'창경궁은 서울시에 있는 조선 성종 때에 건축한 궁궐이다. 창경궁은 서쪽으로 창덕궁과 붙어 있고 남쪽으로 종묘와 통하는 곳에 자리하고 있다.','4'),('18',37.570971,127.009681,'흥인지문',0.0075,'흥인지문은 조선의 수도인 한양의 4대문 중의 하나로 동쪽의 대문이다. 속칭은 동대문으로, 이는 조선 초기부터 불린 이름이다.','4'),('19',37.559952,126.97529,'숭례문',0.0075,'숭례문은 조선의 수도인 한양의 4대문 중의 하나로 남쪽의 대문이다. 흔히 남대문이라고도 부르는데, 이는 일제 강점기 시절에 일본이 붙인 명칭이 아니라 조선 초기부터 불린 이름이다.','4'),('20',37.573035,126.958147,'독립문',0.0075,'서울 독립문은 조선 후기의 건축물로 1896년 11월에 준공되어 1897년에 완공되었다. 독립협회가 중심이 되어 조선이 청나라의 책봉 체제에서 독립한 것을 상징하기 위하여 영은문을 무너뜨리고 그 터에 지은 문으로 서재필의 주도로 건립되었으며, 서재필의 원작을 배경으로 아파나시 세레딘사바틴이 설계·시공했고, 그 현판은 김가진의 작품이다.','4'),('3',37.559645,127.043945,'한양대학교병원',0.0075,'한양대학교 병원입니다.','1'),('4',37.555976,127.043852,'애지문',0.0075,'지하철 2호선 한양대역 2번 출구입니다.','1'),('7',37.542783,127.076398,'건국대학교',0.0075,'건국대학교는 대한민국 서울특별시와 충청북도 충주시에 있는 사립대학이다.','2'),('8',37.578049,126.976895,'경복궁',0.0075,'조선시대에 만들어진 다섯 개의 궁궐 중 첫 번째로 만들어진 곳으로, 조선 왕조의 법궁이다.','2'),('9',37.576012,126.976894,'광화문',0.0075,'광화문은 경복궁의 남쪽에 있는 정문이다. ‘왕의 큰 덕이 온 나라를 비춘다’는 의미이다.','2');
/*!40000 ALTER TABLE `sight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visited_sight`
--

DROP TABLE IF EXISTS `visited_sight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visited_sight` (
  `member_id` varchar(20) NOT NULL,
  `sight_id` varchar(20) NOT NULL,
  `visited_date` date NOT NULL,
  `visited_id` int(11) NOT NULL,
  PRIMARY KEY (`visited_id`),
  KEY `R_5` (`sight_id`),
  CONSTRAINT `R_5` FOREIGN KEY (`sight_id`) REFERENCES `sight` (`sight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visited_sight`
--

LOCK TABLES `visited_sight` WRITE;
/*!40000 ALTER TABLE `visited_sight` DISABLE KEYS */;
/*!40000 ALTER TABLE `visited_sight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28 21:13:06
