-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: brainOp
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mcq_question`
--

DROP TABLE IF EXISTS `mcq_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcq_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `option5` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `psychometric_data_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK64r06rclufe8ws9jvkhfui701` (`psychometric_data_id`),
  CONSTRAINT `FK64r06rclufe8ws9jvkhfui701` FOREIGN KEY (`psychometric_data_id`) REFERENCES `psychometric_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcq_question`
--

LOCK TABLES `mcq_question` WRITE;
/*!40000 ALTER TABLE `mcq_question` DISABLE KEYS */;
INSERT INTO `mcq_question` VALUES (1,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 1',3),(2,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 2',3),(3,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 3',3),(4,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 4',3),(5,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 1',4),(6,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 2',4),(7,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 3',4),(8,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 4',4),(9,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 5',4),(10,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 6',4),(11,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 7',4),(12,'Option 1','Option 2','Option 3','Option 4','Option 5','Question 8',4);
/*!40000 ALTER TABLE `mcq_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychometric_data`
--

DROP TABLE IF EXISTS `psychometric_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychometric_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `file_base64` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `text_field` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fr0dmuoyjq7sn1n8h4figl4w8` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychometric_data`
--

LOCK TABLES `psychometric_data` WRITE;
/*!40000 ALTER TABLE `psychometric_data` DISABLE KEYS */;
INSERT INTO `psychometric_data` VALUES (1,'cshekharmshr2407@gmail.com','V2Vlay0xOiBUcmVlcyBCYXNpY3MKMS4gVGVybWlub2xvZ3ksIFByb3BlcnRpZXMsIFJlcHJlc2VudGF0aW9uCjIuIFRyYXZlcnNhbHMKMy4gRGlhbWV0ZXIgb2YgYSB0cmVlCjQuIEJpbmFyeSBMaWZ0aW5nCjUuIExDQSBDb25jZXB0cwpXZWVrLTI6IFRyZWVzIEFkdmFuY2VkIGFuZCBHcmFwaHMgQmFzaWNzCjEuIEV1bGVyIFRvdXIKMi4gU3VidHJlZSBxdWVyaWVzCjMuIERQIG9uIFRyZWVzCjQuIEdyYXBocyAtIFRlcm1pbm9sb2d5LCBUcmF2ZXJzYWxzLCBDb25uZWN0ZWQgQ29tcG9uZW50cwpXZWVrLTM6IEdyYXBocyBJbnRlcm1lZGlhdGUKMS4gQnJpZGdlcyBhbmQgQXJ0aWN1bGF0aW9uIFBvaW50cwoyLiBTaG9ydGVzdCBQYXRoIEFsZ29yaXRobXMgLSBEaWprc3RyYSwgQmVsbG1hbiBGb3JkCjMuIEZsb3lkIFdhcnNoYWxsCjQuIERpc2pvaW50IFNldCBVbmlvbgpXZWVrLTQ6IEdyYXBocyBBZHZhbmNlZAoxLiBNaW5pbXVtIFNwYW5uaW5nIFRyZWVzCjIuIERpcmVjdGVkIEdyYXBocwozLiBUb3BvbG9naWNhbCBTb3J0aW5nCjQuIFN0cm9uZ2x5IENvbm5lY3RlZCBDb21wb25lbnRzCg==','chandra shekhar','hi this is my cover letter for this position'),(3,'Hugewarriors@gmail.com','PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPGluZGV4aW5nPgogPHBhcmFncmFwaCBpbmRleD0iOSIgbm9kZV90eXBlPSJ3cml0ZXIiPkNoYW5kcmEgU2hla2hhcgpQdW5lLCBNYWhhcmFzdHJhPC9wYXJhZ3JhcGg+CiA8cGFyYWdyYXBoIGluZGV4PSIxMCIgbm9kZV90eXBlPSJ3cml0ZXIiPmNzaGVraGFybXNocjI0MDdAZ21haWwuY29tPC9wYXJhZ3JhcGg+CiA8cGFyYWdyYXBoIGluZGV4PSIxMSIgbm9kZV90eXBlPSJ3cml0ZXIiPis5MSA3MDExNjQ3NDY0PC9wYXJhZ3JhcGg+CiA8cGFyYWdyYXBoIGluZGV4PSIxMyIgbm9kZV90eXBlPSJ3cml0ZXIiPkkgYW0gd3JpdGluZyB0byBleHByZXNzIG15IGtlZW4gaW50ZXJlc3QgaW4geW91ciBtZW50b3JzaGlwIHByb2dyYW0sIHdoaWNoIEkgZGlzY292ZXJlZCB0aHJvdWdoIGV4dGVuc2l2ZSByZXNlYXJjaCBpbnRvIHJlcHV0YWJsZSBvcHBvcnR1bml0aWVzIGZvciBza2lsbCBkZXZlbG9wbWVudCBhbmQgZ3Jvd3RoLiBBcyBhIHByZS1maW5hbCB5ZWFyIHVuZGVyZ3JhZHVhdGUgc3R1ZGVudCBhdCBBSVQsIFB1bmUsIHNwZWNpYWxpemluZyBpbiBKYXZhIGJhY2tlbmQgdGVjaG5vbG9naWVzIHN1Y2ggYXMgU3ByaW5nIEJvb3QsIEkgYW0gZWFnZXIgdG8gZW5oYW5jZSBteSBwcm9maWNpZW5jeSBhbmQgY29udHJpYnV0ZSB0byB0aGUgb3Blbi1zb3VyY2UgY29tbXVuaXR5LjwvcGFyYWdyYXBoPgogPHBhcmFncmFwaCBpbmRleD0iMTUiIG5vZGVfdHlwZT0id3JpdGVyIj5XaXRoIGEgc3Ryb25nIGJhY2tncm91bmQgaW4gU3ByaW5nIEJvb3QsIERvY2tlciwgR2l0LCBhbmQgYWN0aXZlIHBhcnRpY2lwYXRpb24gaW4gY29kaW5nIGNvbXBldGl0aW9ucywgSSBoYXZlIGhvbmVkIG15IHByb2JsZW0tc29sdmluZyBhbmQgY29sbGFib3JhdGlvbiBza2lsbHMuIEJ5IGpvaW5pbmcgeW91ciBtZW50b3JzaGlwIHByb2dyYW0sIEkgaG9wZSB0byBnYWluIHByYWN0aWNhbCBleHBlcmllbmNlLCBleHBvc3VyZSB0byByZWFsLXdvcmxkIHNjZW5hcmlvcywgYW5kIGd1aWRhbmNlIGZyb20gZXhwZXJpZW5jZWQgcHJvZmVzc2lvbmFscy4gSXQgd291bGQgYmUgYW4gaG9ub3IgdG8gbGVhcm4gZnJvbSB0aGUgZXN0ZWVtZWQgTGludXggRm91bmRhdGlvbiBjb21tdW5pdHkgYW5kIGNvbnRyaWJ1dGUgdG8gdGhlIGFkdmFuY2VtZW50IG9mIG9wZW4tc291cmNlIHRlY2hub2xvZ3kuPC9wYXJhZ3JhcGg+CiA8cGFyYWdyYXBoIGluZGV4PSIxNyIgbm9kZV90eXBlPSJ3cml0ZXIiPlRoYW5rIHlvdSBmb3IgY29uc2lkZXJpbmcgbXkgYXBwbGljYXRpb24uPC9wYXJhZ3JhcGg+CiA8cGFyYWdyYXBoIGluZGV4PSIxOSIgbm9kZV90eXBlPSJ3cml0ZXIiPlNpbmNlcmVseSw8L3BhcmFncmFwaD4KIDxwYXJhZ3JhcGggaW5kZXg9IjIwIiBub2RlX3R5cGU9IndyaXRlciI+Q2hhbmRyYSBTaGVraGFyPC9wYXJhZ3JhcGg+CjwvaW5kZXhpbmc+Cg==','akshat Shankhdhar','hi this is my cover letter for this position'),(4,'ahsish@gmail.com','aHR0cHM6Ly9jYXJlZXJzLmlibS5jb20vam9iLzE4Njk4MjYzL2ludGVybi1zb2Z0d2FyZS1lbmdpbmVlci1yZW1vdGUvCg==','ashish rout','this is dream Job');
/*!40000 ALTER TABLE `psychometric_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychometric_data_mcq_questions`
--

DROP TABLE IF EXISTS `psychometric_data_mcq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychometric_data_mcq_questions` (
  `psychometric_data_id` bigint NOT NULL,
  `mcq_questions` varchar(255) NOT NULL,
  KEY `FK7qweoxsft1a4xgb2pghucycgy` (`psychometric_data_id`),
  CONSTRAINT `FK7qweoxsft1a4xgb2pghucycgy` FOREIGN KEY (`psychometric_data_id`) REFERENCES `psychometric_data` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychometric_data_mcq_questions`
--

LOCK TABLES `psychometric_data_mcq_questions` WRITE;
/*!40000 ALTER TABLE `psychometric_data_mcq_questions` DISABLE KEYS */;
INSERT INTO `psychometric_data_mcq_questions` VALUES (1,'[\n  {\n    \"question\": \"Question 1\"'),(1,'\"option1\": \"Option 1\"'),(1,'\"option2\": \"Option 2\"'),(1,'\"option3\": \"Option 3\"'),(1,'\"option4\": \"Option 4\"'),(1,'\"option5\": \"Option 5\"\n  }'),(1,'{\n    \"question\": \"Question 2\"'),(1,'\"option1\": \"Option 1\"'),(1,'\"option2\": \"Option 2\"'),(1,'\"option3\": \"Option 3\"'),(1,'\"option4\": \"Option 4\"'),(1,'\"option5\": \"Option 5\"\n  }\n]');
/*!40000 ALTER TABLE `psychometric_data_mcq_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16  2:19:17
