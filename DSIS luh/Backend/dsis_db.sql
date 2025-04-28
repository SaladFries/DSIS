-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 16, 2025 at 01:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounttbl`
--

CREATE TABLE `accounttbl` (
  `AcctID` int(10) NOT NULL,
  `Acct_LastName` varchar(50) NOT NULL,
  `Acct_FirstName` varchar(50) NOT NULL,
  `Acct_MI` varchar(50) NOT NULL,
  `Acct_Type` int(10) NOT NULL,
  `Acct_Status` int(10) NOT NULL,
  `PHFID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disease_history_tbl`
--

CREATE TABLE `disease_history_tbl` (
  `Disease_History_ID` int(10) NOT NULL,
  `History_ID` int(10) NOT NULL,
  `Notifiable_Disease_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_history_tbl`
--

INSERT INTO `disease_history_tbl` (`Disease_History_ID`, `History_ID`, `Notifiable_Disease_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(38, 3, 5),
(4, 4, 1),
(39, 4, 5),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(30, 30, 3),
(31, 31, 3),
(32, 32, 5),
(33, 33, 5),
(34, 34, 5),
(35, 35, 5),
(37, 36, 5),
(40, 37, 5),
(36, 38, 5),
(41, 39, 5),
(42, 40, 5),
(43, 41, 5),
(44, 42, 5),
(45, 43, 6),
(46, 44, 6),
(47, 45, 6),
(48, 46, 6),
(49, 47, 6),
(50, 48, 6),
(51, 49, 6),
(52, 50, 6),
(53, 51, 6),
(54, 52, 6),
(55, 53, 6),
(56, 54, 6),
(57, 55, 6),
(58, 56, 7),
(59, 57, 7),
(60, 58, 7),
(61, 59, 7),
(62, 60, 7),
(63, 61, 7),
(64, 62, 7),
(65, 63, 7),
(66, 64, 7),
(67, 65, 7),
(68, 66, 7),
(69, 67, 7),
(70, 68, 7),
(71, 69, 7),
(72, 70, 7),
(73, 71, 7),
(74, 72, 7),
(75, 73, 7),
(76, 74, 7),
(77, 75, 7),
(78, 76, 7),
(79, 77, 8),
(80, 78, 8),
(81, 79, 9),
(82, 80, 9),
(83, 81, 9),
(84, 82, 9),
(85, 83, 9),
(86, 84, 9),
(87, 85, 9),
(88, 86, 9),
(89, 87, 9),
(90, 88, 9),
(91, 89, 9),
(92, 90, 9),
(93, 91, 9),
(94, 92, 9),
(95, 93, 9),
(96, 94, 9),
(97, 95, 9);

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptoms_tbl`
--

CREATE TABLE `disease_symptoms_tbl` (
  `Disease_Symptom_ID` int(10) NOT NULL,
  `Symptom_ID` int(10) NOT NULL,
  `Notifiable_Disease_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_symptoms_tbl`
--

INSERT INTO `disease_symptoms_tbl` (`Disease_Symptom_ID`, `Symptom_ID`, `Notifiable_Disease_ID`) VALUES
(1, 1, 1),
(35, 1, 3),
(55, 1, 5),
(65, 1, 6),
(56, 2, 5),
(2, 3, 1),
(57, 3, 5),
(78, 3, 6),
(58, 4, 5),
(59, 5, 5),
(60, 6, 5),
(61, 7, 5),
(62, 8, 5),
(63, 9, 5),
(34, 10, 2),
(54, 10, 3),
(64, 10, 5),
(76, 10, 6),
(3, 11, 1),
(4, 12, 1),
(5, 13, 1),
(7, 14, 1),
(8, 15, 1),
(10, 16, 1),
(11, 17, 1),
(12, 18, 1),
(13, 19, 1),
(14, 20, 1),
(15, 21, 1),
(16, 22, 1),
(17, 23, 1),
(18, 24, 2),
(19, 25, 2),
(20, 26, 2),
(21, 27, 2),
(22, 28, 2),
(23, 29, 2),
(71, 29, 6),
(24, 30, 2),
(25, 31, 2),
(26, 32, 2),
(27, 33, 2),
(28, 34, 2),
(29, 35, 2),
(30, 36, 2),
(31, 37, 2),
(32, 38, 2),
(33, 39, 2),
(36, 40, 3),
(37, 41, 3),
(66, 41, 6),
(38, 42, 2),
(39, 43, 3),
(49, 43, 3),
(79, 43, 6),
(40, 44, 3),
(41, 45, 3),
(42, 46, 3),
(43, 47, 3),
(44, 48, 3),
(45, 49, 3),
(46, 50, 3),
(47, 51, 3),
(48, 51, 3),
(50, 53, 3),
(51, 54, 3),
(52, 55, 3),
(53, 56, 3),
(67, 57, 6),
(68, 58, 6),
(69, 59, 6),
(70, 60, 6),
(72, 61, 6),
(73, 62, 6),
(74, 63, 6),
(75, 64, 6),
(77, 65, 6),
(80, 66, 6),
(81, 67, 6),
(82, 68, 7),
(83, 69, 7),
(84, 70, 7),
(85, 71, 7),
(6, 72, 1),
(9, 73, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disease_tests_tbl`
--

CREATE TABLE `disease_tests_tbl` (
  `Disease_Test_ID` int(10) NOT NULL,
  `Test_ID` int(10) NOT NULL,
  `Notifiable_Disease_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_tests_tbl`
--

INSERT INTO `disease_tests_tbl` (`Disease_Test_ID`, `Test_ID`, `Notifiable_Disease_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 3),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(10, 10, 6),
(11, 11, 6),
(12, 12, 6),
(13, 13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `disease_test_results_tbl`
--

CREATE TABLE `disease_test_results_tbl` (
  `Test_Result_ID` int(10) NOT NULL,
  `Test_Specimen_Date_Taken` date NOT NULL,
  `Test_Results` varchar(50) NOT NULL,
  `Test_Result_Date` date NOT NULL,
  `Sus_ID` int(10) NOT NULL,
  `Disease_Test_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_tbl`
--

CREATE TABLE `history_tbl` (
  `History_ID` int(10) NOT NULL,
  `History_Name` varchar(200) NOT NULL,
  `History_Remarks` varchar(2000) NOT NULL,
  `History_Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_tbl`
--

INSERT INTO `history_tbl` (`History_ID`, `History_Name`, `History_Remarks`, `History_Category`) VALUES
(1, 'History of neurologic disorder?', 'Specify', '1'),
(2, 'Travel to another province, city or country within 60 days prior to onset of paralysis?', 'specify', '1'),
(3, 'AFP Traveled from', '', '2'),
(4, 'AFP Traveled to', '', ''),
(5, 'Other AFP cases in patient\'s community within 60 days of patient\'s paralysis', '', '3'),
(6, 'Does the patient had any history of injection, fall, trauma, and/or animal bite?', '', '1'),
(7, 'Total OPV doses received', '', '4'),
(8, 'Date of last dose of OPV', '', '2'),
(9, 'Is this a \"Hot case\" ?', '', '3'),
(10, 'Date of vaccination', '', '2'),
(11, 'Name of vaccinator', '', '5'),
(12, 'Time of vaccination', '', '6'),
(13, 'Vaccinator', 'Physician; Nurse; Midwife; Other', '7'),
(14, 'Place of vaccination', 'Health Center; BHS; Public Hospital; Private Hospital; Private Clinic; Outreach; Others', '7'),
(15, 'Did the patient take other medications at the time of vaccination?', '', '1'),
(16, 'Does the patient had history of similar reaction?', '', '3'),
(17, 'Does the patient had history of allergy?', '', '1'),
(18, 'Birth defects?', '', '3'),
(19, 'Family history of similar event?', '', '3'),
(20, 'Is the patient suffering from other medical condition?', '', '1'),
(21, 'Is the patient\'s occupation associated with animals or agriculture?', '', '3'),
(22, 'Has the patient been exposed to Anthrax Vaccine or to anthrax-vaccinated animals?', '', '3'),
(23, 'Does the patient have occupational or other exposure to hides, wool, furs, bone meal or other animal products?', '', '3'),
(24, 'Contact with live or dead animals? (cattle, sheep, goats, horses, pigs and other herbivores both livestock and wildlife)', '', '3'),
(25, 'Does the patient have a history of travel beyond his/her usual place of residence/surroundings?', '', '3'),
(26, 'Does the patient work in a laboratory?', '', '3'),
(27, 'Have any household members experienced similar symptoms recently?', '', '3'),
(28, 'Has the patient eaten undercooked meat? (cattle, sheep, goats, horses, pigs and other herbivores both livestock and wildlife)', '', '3'),
(29, 'Did the patient receive unusual letters or packages? (e.g. containing threats or unusual messages)', '', '3'),
(30, 'Has the patient opened mails for others?', '', '3'),
(31, 'Was the patient present or nearby when an envelope that contained any form of powder was opened?', '', '3'),
(32, 'Patient received measles-containing vaccine (MCV)? If yes, indicate the number of doses whichever is applicable:', 'MV; MR; MMR', '8'),
(33, 'Date last dose received MCV', '', '2'),
(34, 'Was the vaccination received during special campaigns?', '3', ''),
(35, 'If patient did not receive any MCV, state the reason/s', 'Mother was busy; Against belief; Medical contradiction; Fear of side effects; Child was sick; No vaccine available; Vaccinator not available; Not eligible for vaccination; Forgot schedule; Other reasons, specify', '9'),
(36, 'History of travel in another province, city or country:', '', '1'),
(37, 'Indicate timing of travel relative to rash onset:', '<7 days from rash onset; 7-21 days from rash onset; >21 days from rash onset', '7'),
(38, 'Was the patient given Vitamin A during this illness?', '', '3'),
(39, 'Tick the type of place where exposure probably occur:', 'Day Care; Barangay; Home; School; Health Care Facility; Dormitory; Work place; Others, specify', '7'),
(40, 'Was there contact with a measles/rubella case (or individual rash and fever) 7-21 days prior to rash onset?', '', '10'),
(41, 'Name of barangay and municipality/city:', '5', ''),
(42, 'Are there other known cases with fever and rash (regardless of presence of 3 C\'s) in the community?', '', '3'),
(43, 'Were blood / CSF extracted before the first dose of antibiotics was given to the patient?', '', '3'),
(44, 'What antibiotics were given in the hospital?', '', '5'),
(45, 'Did the PATIENT or CLOSE CONTACT/S interact with a suspected or confirmed meningococcal disease within 2 weeks before onset of illness', 'Yes, the patient; Yes, close contact/s; (name/s)', '7'),
(46, 'If yes, what was the name of the suspected or confirmed meningocooccal case?', '', '5'),
(47, 'What is the address of the suspected or confirmed meningococcal case?', '', '5'),
(48, 'Where did the patient or close contact/s interact with the meningococcal case?', '', '5'),
(49, 'When? MM/DD/YY', '', '2'),
(50, 'Number of days', '', '5'),
(51, 'Did the PATIENT travel within 2 weeks prior to illness?', '', '1'),
(52, 'Did a CLOSE CONTACT/S of the patient travel within 2 weeks prior to illness?', '', '1'),
(53, 'Did the PATIENT attend any social gathering within 2 weeks prior to illness?', '', '1'),
(54, 'Did the PATIENT have upper respiratory tract infection within 2 weeks prior to illness?', '', '3'),
(55, 'Did a CLOSE CONTACT/S have upper respiratory tract infection within 2 weeks prior to the patient\'s illness?', '', '1'),
(56, 'No. of total pregnancies', '', '5'),
(57, 'Live births:', '', '5'),
(58, 'Living children', '', '5'),
(59, 'How many prenatal care visits did the mother make to a health facility during her last pregnancy?', '', '5'),
(60, 'When was the first prenatal visit?', '', '2'),
(61, 'Is the prenatal care history reported by:', 'Card; Recall; Both; Unknown; Reason', '7'),
(62, 'How many doses of TT has the mother received', '', 'description'),
(63, 'Date last dose given:', '', '2'),
(64, 'If she received 2 doses, were they given during this pregnancy?', '', '3'),
(65, 'Is the immunization status reported by', 'Card; Recall; Both; Unknown', '7'),
(66, 'TT1', '', '2'),
(67, 'TT2', '', '2'),
(68, 'TT3', '', '2'),
(69, 'TT4', '', '2'),
(70, 'TT5', '', '2'),
(71, 'Is the child protected at birth?', '', '3'),
(72, 'Place of delivery', 'Home; Hospital/lying-in/clinic; Other, specify:', '7'),
(73, 'Who attended delivery?', 'Physician; Nurse; Midwife; Hilot; Unknown; Other, specify;', '7'),
(74, 'Cord was cut using:', 'Scissors; Blade; Bamboo; Unknown; Other, specify', '7'),
(75, 'If Hilot, was he/she trained?', '', '3'),
(76, 'Stump treated (dressed) with', 'Alcohol; Providone iodine; Unknown; Other, specify', '7'),
(77, 'Specify place where suspected shellfish was harvested:', '', '5'),
(78, 'Are there other members of household/community who shared the same meal?', '', '3'),
(79, 'Type of exposure', 'Bite; Saliva; Scratch; Unknown; Other, specify', '7'),
(80, 'Date if Bite', '', '2'),
(81, 'Place when bitten:', '', '5'),
(82, 'Site of Body bitten:', '', '5'),
(83, 'Category of Exposure', 'Feeding/touching an animal; Licking of intact skin(with reliable history and thorough physical examination; Exposure to patient with signs and symptoms of rabies by sharing of eating or drinking utensils; Casual contact(talking to, visiting and feeding suspected rabies case) and routine delivery of health care to patient with signs and symptoms of rabies; Nibbling of uncovered skin with or without bruising/hematoma; Minor scratches/abrasions without bleeding; Minor scratches/abrasions which are induced to bleed; All Category II exposures on the head and neck area are considered Category III and should be managed as such; Transdermal bites(puncture wounds, lacerations, avulsions) or scratches/abrasions with spontaneous bleeding; Licks on broken skin; Exposure to a rabies patient through bites, contamination of mucous membranes(eyes, oral/nasal mucosa, genital/anal mucous membranes) or open skin lesions with body fluids through splattering and mouth-to-mouth resuscitation; Handing of infected carcass of ingestion of raw infected meat; All Category II exposures on head and neck area', '7'),
(84, 'Type of animal:', 'dog; cat; bat; Other, specify', '7'),
(85, 'Lab diagnosis done?', '', '1'),
(86, 'Animal status:', 'Domestic; Stray; Wild; Other, specify', '7'),
(87, 'Outcome of biting animal:', 'Alive; Died; Killed intentionally; Place of incidence', '7'),
(88, 'Animal vaccination history', 'Vaccinated; Unvaccinated; Unknown', '7'),
(89, 'Wound cleaned?', '', '3'),
(90, 'Patient given RIG?', '', '3'),
(91, 'Patient given rabies vaccine?', '', '3'),
(92, 'Date vaccine started', '', '2'),
(93, 'Brand Name of Vaccine:', '', '5'),
(94, 'Route of Administration', 'IM; Intradermal', '7'),
(95, 'Post-exposure completed', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `icd10tbl`
--

CREATE TABLE `icd10tbl` (
  `ICD10ID` varchar(20) NOT NULL,
  `ICD10Name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `icd10tbl`
--

INSERT INTO `icd10tbl` (`ICD10ID`, `ICD10Name`) VALUES
('999', 'Unknown'),
('A00', 'Cholera'),
('A01', 'Typhoid and paratyphoid fevers'),
('A09.0', 'Acute Bloody Diarrhea'),
('A22', 'Anthrax'),
('A27', 'Leptospirosis'),
('A33', 'Neonatal Tetanus'),
('A35', 'Non-neonatal Tetanus'),
('A36', 'Diphteria'),
('A37', 'Whooping cough'),
('A39', 'Meningococcal Dsiease'),
('A82', 'Rabies'),
('A90', 'Dengue'),
('A91', 'Dengue Hemorrhagic Fever'),
('B05', 'Measles'),
('B15', 'Acute Viral Hepatitis'),
('B54', 'Malaria'),
('G00', 'Bacterial Meningitis'),
('G83.9', 'Acute Flaccid Paralysis'),
('J09.X', 'Human Avian Influenza'),
('J11.1', 'Influenza-like illness'),
('T61.2', 'Paralytic Shellfish Poisoning');

-- --------------------------------------------------------

--
-- Table structure for table `notifiable_disease_tbl`
--

CREATE TABLE `notifiable_disease_tbl` (
  `Notifiable_Disease_ID` int(10) NOT NULL,
  `Notifiable_Disease_Name` varchar(500) NOT NULL,
  `Notifiable_Disease_Description` varchar(500) NOT NULL,
  `Notifiable_Disease_Category_Type` int(10) NOT NULL,
  `ICD10ID` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifiable_disease_tbl`
--

INSERT INTO `notifiable_disease_tbl` (`Notifiable_Disease_ID`, `Notifiable_Disease_Name`, `Notifiable_Disease_Description`, `Notifiable_Disease_Category_Type`, `ICD10ID`) VALUES
(1, 'Acute Flaccid Paralysis', '', 1, 'G83.9'),
(2, 'Adverse Event Following Immunization (AEFI)', '', 1, '999'),
(3, 'Anthrax', '', 1, 'A22'),
(4, 'Human Avian Influenz', '', 1, 'J09.X'),
(5, 'Measles', '', 1, 'B05'),
(6, 'Meningococcal Disease', '', 1, 'A39'),
(7, 'Neonatal Tetanus', '', 1, 'A33'),
(8, 'Paralytic Shelffish Poisoning', '', 1, 'T61.2'),
(9, 'Rabies', '', 1, 'A82'),
(10, 'Sever Acute Respiratory Syndrome (SARS)', '', 1, '999'),
(11, 'Acute Bloody Diarrhea', '', 2, 'A09.0'),
(12, 'Acute Encephalitis Syndrome', '', 2, '999'),
(13, 'Acute Hemorrhagic Fever Syndrome', '', 2, '999'),
(14, 'Acute Viral Hepatits', '', 2, 'B15'),
(15, 'Bacterial Meningitis', '', 2, 'G00'),
(16, 'Cholera', '', 2, 'A00'),
(17, 'Dengue', '', 2, 'A90'),
(18, 'Diphtheria', '', 2, 'A36'),
(19, 'Hand, Foot and Mouth Disease (HFMD)', '', 2, '999'),
(20, 'Influenza-like Illness', '', 2, '999'),
(21, 'Leptospirosis', '', 2, 'A27'),
(22, 'Malaria', '', 2, 'B54'),
(23, 'Non-neonatal Tetanus', '', 2, 'A35'),
(24, 'Pertussis', '', 2, 'A37'),
(25, 'Typhoid and Paratyhoid Fever', '', 2, 'A01');

-- --------------------------------------------------------

--
-- Table structure for table `notificationtbl`
--

CREATE TABLE `notificationtbl` (
  `NotifID` int(10) NOT NULL,
  `NotifRemarks` varchar(500) NOT NULL,
  `AcctIDSender` int(10) NOT NULL,
  `AcctIDReceiver` int(10) NOT NULL,
  `PotentialSuspect_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patientinfotbl`
--

CREATE TABLE `patientinfotbl` (
  `Patient_ID` int(10) NOT NULL,
  `Patient_LastName` varchar(50) NOT NULL,
  `Patient_FirstName` varchar(50) NOT NULL,
  `Patient_MI` varchar(10) NOT NULL,
  `Patient_Suffix` varchar(50) NOT NULL,
  `Patient_Bgy` varchar(50) NOT NULL,
  `Patient_Muni` varchar(50) NOT NULL,
  `Patient_Province` varchar(50) NOT NULL,
  `Patient_Bday` date NOT NULL,
  `Patient_Gender` varchar(10) NOT NULL,
  `Patient_Preggers` varchar(10) NOT NULL,
  `Patient_Preggers_Weeks` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_disease_history`
--

CREATE TABLE `patient_disease_history` (
  `Patient_History_tbl` int(10) NOT NULL,
  `Patient_History_Status` varchar(50) NOT NULL,
  `Patient_History_Remarks` varchar(50) NOT NULL,
  `Patient_History_Date` date NOT NULL,
  `SusID` int(10) NOT NULL,
  `Disease_History_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `potential_suspect_tbl`
--

CREATE TABLE `potential_suspect_tbl` (
  `PotentialSuspect_ID` int(10) NOT NULL,
  `PotentialSuspect_LastName` varchar(50) NOT NULL,
  `PotentialSuspect_FirstName` varchar(50) NOT NULL,
  `PotentialSuspect_MI` varchar(50) NOT NULL,
  `PotentialSuspect_Suffix` varchar(50) NOT NULL,
  `PotentialSuspect_Bgy` varchar(50) NOT NULL,
  `PotentialSuspect_Muni` varchar(50) NOT NULL,
  `PotentialSuspect_Province` varchar(50) NOT NULL,
  `Notifiable_Disease_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publichealthfacilitytbl`
--

CREATE TABLE `publichealthfacilitytbl` (
  `PHFID` int(10) NOT NULL,
  `PHFName` varchar(50) NOT NULL,
  `PHFBgy` varchar(50) NOT NULL,
  `PHFMunicipality` varchar(50) NOT NULL,
  `PHFProvince` varchar(50) NOT NULL,
  `PHFArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suspectedcasetbl`
--

CREATE TABLE `suspectedcasetbl` (
  `SusID` int(10) NOT NULL,
  `SusAdmitted` int(5) NOT NULL,
  `SusDateAdmitted` datetime(6) DEFAULT NULL,
  `SusDateReported` datetime(6) NOT NULL,
  `SusDateInvestigated` datetime(6) NOT NULL,
  `PatientID` int(10) NOT NULL,
  `Notifiable_Disease_ID` int(10) NOT NULL,
  `PHFID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suspected_case_symptoms_tbl`
--

CREATE TABLE `suspected_case_symptoms_tbl` (
  `Sus_Case_Symptoms_ID` int(10) NOT NULL,
  `Sus_Case_Symptom_Status` varchar(50) NOT NULL,
  `Sus_Case_Symptom_Remarks` varchar(50) NOT NULL,
  `SusID` int(10) NOT NULL,
  `Disease_Symptom_ID` int(10) NOT NULL,
  `Sus_Case_Date_Onset` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `symptoms_tbl`
--

CREATE TABLE `symptoms_tbl` (
  `Symptom_ID` int(10) NOT NULL,
  `Symptom_Name` varchar(100) NOT NULL,
  `Symptom_Remarks` varchar(200) NOT NULL,
  `Symptom_Specific_Choices` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms_tbl`
--

INSERT INTO `symptoms_tbl` (`Symptom_ID`, `Symptom_Name`, `Symptom_Remarks`, `Symptom_Specific_Choices`) VALUES
(1, 'Fever', '', ''),
(2, 'Rash', '', ''),
(3, 'Cough', '', ''),
(4, 'Koplik sign', '', ''),
(5, 'Runny nose/coryza', '', ''),
(6, 'Red eyes / conjuvitis', '', ''),
(7, 'Arthralgia / Arthritis', '', ''),
(8, 'Swollen lymphatic nodules', '', 'cervical; post-auricular; sub-occipital; others, specify'),
(9, 'Complications', '', ''),
(10, 'Others', 'specify', ''),
(11, 'Diarrhea/Vomiting', '', ''),
(12, 'Muscle Pain', '', ''),
(13, 'Meningeal signs', '', ''),
(14, 'Paralysis Present at birth?', '', ''),
(15, 'Paralysis Assymetrical?', '', ''),
(16, 'Direction of Paralysis', '', 'Ascending, Descending, Unknown'),
(17, 'Flaccid Paralysis Right Arm', '', ''),
(18, 'Flaccid Paralysis Left Arm ', '', ''),
(19, 'Flaccid Paralysis Right Leg', '', ''),
(20, 'Flaccid Paralysis Left Leg', '', ''),
(21, 'Flaccid Paralysis Breathing Muscles', '', ''),
(22, 'Flaccid Paralysis Neck Muscles', '', ''),
(23, 'Flaccid Paralysis Facial Muscles', '', ''),
(24, 'Local Injection Site Abscess', '', ''),
(25, 'Lymphadenitis', '', ''),
(26, 'Severe local reaction', '(redness and/or swelling centered at the site of injection)', ''),
(27, 'Acute paralysis', '', ''),
(28, 'Encephalopathy', '', ''),
(29, 'Seizures', '', ''),
(30, 'Anaphylactoid reaction', '', ''),
(31, 'Anaphylactic shock', '', ''),
(32, 'Neuritis', '', ''),
(33, 'Disseminated BCG infections', '', ''),
(34, 'Hypotensive-hyporesponsive episode', '(shock collapse)', ''),
(35, 'Osteitis / osteomyelitis', '', ''),
(36, 'Persistent screaming', '(inconsolable continuous crying lasting at least 3 hours)', ''),
(37, 'Sepsis', '', ''),
(38, 'Thrombocytopenia', '', ''),
(39, 'Toxic shock syndrome', '', ''),
(40, 'Upset stomach (nausea)', '', ''),
(41, 'Headache', '', ''),
(42, 'Dry cough', '', ''),
(43, 'Sore throat', '', ''),
(44, 'Trouble swallowing', '', ''),
(45, 'Trouble breathing', '', ''),
(46, 'Stomach pain', '', ''),
(47, 'Vomiting blood', '', ''),
(48, 'Bloody diarrhea', '', ''),
(49, 'Sweating excessively', '', ''),
(50, 'Extreme tiredness', '', ''),
(51, 'Pain or tightness in the chest', '', ''),
(52, 'Sore muscles', '', ''),
(53, 'Neck pain', '', ''),
(54, 'Itchy skin', '', ''),
(55, 'Black scab on skin', '', ''),
(56, 'Skin lesions', 'Describe lesion', ''),
(57, 'Maculapapular rash', '', ''),
(58, 'Petechia', '', ''),
(59, 'Purpura', '', ''),
(60, 'Other lesions', 'specify', ''),
(61, 'Stiff neck', '', ''),
(62, 'Vomiting', '', ''),
(63, 'Change of sensorium', '', ''),
(64, 'Drowsiness', '', ''),
(65, 'Malaise', '', ''),
(66, 'Runny nose', '', ''),
(67, 'Dyspnea', '', ''),
(68, 'In the first 2 days of life did the baby has normal suck and cry?   ', '', ''),
(69, 'After 2 days of life, was the baby unable to suck and cry normally?', '', ''),
(70, 'After 2 days of life, did the baby have body stiffness or muscle spasm? ', '', ''),
(71, 'Was the umbilical stump infected?', '(bad smell, pus)', ''),
(72, 'Paralysis', '', ''),
(73, 'Paralysis fully developed within 3 to 14 days from onset illness?', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_tbl`
--

CREATE TABLE `test_tbl` (
  `Test_ID` int(10) NOT NULL,
  `Test_Name` varchar(50) NOT NULL,
  `Test_Specimen_Type` varchar(50) NOT NULL,
  `Test_Remarks` varchar(500) NOT NULL,
  `Test_Possible_Results` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_tbl`
--

INSERT INTO `test_tbl` (`Test_ID`, `Test_Name`, `Test_Specimen_Type`, `Test_Remarks`, `Test_Possible_Results`) VALUES
(1, 'Sensory Status', 'Muscle Test', '', ''),
(2, 'Deep Tendon Reflexes', 'Muscle Test', '', ''),
(3, 'Motor Status', 'Muscle Test', '', ''),
(4, 'Stool Sample', 'Stool', '', 'Neg; 1; 2; 3; NPEV; Other, specify'),
(5, 'Isolation of Bacillus antracis', 'Blood, lesions, discharges, stool', '', 'Positive; Negative; I; U'),
(6, 'Measles IgM', 'Serum, Dried Blood Spot', '', ''),
(7, 'Rubella IgM', 'Serum, Dried Blood Spot', '', ''),
(8, 'Virus Isolation Result', 'Oropharyngeal/Nasopharyngeal swab', '', ''),
(9, 'PCR Result', 'Swab, OraCol', '', ''),
(10, 'Culture', 'CSF', '', ''),
(11, 'Latex agglutination', 'CSF', '', ''),
(12, 'Gram stain', 'CSF', '', ''),
(13, 'Culture', 'Blood', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounttbl`
--
ALTER TABLE `accounttbl`
  ADD PRIMARY KEY (`AcctID`),
  ADD KEY `PHFID` (`PHFID`);

--
-- Indexes for table `disease_history_tbl`
--
ALTER TABLE `disease_history_tbl`
  ADD PRIMARY KEY (`Disease_History_ID`),
  ADD KEY `History_ID` (`History_ID`,`Notifiable_Disease_ID`),
  ADD KEY `Notifiable_Disease_ID` (`Notifiable_Disease_ID`);

--
-- Indexes for table `disease_symptoms_tbl`
--
ALTER TABLE `disease_symptoms_tbl`
  ADD PRIMARY KEY (`Disease_Symptom_ID`),
  ADD KEY `Symptom_ID` (`Symptom_ID`,`Notifiable_Disease_ID`),
  ADD KEY `Notifiable_Disease_ID` (`Notifiable_Disease_ID`);

--
-- Indexes for table `disease_tests_tbl`
--
ALTER TABLE `disease_tests_tbl`
  ADD PRIMARY KEY (`Disease_Test_ID`),
  ADD KEY `Test_ID` (`Test_ID`,`Notifiable_Disease_ID`),
  ADD KEY `Notifiable_Disease_ID` (`Notifiable_Disease_ID`);

--
-- Indexes for table `disease_test_results_tbl`
--
ALTER TABLE `disease_test_results_tbl`
  ADD PRIMARY KEY (`Test_Result_ID`),
  ADD KEY `Sus_ID` (`Sus_ID`,`Disease_Test_ID`),
  ADD KEY `Disease_Test_ID` (`Disease_Test_ID`);

--
-- Indexes for table `history_tbl`
--
ALTER TABLE `history_tbl`
  ADD PRIMARY KEY (`History_ID`);

--
-- Indexes for table `icd10tbl`
--
ALTER TABLE `icd10tbl`
  ADD PRIMARY KEY (`ICD10ID`);

--
-- Indexes for table `notifiable_disease_tbl`
--
ALTER TABLE `notifiable_disease_tbl`
  ADD PRIMARY KEY (`Notifiable_Disease_ID`),
  ADD KEY `ICD10ID` (`ICD10ID`);

--
-- Indexes for table `notificationtbl`
--
ALTER TABLE `notificationtbl`
  ADD PRIMARY KEY (`NotifID`),
  ADD KEY `AcctIDSender` (`AcctIDSender`,`AcctIDReceiver`),
  ADD KEY `AcctIDReceiver` (`AcctIDReceiver`),
  ADD KEY `PotentialSuspect_ID` (`PotentialSuspect_ID`);

--
-- Indexes for table `patientinfotbl`
--
ALTER TABLE `patientinfotbl`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `patient_disease_history`
--
ALTER TABLE `patient_disease_history`
  ADD PRIMARY KEY (`Patient_History_tbl`),
  ADD KEY `SusID` (`SusID`,`Disease_History_ID`),
  ADD KEY `Disease_History_ID` (`Disease_History_ID`);

--
-- Indexes for table `potential_suspect_tbl`
--
ALTER TABLE `potential_suspect_tbl`
  ADD PRIMARY KEY (`PotentialSuspect_ID`),
  ADD KEY `Notifiable_Disease_ID` (`Notifiable_Disease_ID`);

--
-- Indexes for table `publichealthfacilitytbl`
--
ALTER TABLE `publichealthfacilitytbl`
  ADD PRIMARY KEY (`PHFID`);

--
-- Indexes for table `suspectedcasetbl`
--
ALTER TABLE `suspectedcasetbl`
  ADD PRIMARY KEY (`SusID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `PHFID` (`PHFID`),
  ADD KEY `Notifiable_Disease_ID` (`Notifiable_Disease_ID`);

--
-- Indexes for table `suspected_case_symptoms_tbl`
--
ALTER TABLE `suspected_case_symptoms_tbl`
  ADD PRIMARY KEY (`Sus_Case_Symptoms_ID`),
  ADD KEY `SusID` (`SusID`),
  ADD KEY `Disease_Symptom_ID` (`Disease_Symptom_ID`);

--
-- Indexes for table `symptoms_tbl`
--
ALTER TABLE `symptoms_tbl`
  ADD PRIMARY KEY (`Symptom_ID`),
  ADD UNIQUE KEY `Symptom_Name` (`Symptom_Name`);

--
-- Indexes for table `test_tbl`
--
ALTER TABLE `test_tbl`
  ADD PRIMARY KEY (`Test_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounttbl`
--
ALTER TABLE `accounttbl`
  ADD CONSTRAINT `accounttbl_ibfk_1` FOREIGN KEY (`PHFID`) REFERENCES `publichealthfacilitytbl` (`PHFID`) ON UPDATE CASCADE;

--
-- Constraints for table `disease_history_tbl`
--
ALTER TABLE `disease_history_tbl`
  ADD CONSTRAINT `disease_history_tbl_ibfk_1` FOREIGN KEY (`History_ID`) REFERENCES `history_tbl` (`History_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `disease_history_tbl_ibfk_2` FOREIGN KEY (`Notifiable_Disease_ID`) REFERENCES `notifiable_disease_tbl` (`Notifiable_Disease_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `disease_symptoms_tbl`
--
ALTER TABLE `disease_symptoms_tbl`
  ADD CONSTRAINT `disease_symptoms_tbl_ibfk_1` FOREIGN KEY (`Symptom_ID`) REFERENCES `symptoms_tbl` (`Symptom_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `disease_symptoms_tbl_ibfk_2` FOREIGN KEY (`Notifiable_Disease_ID`) REFERENCES `notifiable_disease_tbl` (`Notifiable_Disease_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `disease_tests_tbl`
--
ALTER TABLE `disease_tests_tbl`
  ADD CONSTRAINT `disease_tests_tbl_ibfk_1` FOREIGN KEY (`Notifiable_Disease_ID`) REFERENCES `notifiable_disease_tbl` (`Notifiable_Disease_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `disease_tests_tbl_ibfk_2` FOREIGN KEY (`Test_ID`) REFERENCES `test_tbl` (`Test_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `disease_test_results_tbl`
--
ALTER TABLE `disease_test_results_tbl`
  ADD CONSTRAINT `disease_test_results_tbl_ibfk_1` FOREIGN KEY (`Disease_Test_ID`) REFERENCES `disease_tests_tbl` (`Disease_Test_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `disease_test_results_tbl_ibfk_2` FOREIGN KEY (`Sus_ID`) REFERENCES `suspectedcasetbl` (`SusID`) ON UPDATE CASCADE;

--
-- Constraints for table `notifiable_disease_tbl`
--
ALTER TABLE `notifiable_disease_tbl`
  ADD CONSTRAINT `notifiable_disease_tbl_ibfk_1` FOREIGN KEY (`ICD10ID`) REFERENCES `icd10tbl` (`ICD10ID`) ON UPDATE CASCADE;

--
-- Constraints for table `notificationtbl`
--
ALTER TABLE `notificationtbl`
  ADD CONSTRAINT `notificationtbl_ibfk_1` FOREIGN KEY (`AcctIDSender`) REFERENCES `accounttbl` (`AcctID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `notificationtbl_ibfk_2` FOREIGN KEY (`AcctIDReceiver`) REFERENCES `accounttbl` (`AcctID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `notificationtbl_ibfk_3` FOREIGN KEY (`PotentialSuspect_ID`) REFERENCES `potential_suspect_tbl` (`PotentialSuspect_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `patient_disease_history`
--
ALTER TABLE `patient_disease_history`
  ADD CONSTRAINT `patient_disease_history_ibfk_1` FOREIGN KEY (`Disease_History_ID`) REFERENCES `disease_history_tbl` (`Disease_History_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_disease_history_ibfk_2` FOREIGN KEY (`SusID`) REFERENCES `suspectedcasetbl` (`SusID`) ON UPDATE CASCADE;

--
-- Constraints for table `potential_suspect_tbl`
--
ALTER TABLE `potential_suspect_tbl`
  ADD CONSTRAINT `potential_suspect_tbl_ibfk_1` FOREIGN KEY (`Notifiable_Disease_ID`) REFERENCES `notifiable_disease_tbl` (`Notifiable_Disease_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `suspectedcasetbl`
--
ALTER TABLE `suspectedcasetbl`
  ADD CONSTRAINT `suspectedcasetbl_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientinfotbl` (`Patient_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suspectedcasetbl_ibfk_2` FOREIGN KEY (`Notifiable_Disease_ID`) REFERENCES `notifiable_disease_tbl` (`Notifiable_Disease_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suspectedcasetbl_ibfk_3` FOREIGN KEY (`PHFID`) REFERENCES `publichealthfacilitytbl` (`PHFID`) ON UPDATE CASCADE;

--
-- Constraints for table `suspected_case_symptoms_tbl`
--
ALTER TABLE `suspected_case_symptoms_tbl`
  ADD CONSTRAINT `suspected_case_symptoms_tbl_ibfk_1` FOREIGN KEY (`Disease_Symptom_ID`) REFERENCES `disease_symptoms_tbl` (`Disease_Symptom_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suspected_case_symptoms_tbl_ibfk_2` FOREIGN KEY (`SusID`) REFERENCES `suspectedcasetbl` (`SusID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
