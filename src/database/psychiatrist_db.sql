-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 04:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psychiatrist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `psychiatrist_count` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital_name`, `psychiatrist_count`, `created_at`) VALUES
(1, 'Apollo Hospital', 0, '2024-01-15'),
(2, 'Jawaharlal Nehru Medical College and Hospital', 0, '2024-01-15'),
(3, 'Indira Gandhi Institute of Medical Sciences', 0, '2024-01-15'),
(4, 'AIIMS - All India Institute Of Medical Science', 0, '2024-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `psychiatrist_id` int(11) NOT NULL,
  `psychiatrist_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `address`, `email`, `phone`, `password`, `image`, `psychiatrist_id`, `psychiatrist_name`) VALUES
(31, 'Rahul Kumar', '123 Main St, Cityville', 'patient1@example.com', '+911234567890', 'Securepassword1', 'patient1.jpg', 11, 'Dr. Aditi Sharma'),
(32, 'Neha Singh', '456 Oak Ave, Townburg', 'patient2@example.com', '+919876543210', 'Strongpassword2', 'patient2.jpg', 12, 'Dr. Rajesh Kumar'),
(33, 'Ananya Verma', '789 Pine Ln, Villagetown', 'patient3@example.com', '+915551234567', '$2b$10$LdFNcsA5eKhVDOMG9J9ML.5D2LTJCSHJLj9mBHUEsOM1FP/c6ZZQa', 'patient3.jpg', 13, 'Dr. Neha Patel'),
(34, 'Vikram Sharma', '303 Maple Blvd, Suburbia', 'patient6@example.com', '+917778889999', '$2b$10$I4xI7PBNC9vnFes9efIKgeQAXL55nGTGA7PfdR4MXVkSahlA.1Op.', 'patient6.jpg', 16, 'Dr. Amit Sharma'),
(35, 'Sandeep Joshi', '707 Pinecone Cir, Uptown', 'patient10@example.com', '+918889990000', '$2b$10$G/QRjYx/tQKXirsqojTrEu81/79t1Zc/6YRtwtNQeBEvuFGol68l.', 'patient10.jpg', 21, 'Dr. Aarav Gupta'),
(36, 'Karan Sharma', '101 Elm Rd, Hamletville', 'patient4@example.com', '+911112223333', '$2b$10$2YxUqXJPFmJ7166ry.TmS.3Ji8rthipWla9lqnZbe7iE0Oc.mL8cW', 'patient4.jpg', 14, 'Dr. Anand Singh'),
(37, 'Aishwarya Patel', '202 Cedar Dr, Countryside', 'patient5@example.com', '+94445556666', '$2b$10$XpkeeGOpdd7Mn1ckpDIfaOStb4AfCrkqdKJUYr7s6ko/NRaETHdGK', 'patient5.jpg', 15, 'Dr. Sneha Desai'),
(38, 'Preeti Gupta', '404 Spruce Ave, Citytown', 'patient7@example.com', '+919990001111', '$2b$10$jELDzlvCjUtI1CS7Rx2ggujAm6uHwjxPNzzijmqZRSqdD1VLCnQ3a', 'patient7.jpg', 17, 'Dr. Preeti Gupta'),
(39, 'Rahul Yadav', '505 Birch St, Metropolis', 'patient8@example.com', '+92223334444', '$2b$10$O6ucwy0cCBwDlD/3CdlEm.MDFVYeGUVHJ63kYUvDZ/DjU/z49/Imy', 'patient8.jpg', 18, 'Dr. Vikram Yadav'),
(40, 'Priya Verma', '606 Redwood Ln, Downtown', 'patient9@example.com', '+916667778888', '$2b$10$bSGupRI78cW/YoXqkf4kVO5rOfHGBkYWhkSxzRvSCPmzgmDXiQB7m', 'patient9.jpg', 19, 'Dr. Priya Verma'),
(81, 'Aarav Kumar', '123 Main St, Cityville', 'patient1@example.com', '+911234567890', '$2b$10$oMH8q4R4FnMhkM.kN6EFoOdo09UmGTraHHtXcXBhxpBHd4hahBgdu', 'patient1.jpg', 11, 'Dr. Aditi Sharma'),
(82, 'Sanya Singh', '456 Oak Ave, Townburg', 'patient2@example.com', '+919876543210', '$2b$10$H/akRGtWNmZLBlxhN/0G/O.SFV/n/vJENEPuKh1hQgSFqYOIxK1CG', 'patient2.jpg', 12, 'Dr. Rajesh Kumar'),
(83, 'Rohan Sharma', '789 Pine Ln, Villagetown', 'patient3@example.com', '+915551234567', '$2b$10$shU9TYBbHTc3TrDqPttNMuS46yYQXD92ejqSgCFJNA3PWSCJysuPa', 'patient3.jpg', 13, 'Dr. Neha Patel'),
(84, 'Neha Verma', '101 Elm Rd, Hamletville', 'patient4@example.com', '+911112223333', '$2b$10$isNyihttsT3qF688f6q5c.mo22X81BiTXUvLuaHOaieId5J4B3LGi', 'patient4.jpg', 14, 'Dr. Anand Singh'),
(85, 'Arjun Patel', '202 Cedar Dr, Countryside', 'patient5@example.com', '+914445556666', '$2b$10$1btI4LMUdLj4C65cOtq.du.GfATQy.RU0Uf1KowToWSz3iZlvNcC6', 'patient5.jpg', 15, 'Dr. Sneha Desai'),
(86, 'Ishita Yadav', '303 Maple Blvd, Suburbia', 'patient6@example.com', '+917778889999', '$2b$10$ktVARPrydjJgUOY8uGyVN.lAUXfcXuThIxYNiS.L1E7zUvSkfJUbG', 'patient6.jpg', 16, 'Dr. Amit Sharma'),
(87, 'Vivek Kumar', '404 Spruce Ave, Citytown', 'patient7@example.com', '+919990001111', '$2b$10$3J66kUMT0s/ZIzFVcY1Nj.US5y4i5NsMT3LNRdBOAz3opUxOpYTlK', 'patient7.jpg', 17, 'Dr. Preeti Gupta'),
(88, 'Ananya Das', '505 Birch St, Metropolis', 'patient8@example.com', '+922223334444', '$2b$10$GsddszFEQevlBtjWrGOfqe.bXqHizS1GzPfQelW9m/VL4e9jje5.y', 'patient8.jpg', 18, 'Dr. Vikram Yadav'),
(89, 'Karan Malhotra', '606 Redwood Ln, Downtown', 'patient9@example.com', '+916667778888', '$2b$10$w4XUK3vwwr6kjJxYZyCRVetOSeqncOyVI4H3MqABIpW5fUVrjap4i', 'patient9.jpg', 19, 'Dr. Priya Verma'),
(90, 'Shreya Sharma', '707 Pinecone Cir, Uptown', 'patient10@example.com', '+918889990000', '$2b$10$QG5dnZNZX1BvFJwP/ekf3eQYy00FDxcAst9EuoLFMdAYV3PPF6dPW', 'patient10.jpg', 20, 'Dr. Sandeep Joshi'),
(91, 'Rahul Kapoor', '808 Walnut Dr, Villagetown', 'rahul.kapoor@example.com', '+911223344555', '$2b$10$vWJ.25I2d6KiI0UZA0tZn.0QuPEUwdNeoOMiKAFN6y8O06HS9CscW', 'patient11.jpg', 21, 'Dr. Aarav Gupta'),
(92, 'Simran Singh', '909 Cedar St, Suburbia', 'simran.singh@example.com', '+918877665544', '$2b$10$RIeF9rReyycLOI1m4AGHr.1IjaXWbzFSbPgqxgg792yokTJKXzPwa', 'patient12.jpg', 22, 'Dr. Sanya Singh'),
(93, 'Aryan Gupta', '1010 Maple Ln, Hamletville', 'aryan.gupta@example.com', '+917766554433', '$2b$10$qdqa8TIFsPyvEeGKv.Z.qeXQGy8XSr2B4LJyRwY5y.NzCChThW/XO', 'patient13.jpg', 23, 'Dr. Rohan Sharma'),
(94, 'Nisha Verma', '1111 Pine Rd, Citytown', 'nisha.verma@example.com', '+915544332211', '$2b$10$SaQs0CWW.o8c6POGdtPFNu1U21rGbRgcSea7Yj4miVudbIIUjF3Ga', 'patient14.jpg', 24, 'Dr. Neha Verma'),
(95, 'Aditya Patel', '1212 Oak Blvd, Countryside', 'aditya.patel@example.com', '+919988877766', '$2b$10$y9iTze/kgVpxyCe/UwbF8u0po0VaUh18OECHvPtDCIOmFOiphBlTa', 'patient15.jpg', 25, 'Dr. Arjun Patel'),
(96, 'Ishaan Yadav', '1313 Cedar Ave, Metropolis', 'ishaan.yadav@example.com', '+944433322211', '$2b$10$d8392eseN2kaVMBVGOuVDOGwzKcaFrcHlbTnwZ/PZ08hFoUlMy6fO', 'patient16.jpg', 26, 'Dr. Ishita Yadav'),
(97, 'Vidya Kumar', '1414 Spruce Cir, Downtown', 'vidya.kumar@example.com', '+977766655544', '$2b$10$MvTXifiKNvhYDz.HsEmQ2uSSuCtTjp6k1UuGfUBJZIFCOxpSn1yX2', 'patient17.jpg', 27, 'Dr. Vivek Kumar'),
(98, 'Akshay Das', '1515 Birch Ln, Uptown', 'akshay.das@example.com', '+9998887776', '$2b$10$t7LfgzOlWymZNIB3vEZJ2OmCxuKedJCv1X0JfLEy3L.XcvRgfqeW2', 'patient18.jpg', 28, 'Dr. Ananya Das'),
(99, 'Tanvi Malhotra', '1616 Redwood Rd, Villagetown', 'tanvi.malhotra@example.com', '+922211122233', '$2b$10$5ggLIezLPQxh5FhsG1IkmeMWHja4tV9IlA9GgaZvucbURGC3XGlAi', 'patient19.jpg', 29, 'Dr. Karan Malhotra'),
(100, 'Rajat Sharma', '1717 Maple St, Suburbia', 'rajat.sharma@example.com', '+966655544433', '$2b$10$PbJwCYpWeQDa3XmEJWwA0uP66cgFreB/vEhnYtArPP8Mh8LTDdGk.', 'patient20.jpg', 30, 'Dr. Shreya Sharma'),
(121, 'Vikram Kapoor', '456 Skyline Rd, Cityville', 'vikram.kapoor@example.com', '+911234567890', '$2b$10$qL3fIg7Fc4dzMU93WRk0ie2UwGiI.oSPk.nRhH5nY97sMGj/dFuNS', 'patient1.jpg', 11, 'Dr. Anjali Sharma'),
(122, 'Nisha Verma', '789 Meadow Ln, Townburg', 'nisha.verma@example.com', '+919876543210', '$2b$10$nG/XFCUx/.2PY7ngl7C1/O2DqNr.Kf5Q6pLyXt.fT1b7k/cAdbGyW', 'patient2.jpg', 12, 'Dr. Rajat Kumar'),
(123, 'Rahul Sharma', '101 Sunrise Blvd, Villagetown', 'rahul.sharma@example.com', '+915551234567', '$2b$10$oeprRuIYh/s45H2cjNfI9eFfSi6nh7CZ1aM0pQ.v1ADi23jJjmcya', 'patient3.jpg', 13, 'Dr. Neha Patel'),
(124, 'Shreya Yadav', '202 Sunset Dr, Hamletville', 'shreya.yadav@example.com', '+911112223333', '$2b$10$ojIIw9O6OM8JTv3nY.M.9Ok35b0MZiyCAGJkzqe.YSigK4DbEs6/6', 'patient4.jpg', 14, 'Dr. Anand Singh'),
(125, 'Raj Malhotra', '303 Forest Ln, Countryside', 'raj.malhotra@example.com', '+94445556666', '$2b$10$zyhF1t/LQVX3DbtCxEWfN.NV0e8aBt2wON0goNYdaklLxjGyTzdd.', 'patient5.jpg', 15, 'Dr. Sneha Desai'),
(126, 'Ananya Patel', '404 River Rd, Suburbia', 'ananya.patel@example.com', '+97778889999', '$2b$10$4xbmNjKXo4tKJOtzdFGWWuol8ORuXkEt4NsFfrUdi7Hi2ia/aGUXW', 'patient6.jpg', 16, 'Dr. Amit Sharma'),
(127, 'Vivek Kumar', '505 Mountain Ave, Citytown', 'vivek.kumar@example.com', '+9990001111', '$2b$10$SzR09Je73GOZykuRcGUp8eeSw2EAl0EHpbYaKQReW8hqttcKU7rQq', 'patient7.jpg', 17, 'Dr. Preeti Gupta'),
(128, 'Anjali Das', '606 Valley St, Metropolis', 'anjali.das@example.com', '+92223334444', '$2b$10$AoGz4rV1jkllT.84AbgtceemxoraE9FEInVFFJDfjql/UHsHA3tui', 'patient8.jpg', 18, 'Dr. Vikram Yadav'),
(129, 'Karan Verma', '707 Ridge Ln, Downtown', 'karan.verma@example.com', '+96667778888', '$2b$10$001RecetZz9H/Uh1.gNyguW5Q2tibk4u27UKV/LJsmoYW5q22Rpje', 'patient9.jpg', 19, 'Dr. Priya Verma'),
(130, 'Sneha Sharma', '808 Hill Blvd, Uptown', 'sneha.sharma@example.com', '+98889990000', '$2b$10$z2PyM5jGw/Od6sbi0Rs3quothpIa.uG1wtewXa18HaBHKBeMUXTDO', 'patient10.jpg', 20, 'Dr. Sandeep Joshi'),
(131, 'Aryan Kapoor', '909 Grove Dr, Villagetown', 'aryan.kapoor@example.com', '+911223344555', '$2b$10$VBhEIAv9VmjwDmccxI3cze/Wp40dhpkXkjJAF2ij.GjqVZQgNWJza', 'patient11.jpg', 21, 'Dr. Aarav Gupta'),
(132, 'Simran Singh', '1010 Cherry St, Suburbia', 'simran.singh@example.com', '+918877665544', '$2b$10$LI82ChGbfj88dVXRrH2TN.ttGGSJPHnkmR5/JG7ACGjYvmvdafJc.', 'patient12.jpg', 22, 'Dr. Sanya Singh'),
(133, 'Arjun Gupta', '1111 Pinecone Cir, Hamletville', 'arjun.gupta@example.com', '+917766554433', '$2b$10$zSeA7cMvnbZgwz6ztHxcPO7o44JaHvEXomNne7VEagK1NoJCNSr9O', 'patient13.jpg', 23, 'Dr. Rohan Sharma'),
(134, 'Neha Yadav', '1212 Cedar Rd, Citytown', 'neha.yadav@example.com', '+915544332211', '$2b$10$lyXQwdXp.elp8E.NX8qhPuvOx38ZB8KgmikFXxxSjFQCKIkcJmGXS', 'patient14.jpg', 24, 'Dr. Neha Verma'),
(135, 'Aditya Patel', '1313 Elm Blvd, Countryside', 'aditya.patel@example.com', '+919988877766', '$2b$10$b3UbWRUD3pO1qgZq.pf03OUZ38.GzPv.BA.Io449rMzg6/BYWK.y2', 'patient15.jpg', 25, 'Dr. Arjun Patel'),
(136, 'Ishaan Verma', '1414 Birch Ln, Metropolis', 'ishaan.verma@example.com', '+944433322211', '$2b$10$8JtSnouf.PISDGbY3pm5JuPgWUpIUwbVmWjOP8KjQnqHPZ3vtNgQu', 'patient16.jpg', 26, 'Dr. Ishita Yadav'),
(137, 'Vidya Kumar', '1515 Redwood Dr, Downtown', 'vidya.kumar@example.com', '+977766655544', '$2b$10$lYhIlNG4exKlbep0t0NT5eOe7w2iCBTfZv52M8pErHB5Pohr1Oypq', 'patient17.jpg', 27, 'Dr. Vivek Kumar'),
(138, 'Akshay Das', '1616 Cedar Cir, Uptown', 'akshay.das@example.com', '+9998887776', '$2b$10$3BAu6wJ15afUNnnG103wm.vn2rqUhSHHRF1I2jKwgC5m8bLNA9Nmq', 'patient18.jpg', 28, 'Dr. Ananya Das'),
(139, 'Tanvi Malhotra', '1717 Pine Ln, Villagetown', 'tanvi.malhotra@example.com', '+922211122233', '$2b$10$QUnJALNTzZTv5b5NYOSwc.I8LOsqg6st1IlPMQ2YamGZa6L6TMU9O', 'patient19.jpg', 29, 'Dr. Karan Malhotra'),
(140, 'Rajat Sharma', '1818 Maple St, Suburbia', 'rajat.sharma@example.com', '+966655544433', '$2b$10$6RGPpIVaKR2ypA7qpOG4suEq4UNKfw5x9vPk0f7R01FAndktNqCpm', 'patient20.jpg', 30, 'Dr. Shreya Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrists`
--

CREATE TABLE `psychiatrists` (
  `id` int(11) NOT NULL,
  `psychiatrist_name` varchar(50) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `patient_count` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psychiatrists`
--

INSERT INTO `psychiatrists` (`id`, `psychiatrist_name`, `hospital`, `hospital_id`, `patient_count`, `created_at`) VALUES
(11, 'Dr Aditi Sharma', 'Apollo Hospital', 1, 3, '2024-01-15'),
(12, 'Dr Rajesh Kumar', 'Apollo Hospital', 1, 3, '2024-01-15'),
(13, 'Dr Neha Patel', 'Apollo Hospital', 1, 3, '2024-01-15'),
(14, 'Dr Anand Singh', 'Apollo Hospital', 1, 3, '2024-01-15'),
(15, 'Dr Sneha Desai', 'Apollo Hospital', 1, 3, '2024-01-15'),
(16, 'Dr Amit Sharma', 'Indira Gandhi Institute of Medical Sciences', 3, 3, '2024-01-15'),
(17, 'Dr Preeti Gupta', 'Indira Gandhi Institute of Medical Sciences', 3, 3, '2024-01-15'),
(18, 'Dr Vikram Yadav', 'Indira Gandhi Institute of Medical Sciences', 3, 3, '2024-01-15'),
(19, 'Dr Priya Verma', 'Indira Gandhi Institute of Medical Sciences', 3, 3, '2024-01-15'),
(20, 'Dr Sandeep Joshi', 'Indira Gandhi Institute of Medical Sciences', 3, 2, '2024-01-15'),
(21, 'Dr Aarav Gupta', 'Jawaharlal Nehru Medical College and Hospital', 2, 3, '2024-01-15'),
(22, 'Dr Sanya Singh', 'Jawaharlal Nehru Medical College and Hospital', 2, 2, '2024-01-15'),
(23, 'Dr Rohan Sharma', 'Jawaharlal Nehru Medical College and Hospital', 2, 2, '2024-01-15'),
(24, 'Dr Neha Verma', 'Jawaharlal Nehru Medical College and Hospital', 2, 2, '2024-01-15'),
(25, 'Dr Arjun Patel', 'Jawaharlal Nehru Medical College and Hospital', 2, 2, '2024-01-15'),
(26, 'Dr Ishita Yadav', 'AIIMS - All India Institute Of Medical Science', 4, 2, '2024-01-15'),
(27, 'Dr Vivek Kumar', 'AIIMS - All India Institute Of Medical Science', 4, 2, '2024-01-15'),
(28, 'Dr Ananya Das', 'AIIMS - All India Institute Of Medical Science', 4, 2, '2024-01-15'),
(29, 'Dr Karan Malhotra', 'AIIMS - All India Institute Of Medical Science', 4, 2, '2024-01-15'),
(30, 'Dr Shreya Sharma', 'AIIMS - All India Institute Of Medical Science', 4, 2, '2024-01-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `psychiatrists`
--
ALTER TABLE `psychiatrists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
