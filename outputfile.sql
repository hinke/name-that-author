-- MySQL dump 10.13  Distrib 5.5.25a, for osx10.7 (i386)
--
-- Host: localhost    Database: gameofquotes
-- ------------------------------------------------------
-- Server version	5.5.25a
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "books"
--

DROP TABLE IF EXISTS "books";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "books" (
  "id" int(10) unsigned NOT NULL,
  "title" varchar(50) DEFAULT NULL,
  "author" varchar(50) DEFAULT NULL,
  "cover_url" text,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "books"
--

LOCK TABLES "books" WRITE;
/*!40000 ALTER TABLE "books" DISABLE KEYS */;
INSERT INTO "books" VALUES (4,'Anna Karenina','Leo Tolstoy','https://readmill-assets.s3.amazonaws.com/covers/a48df58120897e5be2884b38fd3b4311-original.png?1351874591'),(5,'Pride & Prejudice','Jane Austen','https://readmill-assets.s3.amazonaws.com/covers/face2c5adc2017a53f54e57855c7ea5e-original.png?1351859552'),(6,'Walden','Henry David Thoreau','https://readmill-assets.s3.amazonaws.com/covers/847a10bc3cc3ccf1e3fe7ed1c097fced-original.png?1332518978'),(7,'Lady Chatterley\'s Lover','David Herbert Lawrence','https://readmill-assets.s3.amazonaws.com/covers/0990659d067235171f47c4a41f1534d1-original.png?1359109134'),(8,'Fahrenheit 451','Ray Bradbury','https://readmill-assets.s3.amazonaws.com/covers/90418e4b7697b50d72277ac2e3f3af00-original.png?1340613292'),(9,'Telling True Stories','Kramer, Mark & Call, Wendy','https://readmill-assets.s3.amazonaws.com/covers/088f9ae57c5f68eea11acc9f66c75f9a-original.png?1351592263'),(10,'Confessions of an Economic Hit Man','John Perkins','https://readmill-assets.s3.amazonaws.com/covers/b0a807c7857f2af58f6a7b2c05dd2147-original.png?1359710694'),(11,'None Dare Call It Conspiracy','Gary Allen; Larry Abraham; John Schmitz','https://readmill-assets.s3.amazonaws.com/covers/a06510cbe529b0a8e30fb73e970e1215-original.png?1348936780'),(12,'Designed for Use','Lukas Mathis','https://readmill-assets.s3.amazonaws.com/covers/f9046955f181518621d100581f8f3c68-original.png?1345987855'),(13,'The Shape of Design','Frank Chimero','https://readmill-assets.s3.amazonaws.com/covers/cea9678e5269c1c7e9e78db0d34f3241-original.png?1334939304'),(14,'The Fountainhead','Ayn Rand','https://readmill-assets.s3.amazonaws.com/covers/975acaf74499ad61a243da8e6e51be0d-original.png?1332951660'),(15,'Cloud Atlas','David Mitchell','https://readmill-assets.s3.amazonaws.com/covers/3629b6869a22f7f0da7f21cce6a44d73-original.png?1352218102'),(16,'For Whom the Bell Tolls','Ernest Hemingway','https://readmill-assets.s3.amazonaws.com/covers/cd907e0efbb7a16bb221ed9ecbaa385b-original.png?1341948414'),(17,'The 4-Hour Body','Ferriss, Timothy','https://readmill-assets.s3.amazonaws.com/covers/24463a02657483c8d323f73bd9920120-original.png?1351870557'),(18,'Homage to Catalonia','George Orwell','https://readmill-assets.s3.amazonaws.com/covers/b13d433406cfa36ca4214c1d3eab3ada-original.png?1360166546'),(19,'A Woman of No Importance','Oscar Wilde','https://readmill-assets.s3.amazonaws.com/covers/59a54e37b461f18a02773edec860812a-original.png?1360166780'),(20,'Catch-22','Joseph Heller','https://readmill-assets.s3.amazonaws.com/covers/c6be2d95b382f667f080d1b9ca2f3e5c-original.png?1360167097'),(21,'Blood Meridian','McCarthy, Cormac','https://readmill-assets.s3.amazonaws.com/covers/a2dd6e2f5dc4ff2c461172bff87d9e02-original.png?1352989717'),(22,'Mr Vertigo','Paul Auster','https://readmill-assets.s3.amazonaws.com/covers/69d371bd2d019c6f560431d0b4598f89-original.png?1332518943'),(23,'The Spirit Level: Why Equality is Better for Every','Richard Wilkinson, Kate Pickett','https://readmill-assets.s3.amazonaws.com/covers/2c523da9d6975e625145b95544df1de8-original.png?1335469692'),(24,'Moby Dick','Herman Melville','https://readmill-assets.s3.amazonaws.com/covers/8b40129540eb0a1ab219845163213d8e-original.png?1351869997'),(25,'Decoded','Jay-Z','https://readmill-assets.s3.amazonaws.com/covers/b0c0a20fb86313446ef8971ff960acca-original.png?1352218797'),(26,'Lolita','Vladimir Nabokov','https://readmill-assets.s3.amazonaws.com/covers/5a2a83d8f1af569000820d4e6c6c479c-original.png?1332519670'),(27,'The Great Gatsby','Francis Scott Fitzgerald','https://readmill-assets.s3.amazonaws.com/covers/c3ee1b22b9dcd8e153bc21669e6a4045-original.png?1345040942'),(28,'The long goodbye','Raymond Chandler','https://readmill-assets.s3.amazonaws.com/covers/be209c45522fbaa8386cd50050ee375e-original.png?1332519010'),(29,'I Want My MTV','Craig Marks','https://readmill-assets.s3.amazonaws.com/covers/fb6cb491b079debdc081840813a08a7c-original.png?1351834827'),(30,'Steve Jobs','Walter Isaacson','https://readmill-assets.s3.amazonaws.com/covers/530281128f9cc98c346b6af29fa29483-original.png?1332520209'),(31,'Ghost in the Wires','Kevin Mitnick, William L. Simon, Steve Wozniak','https://readmill-assets.s3.amazonaws.com/covers/7dd5eb7ea4d6234044364ed320babc8f-original.png?1351869617');
/*!40000 ALTER TABLE "books" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "quotes"
--

DROP TABLE IF EXISTS "quotes";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "quotes" (
  "id" int(10) unsigned NOT NULL,
  "quote" text,
  "username" varchar(50) DEFAULT NULL,
  "book_id" int(10) unsigned NOT NULL,
  PRIMARY KEY ("id"),
  KEY "index_quotes_book" ("book_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "quotes"
--

LOCK TABLES "quotes" WRITE;
/*!40000 ALTER TABLE "quotes" DISABLE KEYS */;
INSERT INTO "quotes" VALUES (4,'‘I think … if it is true that there are as many minds as there are heads, then there are as many kinds of love as there are hearts.’',NULL,4),(5,'Oh, my dear, dear aunt,\" she rapturously cried, \"what delight! what felicity! You give me fresh life and vigour. Adieu to disappointment and spleen. What are young men to rocks and mountains?',NULL,5),(6,'If a man does not keep pace with his companions, perhaps it is because he hears a different drummer. Let him step to the music which he hears, however measured or far away.',NULL,6),(7,'Her tormented modern-woman’s brain still had no rest. Was it real? And she knew, if she gave herself to the man, it was real. But if she kept herself for herself, it was nothing. She was old; millions of years old, she felt. And at last, she could bear the burden of herself no more. She was to be had for the taking. To be had for the taking.',NULL,7),(8,'The books are to remind us what asses and fools we are.',NULL,8),(9,'There is no single secret to good storytelling, but there is one idea that guides me: Feelings are more important than rules.',NULL,9),(10,'I have come to understand that life is composed of a series of coincidences. How we react to these—how we exercise what some refer to as free will—is everything; the choices we make within the boundaries of the twists of fate determine who we are.',NULL,10),(11,'The Insiders want the issues between the parties to be cloudy and gray, centering on personalities, not principles.',NULL,11),(12,'People don’t want to learn how to use features; they want to learn how to do things.',NULL,12),(13,'nothing moves as quickly and spreads so far as a good story',NULL,13),(14,'To ask nothing. To expect nothing. To depend on nothing.',NULL,14),(15,'A half-read book is a half-finished love affair.',NULL,15),(16,'It’s a shame there is such a jump in time between ones like us.',NULL,16),(17,'it’s critical, as Bruce Lee emphasized, to “absorb what is useful, discard what is useless, and add what is uniquely your own.”\n',NULL,17),(18,'beware of my partisanship, my mistakes of fact and the distortion inevitably caused by my having seen only one corner of events.',NULL,18),(20,'Discontent is the first step in the progress of a man or a nation.',NULL,19),(21,'He had decided to live forever or die in the attempt,',NULL,20),(22,'Words are things. The words he is in possession of he cannot be deprived of. Their authority transcends his ignorance of their meaning.',NULL,21),(23,'That was when the turd slid out of my crack: a loose and slippery cigar that thudded against my drawers with a warm, sickening wetness, then started sliding down my leg.',NULL,22),(24,'The moral arc of the universe is long, but it bends towards justice.',NULL,23),(25,'A wild, mystical, sympathetical feeling was in me; Ahab\'s quenchless feud seemed mine. With greedy ears I learned the history of that murderous monster against whom I and all the others had taken our oaths of violence and revenge.',NULL,24),(26,'Their voices were big, like their beats, but naturally slick, like hustlers’.	',NULL,25),(27,'Welcome, fellow, to this bordello.',NULL,26),(28,'So we beat on, boats against the current, borne back ceaselessly into the past.',NULL,27),(29,'for the three hundredth time I swore I would never again use an electric razor',NULL,28),(30,'ROBERT SMITH, the Cure: “Bohemian Rhapsody” was number one every fucking week. I fucking hated it.',NULL,29),(31,'When you took an iPod out of the box, it was so beautiful that it seemed to glow, and it made all other music players look as if they had been designed and manufactured in Uzbekistan.',NULL,30),(32,'The patch was developed by a group of German hackers who belonged to something they called the “Chaos Computer Club” (CCC).',NULL,31);
/*!40000 ALTER TABLE "quotes" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "users"
--

DROP TABLE IF EXISTS "users";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "users" (
  "id" int(10) unsigned NOT NULL,
  "score" text,
  "avatar_url" text,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "users"
--

LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
/*!40000 ALTER TABLE "users" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-06 18:22:11
