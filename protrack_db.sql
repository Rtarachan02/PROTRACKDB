-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: protrack_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `role` enum('Frontend Developer','Backend Developer','QA Engineer') DEFAULT NULL,
  `hours_allocated` int DEFAULT NULL,
  `assigned_date` date DEFAULT NULL,
  `completion_status` enum('Assigned','In Progress','Completed') DEFAULT NULL,
  PRIMARY KEY (`assignment_id`),
  KEY `project_id` (`project_id`),
  KEY `developer_id` (`developer_id`),
  CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`developer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (31,131,1,'Frontend Developer',40,'2024-09-01','In Progress'),(32,132,2,'Backend Developer',35,'2024-09-02','Assigned'),(33,133,3,'QA Engineer',30,'2024-09-03','In Progress'),(34,134,4,'Frontend Developer',25,'2024-09-04','Completed'),(35,135,5,'Backend Developer',45,'2024-09-05','Assigned'),(36,136,6,'QA Engineer',20,'2024-09-06','In Progress'),(37,137,7,'Frontend Developer',50,'2024-09-07','Assigned'),(38,138,8,'Backend Developer',40,'2024-09-08','In Progress'),(39,139,9,'QA Engineer',35,'2024-09-09','Completed'),(40,140,10,'Frontend Developer',30,'2024-09-10','In Progress'),(41,141,1,'Backend Developer',20,'2024-09-11','Assigned'),(42,142,2,'QA Engineer',25,'2024-09-12','In Progress'),(43,143,3,'Frontend Developer',40,'2024-09-13','Assigned'),(44,144,4,'Backend Developer',35,'2024-09-14','In Progress'),(45,145,5,'QA Engineer',30,'2024-09-15','Completed'),(46,146,6,'Frontend Developer',25,'2024-09-16','Assigned'),(47,147,7,'Backend Developer',50,'2024-09-17','In Progress'),(48,148,8,'QA Engineer',20,'2024-09-18','Assigned'),(49,149,9,'Frontend Developer',45,'2024-09-19','In Progress'),(50,150,10,'Backend Developer',30,'2024-09-20','Completed'),(51,151,1,'QA Engineer',35,'2024-09-21','In Progress'),(52,152,2,'Frontend Developer',40,'2024-09-22','Assigned'),(53,153,3,'Backend Developer',25,'2024-09-23','In Progress'),(54,154,4,'QA Engineer',30,'2024-09-24','Completed'),(55,155,5,'Frontend Developer',20,'2024-09-25','Assigned'),(56,156,6,'Backend Developer',35,'2024-09-26','In Progress'),(57,157,7,'QA Engineer',40,'2024-09-27','Assigned'),(58,158,8,'Frontend Developer',25,'2024-09-28','In Progress'),(59,159,9,'Backend Developer',50,'2024-09-29','Completed'),(60,160,10,'QA Engineer',30,'2024-09-30','In Progress'),(61,161,1,'Frontend Developer',20,'2024-10-01','Assigned'),(62,162,2,'Backend Developer',35,'2024-10-02','In Progress'),(63,163,3,'QA Engineer',40,'2024-10-03','Completed'),(64,164,4,'Frontend Developer',25,'2024-10-04','Assigned'),(65,165,5,'Backend Developer',30,'2024-10-05','In Progress'),(66,166,6,'QA Engineer',35,'2024-10-06','Completed'),(67,167,7,'Frontend Developer',50,'2024-10-07','Assigned'),(68,168,8,'Backend Developer',20,'2024-10-08','In Progress'),(69,169,9,'QA Engineer',45,'2024-10-09','Completed'),(70,170,10,'Frontend Developer',30,'2024-10-10','Assigned');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` text,
  `industry_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (103,'Tech Innovators','Alice Smith','alice.smith@techinnovators.com','123-456-7890','Tech Innovators Inc.','123 Main St, Tech City','Technology'),(104,'Global Finances','John Doe','john.doe@globalfinances.com','987-654-3210','Global Finances LLC','456 Elm St, Finance Town','Finance'),(105,'Health Solutions','Dr. Emily Turner','emily.turner@healthsolutions.com','234-567-8910','Health Solutions Ltd.','789 Oak St, Wellness City','Healthcare'),(106,'EduLeaders','Dr. Mark Lee','mark.lee@eduleaders.com','111-222-3333','EduLeaders Corp.','101 Cedar St, Edu City','Education'),(107,'Retail Masters','Rachel Green','rachel.green@retailmasters.com','999-888-7777','Retail Masters Ltd.','202 Pine St, Retail City','Retail'),(108,'Byte Systems','Charles Kent','charles.kent@bytesystems.com','345-678-9101','Byte Systems Ltd.','130 Park Ave, Silicon Valley','Technology'),(109,'BlueTech Solutions','Sophia Moore','sophia.moore@bluetech.com','234-987-6541','BlueTech Solutions Inc.','49 Ocean Drive, Innovation City','Technology'),(110,'Swift Financial','Patrick Hill','patrick.hill@swiftfin.com','456-789-1230','Swift Financial Group','512 Tower Lane, Finance Hub','Finance'),(111,'MediCore Health','Angela Brown','angela.brown@medicore.com','567-890-2341','MediCore Health Inc.','678 Wellness Rd, Health City','Healthcare'),(112,'AcademyPro','Dr. Michael Johnson','michael.johnson@academypro.com','345-678-2341','AcademyPro Ltd.','789 Learning St, Education City','Education'),(113,'MarketShop','Emily Davis','emily.davis@marketshop.com','111-222-3333','MarketShop LLC','90 Commerce Rd, Retail City','Retail'),(114,'TechSphere Solutions','Rajesh Kumar','rajesh.kumar@techsphere.com','91-98765-43210','TechSphere Solutions Pvt. Ltd.','50 Indira Nagar, Bangalore','Technology'),(115,'FinServe India','Anjali Mehta','anjali.mehta@finserveindia.com','91-87654-32109','FinServe India Pvt. Ltd.','30 MG Road, Mumbai','Finance'),(116,'MediCare Systems','Suresh Reddy','suresh.reddy@medicaresystems.com','91-76543-21098','MediCare Systems Pvt. Ltd.','12 Health Avenue, Hyderabad','Healthcare'),(117,'LearnSmart Academy','Pooja Sharma','pooja.sharma@learnsmart.com','91-65432-10987','LearnSmart Academy Pvt. Ltd.','8 Knowledge St, Delhi','Education'),(118,'Retail Hub','Vikram Singh','vikram.singh@retailhub.com','91-54321-09876','Retail Hub Pvt. Ltd.','100 Shopping Rd, Pune','Retail'),(119,'Digital Innovations','Neha Gupta','neha.gupta@digitalinnovations.com','91-43210-98765','Digital Innovations Pvt. Ltd.','77 Tech Park, Noida','Technology'),(120,'FinanceGurus','Amit Verma','amit.verma@financegurus.com','91-32109-87654','FinanceGurus Pvt. Ltd.','45 Finance Plaza, Gurgaon','Finance'),(121,'HealthPlus','Simran Kaur','simran.kaur@healthplus.com','91-21098-76543','HealthPlus Pvt. Ltd.','22 Wellness Rd, Chennai','Healthcare'),(122,'AcademyPlus','Rahul Nair','rahul.nair@academyplus.com','91-10987-65432','AcademyPlus Pvt. Ltd.','88 Learning Lane, Ahmedabad','Education'),(123,'SmartShop','Tanvi Joshi','tanvi.joshi@smartshop.com','91-09876-54321','SmartShop Pvt. Ltd.','66 Retail St, Kolkata','Retail'),(124,'WebTech Solutions','Gaurav Joshi','gaurav.joshi@webtech.com','91-98765-43210','WebTech Solutions Pvt. Ltd.','1000 Digital Rd, Bangalore','Technology'),(125,'MoneyWise','Ravi Patel','ravi.patel@moneywise.com','91-87654-32109','MoneyWise Pvt. Ltd.','200 Finance Rd, Mumbai','Finance'),(126,'CureHealth','Priya Desai','priya.desai@curehealth.com','91-76543-21098','CureHealth Pvt. Ltd.','300 Care Rd, Hyderabad','Healthcare'),(127,'StudySmart','Ankit Bansal','ankit.bansal@studysmart.com','91-65432-10987','StudySmart Pvt. Ltd.','400 Learning Ave, Delhi','Education'),(128,'ShopEasy','Sneha Rao','sneha.rao@shopeasy.com','91-54321-09876','ShopEasy Pvt. Ltd.','500 Shopping Blvd, Pune','Retail'),(129,'CloudTech','Karan Singh','karan.singh@cloudtech.com','91-43210-98765','CloudTech Pvt. Ltd.','123 Cloud St, Bangalore','Technology'),(130,'AgriSolutions','Aditi Sharma','aditi.sharma@agrisolutions.com','91-32109-87654','AgriSolutions Pvt. Ltd.','321 Farm Rd, Pune','Other'),(131,'TransportHub','Sanjay Mehta','sanjay.mehta@transporthub.com','91-21098-76543','TransportHub Pvt. Ltd.','45 Transport St, Mumbai','Retail'),(132,'EduCraft','Vivek Verma','vivek.verma@educraft.com','91-10987-65432','EduCraft Pvt. Ltd.','67 Education Blvd, Delhi','Education'),(133,'MediSys','Neeraj Yadav','neeraj.yadav@medisys.com','91-09876-54321','MediSys Pvt. Ltd.','55 Health Rd, Noida','Healthcare'),(134,'EcomSolutions','Divya Agarwal','divya.agarwal@ecomsolutions.com','91-98765-43210','EcomSolutions Pvt. Ltd.','99 E-commerce St, Bangalore','Retail'),(135,'FinTech Innovators','Ritika Sharma','ritika.sharma@fintechinnovators.com','91-87654-32109','FinTech Innovators Pvt. Ltd.','78 Finance Lane, Gurgaon','Finance'),(136,'HealthFirst','Aarav Sharma','aarav.sharma@healthfirst.com','91-76543-21098','HealthFirst Pvt. Ltd.','12 Wellness Ave, Mumbai','Healthcare'),(137,'EdTech World','Lakshmi Narayanan','lakshmi.narayanan@edtechworld.com','91-65432-10987','EdTech World Pvt. Ltd.','55 Learning Rd, Chennai','Education'),(138,'RetailOne','Rohit Jain','rohit.jain@retailone.com','91-54321-09876','RetailOne Pvt. Ltd.','22 Market Rd, Kolkata','Retail'),(139,'DesignTech','Puneet Kapoor','puneet.kapoor@designtech.com','91-43210-98765','DesignTech Pvt. Ltd.','48 Design St, Bangalore','Technology'),(140,'BizFinance','Nitin Singh','nitin.singh@bizfinance.com','91-32109-87654','BizFinance Pvt. Ltd.','88 Business Rd, Delhi','Finance'),(141,'HomeCare','Priya Singh','priya.singh@homecare.com','91-21098-76543','HomeCare Pvt. Ltd.','33 Care St, Hyderabad','Healthcare'),(142,'CareerGuidance','Nisha Verma','nisha.verma@careerguidance.com','91-10987-65432','CareerGuidance Pvt. Ltd.','11 Guidance Ave, Chennai','Education'),(143,'SuperStore','Kabir Sharma','kabir.sharma@superstore.com','91-09876-54321','SuperStore Pvt. Ltd.','30 Shop Rd, Pune','Retail'),(144,'Innovative Health','Gita Patel','gita.patel@innovativehealth.com','91-98765-43210','Innovative Health Pvt. Ltd.','80 Health Way, Bangalore','Healthcare'),(145,'AeroTech','Sahil Gupta','sahil.gupta@aerotech.com','91-87654-32109','AeroTech Pvt. Ltd.','56 Aero Lane, Mumbai','Technology'),(146,'QuickFinance','Ankur Mehta','ankur.mehta@quickfinance.com','91-76543-21098','QuickFinance Pvt. Ltd.','19 Finance St, Delhi','Finance'),(147,'StudyHub','Kavya Verma','kavya.verma@studyhub.com','91-65432-10987','StudyHub Pvt. Ltd.','25 Knowledge Rd, Pune','Education'),(148,'Agriculture Solutions','Dev Singh','dev.singh@agriculturesolutions.com','91-54321-09876','Agriculture Solutions Pvt. Ltd.','33 Farm Rd, Chennai','Other'),(149,'Fashion Hub','Pallavi Desai','pallavi.desai@fashionhub.com','91-43210-98765','Fashion Hub Pvt. Ltd.','40 Fashion St, Kolkata','Retail'),(150,'EcoTech','Shivam Reddy','shivam.reddy@ecotech.com','91-32109-87654','EcoTech Pvt. Ltd.','22 Eco Rd, Bangalore','Technology'),(151,'Transport Solutions','Gaurav Nair','gaurav.nair@transportsolutions.com','91-21098-76543','Transport Solutions Pvt. Ltd.','66 Transport Lane, Mumbai','Other'),(152,'FoodTech Innovations','Madhav Sharma','madhav.sharma@foodtech.com','91-10987-65432','FoodTech Innovations Pvt. Ltd.','29 Food St, Delhi','Food Industry'),(153,'Real Estate Advisors','Preeti Singh','preeti.singh@realestate.com','91-09876-54321','Real Estate Advisors Pvt. Ltd.','14 Real Estate Ave, Noida','Real Estate'),(154,'AutoTech Innovations','Ravi Kumar','ravi.kumar@autotech.com','91-98765-43210','AutoTech Innovations Pvt. Ltd.','11 Car St, Bangalore','Automotive'),(155,'Digital Solutions','Sonal Agarwal','sonal.agarwal@digitalsolutions.com','91-87654-32109','Digital Solutions Pvt. Ltd.','23 Digital St, Pune','Technology'),(156,'Future Finance','Riya Bansal','riya.bansal@futurefinance.com','91-76543-21098','Future Finance Pvt. Ltd.','34 Future Rd, Chennai','Finance'),(157,'Healthcare Innovations','Ruchi Sharma','ruchi.sharma@healthcareinnovations.com','91-65432-10987','Healthcare Innovations Pvt. Ltd.','45 Health Rd, Delhi','Healthcare'),(158,'Learn & Grow Academy','Siddharth Patel','siddharth.patel@learnandgrow.com','91-54321-09876','Learn & Grow Academy Pvt. Ltd.','56 Learn St, Mumbai','Education'),(159,'Eco Store','Farhan Khan','farhan.khan@ecostore.com','91-43210-98765','Eco Store Pvt. Ltd.','66 Eco Rd, Bangalore','Retail'),(160,'Finance Experts','Meera Iyer','meera.iyer@financeexperts.com','91-32109-87654','Finance Experts Pvt. Ltd.','76 Finance Blvd, Noida','Finance'),(161,'Innovative Tech','Vivek Joshi','vivek.joshi@innovativetech.com','91-21098-76543','Innovative Tech Pvt. Ltd.','86 Innovation Rd, Pune','Technology'),(162,'HealthPlus Services','Ragini Sen','ragini.sen@healthplusservices.com','91-10987-65432','HealthPlus Services Pvt. Ltd.','96 Health Ave, Chennai','Healthcare'),(163,'StudySmart Institute','Pranav Rao','pranav.rao@studysmartinstitute.com','91-09876-54321','StudySmart Institute Pvt. Ltd.','106 Education Lane, Mumbai','Education'),(164,'Retail Warehouse','Harsh Agarwal','harsh.agarwal@retailwarehouse.com','91-98765-43210','Retail Warehouse Pvt. Ltd.','116 Warehouse Rd, Delhi','Retail');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costs`
--

DROP TABLE IF EXISTS `costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costs` (
  `cost_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_status` enum('Paid','Pending','Overdue') DEFAULT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cost_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `costs_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costs`
--

LOCK TABLES `costs` WRITE;
/*!40000 ALTER TABLE `costs` DISABLE KEYS */;
INSERT INTO `costs` VALUES (1,131,'Development Fees',1500.00,'2024-09-30','Paid','INV-1001'),(2,132,'Equipment Costs',800.00,'2024-10-15','Pending','INV-1002'),(3,133,'Development Fees',2000.00,'2024-10-20','Overdue','INV-1003'),(4,134,'Maintenance Fees',300.00,'2024-11-01','Paid','INV-1004'),(5,135,'Consulting Fees',1200.00,'2024-11-05','Pending','INV-1005'),(6,136,'Licensing Costs',500.00,'2024-10-25','Overdue','INV-1006'),(7,137,'Development Fees',1750.00,'2024-10-12','Paid','INV-1007'),(8,138,'Equipment Costs',950.00,'2024-11-02','Pending','INV-1008'),(9,139,'Development Fees',1400.00,'2024-11-15','Overdue','INV-1009'),(10,140,'Consulting Fees',650.00,'2024-10-30','Paid','INV-1010'),(11,141,'Development Fees',1600.00,'2024-09-29','Pending','INV-1011'),(12,142,'Equipment Costs',700.00,'2024-10-14','Overdue','INV-1012'),(13,143,'Maintenance Fees',400.00,'2024-11-10','Paid','INV-1013'),(14,144,'Consulting Fees',1800.00,'2024-09-28','Pending','INV-1014'),(15,145,'Licensing Costs',550.00,'2024-10-18','Overdue','INV-1015'),(16,146,'Development Fees',1300.00,'2024-11-12','Paid','INV-1016'),(17,147,'Equipment Costs',1200.00,'2024-10-22','Pending','INV-1017'),(18,148,'Development Fees',900.00,'2024-10-26','Overdue','INV-1018'),(19,149,'Consulting Fees',950.00,'2024-11-03','Paid','INV-1019'),(20,150,'Maintenance Fees',350.00,'2024-11-06','Pending','INV-1020'),(21,151,'Development Fees',1550.00,'2024-09-25','Overdue','INV-1021'),(22,152,'Equipment Costs',750.00,'2024-10-05','Paid','INV-1022'),(23,153,'Licensing Costs',450.00,'2024-11-14','Pending','INV-1023'),(24,154,'Development Fees',1350.00,'2024-10-09','Overdue','INV-1024'),(25,155,'Consulting Fees',700.00,'2024-09-27','Paid','INV-1025'),(26,156,'Maintenance Fees',500.00,'2024-10-20','Pending','INV-1026'),(27,157,'Development Fees',1800.00,'2024-10-16','Overdue','INV-1027'),(28,158,'Equipment Costs',600.00,'2024-10-28','Paid','INV-1028'),(29,159,'Licensing Costs',800.00,'2024-11-04','Pending','INV-1029'),(30,160,'Development Fees',1600.00,'2024-10-19','Overdue','INV-1030'),(31,161,'Consulting Fees',950.00,'2024-11-11','Paid','INV-1031'),(32,162,'Maintenance Fees',400.00,'2024-10-15','Pending','INV-1032'),(33,163,'Development Fees',1200.00,'2024-10-11','Overdue','INV-1033'),(34,164,'Equipment Costs',700.00,'2024-10-07','Paid','INV-1034'),(35,165,'Licensing Costs',900.00,'2024-11-05','Pending','INV-1035'),(36,166,'Development Fees',1100.00,'2024-11-07','Overdue','INV-1036'),(37,167,'Consulting Fees',800.00,'2024-11-09','Paid','INV-1037'),(38,168,'Maintenance Fees',650.00,'2024-10-26','Pending','INV-1038'),(39,169,'Development Fees',1250.00,'2024-11-08','Overdue','INV-1039'),(40,170,'Equipment Costs',950.00,'2024-10-30','Paid','INV-1040');
/*!40000 ALTER TABLE `costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `developer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `client_id` int DEFAULT NULL,
  `skill_set` varchar(255) DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  PRIMARY KEY (`developer_id`),
  UNIQUE KEY `email` (`email`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `developers_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
INSERT INTO `developers` VALUES (1,'Alice Johnson','alice.johnson@example.com','555-0101',103,'Java, Spring, REST',5),(2,'Bob Smith','bob.smith@example.com','555-0102',104,'JavaScript, React, Node.js',3),(3,'Charlie Brown','charlie.brown@example.com','555-0103',105,'Python, Django, Flask',4),(4,'Diana Prince','diana.prince@example.com','555-0104',106,'C#, ASP.NET, SQL',6),(5,'Ethan Hunt','ethan.hunt@example.com','555-0105',107,'Ruby, Rails, PostgreSQL',2),(6,'Fiona Gallagher','fiona.gallagher@example.com','555-0106',108,'PHP, Laravel, MySQL',7),(7,'George Wilson','george.wilson@example.com','555-0107',109,'C++, Qt, OpenGL',8),(8,'Hannah Baker','hannah.baker@example.com','555-0108',110,'Swift, iOS Development',4),(9,'Ian Malcolm','ian.malcolm@example.com','555-0109',111,'Java, Spring Boot, Hibernate',5),(10,'Jane Doe','jane.doe@example.com','555-0110',112,'JavaScript, Angular, Vue.js',3);
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestones` (
  `milestone_id` int NOT NULL,
  `project_id` int DEFAULT NULL,
  `milestone_name` varchar(255) DEFAULT NULL,
  `description` text,
  `due_date` date DEFAULT NULL,
  `status` enum('Not Started','In Progress','Completed') DEFAULT NULL,
  PRIMARY KEY (`milestone_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `milestones_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,131,'Initial Setup','Complete initial project setup and repository.','2024-09-10','Completed'),(2,132,'Design Phase','Finish all design prototypes and get approval.','2024-09-15','In Progress'),(3,133,'Development Phase','Complete core functionalities of the application.','2024-09-30','Not Started'),(4,134,'Testing Phase','Conduct thorough testing of the application.','2024-10-15','Not Started');
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `client_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` enum('Bank Transfer','Credit Card','PayPal') DEFAULT NULL,
  `payment_status` enum('Confirmed','Pending') DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,103,1500.00,'2024-09-01','Bank Transfer','Confirmed'),(2,104,250.50,'2024-09-05','Credit Card','Pending'),(3,105,800.75,'2024-09-10','PayPal','Confirmed'),(4,106,500.00,'2024-09-15','Bank Transfer','Pending');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `development_type` varchar(50) DEFAULT NULL,
  `service_based` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (131,'Tech Innovators Project',103,NULL,NULL,'2024-01-01','2024-06-30',500000.00,'Ongoing'),(132,'Global Finances Revamp',104,NULL,NULL,'2024-02-01','2024-08-15',300000.00,'Completed'),(133,'Health Solutions Software',105,NULL,NULL,'2024-03-01','2024-07-15',450000.00,'Ongoing'),(134,'EduLeaders Curriculum Development',106,NULL,NULL,'2024-04-01','2024-12-31',200000.00,'Planned'),(135,'Retail Masters Website Overhaul',107,NULL,NULL,'2024-05-01','2024-09-30',250000.00,'Ongoing'),(136,'Byte Systems Upgrade',108,NULL,NULL,'2024-06-01','2024-10-30',300000.00,'Planned'),(137,'BlueTech Solutions Integration',109,NULL,NULL,'2024-07-01','2024-11-30',350000.00,'Ongoing'),(138,'Swift Financial App Development',110,NULL,NULL,'2024-08-01','2024-12-31',400000.00,'Planned'),(139,'MediCore Health Initiative',111,NULL,NULL,'2024-09-01','2025-03-31',450000.00,'Ongoing'),(140,'AcademyPro Training Program',112,NULL,NULL,'2024-10-01','2025-01-31',150000.00,'Planned'),(141,'TechSphere Solutions Platform',113,NULL,NULL,'2024-01-15','2024-07-15',600000.00,'Ongoing'),(142,'FinServe India Tax Solution',114,NULL,NULL,'2024-02-10','2024-08-10',350000.00,'Completed'),(143,'MediCare Systems Portal',115,NULL,NULL,'2024-03-05','2024-09-05',400000.00,'Ongoing'),(144,'LearnSmart Academy E-Learning',116,NULL,NULL,'2024-04-20','2024-10-20',220000.00,'Planned'),(145,'Retail Hub Inventory System',117,NULL,NULL,'2024-05-10','2024-11-10',270000.00,'Ongoing'),(146,'Digital Innovations Marketing Tool',118,NULL,NULL,'2024-06-15','2024-12-15',320000.00,'Planned'),(147,'FinanceGurus Analytics Dashboard',119,NULL,NULL,'2024-07-20','2025-01-20',380000.00,'Ongoing'),(148,'HealthPlus Patient Management',120,NULL,NULL,'2024-08-25','2025-02-25',450000.00,'Planned'),(149,'AcademyPlus Skill Development',121,NULL,NULL,'2024-09-30','2025-03-30',200000.00,'Ongoing'),(150,'SmartShop Loyalty Program',122,NULL,NULL,'2024-10-05','2025-04-05',150000.00,'Planned'),(151,'CloudTech Infrastructure',123,NULL,NULL,'2024-01-10','2024-06-10',500000.00,'Ongoing'),(152,'AgriSolutions Crop Management',124,NULL,NULL,'2024-02-15','2024-07-15',300000.00,'Completed'),(153,'TransportHub Logistics System',125,NULL,NULL,'2024-03-01','2024-08-01',400000.00,'Ongoing'),(154,'EduCraft Learning Management',126,NULL,NULL,'2024-04-01','2024-10-01',150000.00,'Planned'),(155,'MediSys Health Tracker',127,NULL,NULL,'2024-05-05','2024-11-05',220000.00,'Ongoing'),(156,'EcomSolutions E-Commerce Platform',128,NULL,NULL,'2024-06-01','2024-12-01',370000.00,'Planned'),(157,'FinTech Innovators Payment Gateway',129,NULL,NULL,'2024-07-01','2025-01-01',400000.00,'Ongoing'),(158,'HealthFirst Wellness Program',130,NULL,NULL,'2024-08-01','2025-02-01',320000.00,'Planned'),(159,'EdTech World Online Courses',131,NULL,NULL,'2024-09-01','2025-03-01',250000.00,'Ongoing'),(160,'RetailOne Sales System',132,NULL,NULL,'2024-10-01','2025-04-01',180000.00,'Planned'),(161,'Digital Solutions App',133,NULL,NULL,'2024-01-20','2024-06-20',300000.00,'Ongoing'),(162,'Future Finance Portfolio Manager',134,NULL,NULL,'2024-02-25','2024-08-25',350000.00,'Completed'),(163,'Healthcare Innovations Research',135,NULL,NULL,'2024-03-15','2024-09-15',400000.00,'Ongoing'),(164,'Learn & Grow Academy Curriculum',136,NULL,NULL,'2024-04-15','2024-10-15',200000.00,'Planned'),(165,'Eco Store Retail Management',137,NULL,NULL,'2024-05-10','2024-11-10',250000.00,'Ongoing'),(166,'Finance Experts Advisory',138,NULL,NULL,'2024-06-20','2024-12-20',280000.00,'Planned'),(167,'Innovative Tech Development',139,NULL,NULL,'2024-07-25','2025-01-25',500000.00,'Ongoing'),(168,'HealthPlus Services Outreach',140,NULL,NULL,'2024-08-30','2025-02-28',320000.00,'Planned'),(169,'StudySmart Institute Training',141,NULL,NULL,'2024-09-05','2025-03-05',150000.00,'Ongoing'),(170,'Retail Warehouse Inventory',142,NULL,NULL,'2024-10-10','2025-04-10',180000.00,'Planned');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `description` text,
  `priority` enum('High','Medium','Low') DEFAULT NULL,
  `status` enum('To Do','In Progress','Review','Completed') DEFAULT NULL,
  `estimated_hours` decimal(5,2) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `actual_hours_spent` decimal(5,2) DEFAULT NULL,
  `dependencies` int DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `project_id` (`project_id`),
  KEY `developer_id` (`developer_id`),
  KEY `dependencies` (`dependencies`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`),
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`developer_id`),
  CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`dependencies`) REFERENCES `tasks` (`task_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,131,1,'Set up project repository','Create a repository on GitHub.','High','Completed',4.00,'2024-09-10',4.00,NULL),(2,132,2,'Design wireframes','Create wireframes for the application layout.','Medium','In Progress',8.00,'2024-09-15',5.00,NULL),(3,133,3,'Develop authentication module','Implement user login functionality.','High','To Do',12.00,'2024-09-20',0.00,NULL),(4,134,4,'Setup database schema','Design the database structure.','Medium','To Do',10.00,'2024-09-25',0.00,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('Admin','Manager','Developer','Client') NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'admin_user','hashed_password_1','Admin','ALL_ACCESS'),(2,'manager_user','hashed_password_2','Manager','VIEW_ACCESS, EDIT_ACCESS'),(3,'developer_user','hashed_password_3','Developer','VIEW_ACCESS, EDIT_ACCESS'),(4,'client_user','hashed_password_4','Client','VIEW_ACCESS');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28 23:34:51
