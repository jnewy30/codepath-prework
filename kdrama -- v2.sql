-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2023 at 01:48 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kdrama`
--
CREATE DATABASE IF NOT EXISTS `kdrama` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kdrama`;

-- --------------------------------------------------------

--
-- Table structure for table `kdrama`
--

DROP TABLE IF EXISTS `kdrama`;
CREATE TABLE IF NOT EXISTS `kdrama` (
  `kdrama_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `release_year` varchar(50) DEFAULT NULL,
  `budget` varchar(50) DEFAULT NULL,
  `runtime` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `imagepath` varchar(128) NOT NULL,
  PRIMARY KEY (`kdrama_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kdrama`
--

INSERT INTO `kdrama` (`kdrama_id`, `title`, `description`, `director`, `release_year`, `budget`, `runtime`, `rating`, `genre`, `imagepath`) VALUES
(1, 'Parasite', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'Bong Joon Ho', '2019', '$11,400,000', '2h 12min', 'R', 'Drama, Thriller', 'img/parasite'),
(2, 'Squid Game', 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games. Inside, a tempting prize awaits with deadly high stakes. A survival game that has a whopping 45.6 billion-won prize at stake.', 'Hwang Dong-hyuk', '2021', '$21,400,000', '8h 5min', 'TV-MA', 'Action, Drama, Mystery, Thriller', 'img/squid_game'),
(3, 'Train to Busan', 'While a zombie virus breaks out in South Korea, passengers struggle to survive on the train from Seoul to Busan.', 'Sang-ho Yeon', '2016', '$8,500,000', '1h 58min', 'Not Rated', 'Action, Horror, Thriller', 'img/train_to_busan'),
(4, 'Vincenzo', 'A Korean-Italian mafia lawyer joins hands with a fierce heiress to take down a corrupt corporation.', 'Kim Hee-won', '2021', '$20,000,000', '1h 20min', 'TV-MA', 'Action, Comedy, Crime', 'img/vincenzo'),
(5, 'Crash Landing on You', 'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.', 'Lee Jeong-hyo', '2019', '$16,200,000', '1h 30min', 'TV-14', 'Comedy, Drama, Romance', 'img/crash_landing_on_you'),
(6, 'Itaewon Class', 'In a colorful Seoul neighborhood, an ex-con and his friends fight a mighty foe to make their ambitious dreams for their street bar a reality.', 'Kim Sung-yoon', '2020', '$15,000,000', '1h 10min', 'TV-MA', 'Drama', 'img/itaewon_class'),
(7, 'My Love from the Star', 'An alien who came to Earth 400 years ago is almost able to return to his own planet, but when he meets a famous actress, he gets sidetracked.', 'Jang Tae-yoo', '2013', '$3,800,000', '1h 10min', 'TV-PG', 'Comedy, Drama, Fantasy', 'img/my_love_from_the_star'),
(8, 'Goblin: The Lonely and Great God', 'A fabled \"goblin\" attempts to end his life by marrying a human priestess, but things get complicated when he starts to actually fall for her, and in turn, finds a new reason for wanting to stay alive.', 'Lee Eung-bok', '2016', '$3,500,000', '1h 10min', 'TV-14', 'Drama, Fantasy, Romance', 'img/goblin'),
(9, 'Hospital Playlist', 'A group of doctors at a hospital in Seoul navigate their personal and professional lives.', 'Shin Won-ho', '2020', '$13,500,000', '1h 30min', 'TV-14', 'Drama, Music', 'img/hospital_playlist'),
(10, 'Reply 1988', 'In 1988, a group of high school students in a Seoul neighborhood experience love, friendship, and family.', 'Shin Won-ho', '2015', '$5,000,000', '1h 30min', 'TV-14', 'Comedy, Drama, Romance', 'img/reply_1988'),
(11, 'Mr. Sunshine', 'In 1900, a Korean boy is taken to the US and returns as a US marine officer. He falls in love with an aristocrats daughter and discovers a plot by foreign forces to colonize Korea.', 'Lee Eung-bok', '2018', '$40,000,000', '1h 30min', 'TV-MA', 'Drama, Romance', 'img/mr_sunshine'),
(12, 'Descendants of the Sun', 'A romance between a soldier and a doctor is tested by their different backgrounds and war.', 'Lee Eung-bok', '2016', '$10,000,000', '1h 30min', 'TV-14', 'Action, Drama, Romance', 'img/descendants_of_the_sun'),
(13, 'Signal', 'A mysterious walkie-talkie allows a detective in 1989 to communicate with a cold case profiler from 2015, solving a long-unresolved murder case.', 'Kim Won-seok', '2016', '$5,000,000', '1h 30min', 'TV-MA', 'Crime, Drama, Fantasy', 'img/signal'),
(14, 'Kingdom', 'Set in Korea’s medieval Joseon period, it tells the story of a crown prince who is sent on a suicide mission to investigate a mysterious outbreak that leads him to a brutal truth that threatens the kingdom.', 'Kim Seong-hun', '2019', '$1,800,000', '1h 13min', 'TV-MA', 'Action, Horror, Thriller', 'img/kingdom'),
(15, 'A Korean Odyssey', 'A young boy with an abusive home life runs away from his family and meets a kindred spirit in a supernatural being called \"Goblin\", who offers him shelter and becomes his protector.', 'Kim Byung-soo', '2017', '$4,500,000', '1h 15min', 'TV-MA', 'Drama, Fantasy, Romance', 'img/korean_odyssey'),
(16, 'Misaeng: Incomplete Life', 'A young man with dreams of becoming a professional Go player is forced to take a job as a low-level office worker after his fathers death.', 'Kim Won-suk', '2014', '$2,100,000', '1h 10min', 'TV-14', 'Drama', 'img/misaeng'),
(17, 'Hotel Del Luna', 'Jang Man-wol, the CEO of Hotel del Luna, is cursed to run the hotel for 1,000 years by a vengeful god. However, after meeting the new manager, Goo Chan-sung, she realizes that there may be a way to break the curse and move on.', 'Oh Choong-hwan', '2019', '$8,000,000', '1h 15min', 'TV-14', 'Comedy, Drama, Fantasy', 'img/hotel_del_luna'),
(18, 'Sweet Home', 'After losing his family, Cha Hyeon-su moves into a run-down apartment building, only to find himself trapped inside with a group of other survivors as monsters stalk the halls and attempt to break in.', 'Lee Eung-bok', '2020', '$12,000,000', '1h 13min', 'TV-MA', 'Action, Horror, Thriller', 'img/sweet_home'),
(19, 'The Penthouse: War in Life', 'In a luxury penthouse apartment complex, the residents will do whatever it takes to stay at the top of the social hierarchy, including murder, blackmail, and betrayal.', 'Joo Dong-min', '2020', '$16,000,000', '1h 10min', 'TV-MA', 'Drama, Mystery, Thriller', 'img/the_penthouse'),
(20, 'Beyond Evil', 'Two detectives with a dark past team up to solve a string of murders in their small town, but as they get closer to the truth, they realize that the killer may be someone they never expected.', 'Shim Na-yeon', '2021', '$10,000,000', '1h 10min', 'TV-MA', 'Crime, Drama, Mystery', 'img/beyond_evil');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `username`, `role`) VALUES
(1, 'bsmith', 'admin'),
(2, 'pjones', 'customer'),
(3, 'bobross', 'customer' ),
(4, 'alicewonderland', 'customer'),
(5, 'peterparker', 'customer' ),
(6, 'clarkekent', 'customer'),
(7, 'karenmiller', 'customer' ),
(8, 'samanthajones', 'customer'),
(9, 'jasonbourne', 'customer' ),
(10, 'ellenripley',  'customer'),
(11, 'johndoe', 'customer' ),
(12, 'janetdoe2', 'customer'),
(13, 'bobbyross2', 'customer' ),
(15, 'petpark2',   'customer'),
(16, 'johnsmith','customer' ),
(17, 'janedoe',  'customer'),
(18, 'richierich', 'customer'),
(19, 'jojo_bean','customer'),
(20, 'Stanman', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;DROP TABLE IF EXISTS `users`;


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`) VALUES
(1, 'bsmith', '$2y$10$UOg0snnRcm6Y9rdv7tsIS.8X1R7H52JBt5ht9ZVaTjHizGzpM8MDm', 'Bill', 'Smith', 'bsmith@gmail.com'),
(2, 'pjones', '$2y$10$pQ/zdtQeGfs7oDwPF5x08.7vrX1m.EZo4tl1y2/.bjUGe9hzxkScm', 'Pauline', 'Jones', 'pjones@gmail.com'),
(3, 'bobross', 'Bamboo$Kite3', 'Bob', 'Ross', 'bob.ross@example.com'),
(4, 'alicewonderland', 'Mellow#Parrot7', 'Alice', 'Wonderland', 'alice.wonderland@example.com'),
(5, 'peterparker', 'Strawberry&Guitar9', 'Peter', 'Parker', 'peter.parker@example.com'),
(6, 'clarkekent', 'Lavender@Rainbow2', 'Clark', 'Kent', 'clark.kent@example.com'),
(7, 'karenmiller', 'Tulip$Butterfly8', 'Karen', 'Miller', 'karen.miller@example.com'),
(8, 'samanthajones', 'Oceanic#Dolphin6', 'Samantha', 'Jones', 'samantha.jones@example.com'),
(9, 'jasonbourne', 'Horizon&Firefly1', 'Jason', 'Bourne', 'jason.bourne@example.com'),
(10, 'ellenripley', 'Mountain@Hummingbird5', 'Ellen', 'Ripley', 'ellen.ripley@example.com'),
(11, 'johndoe', 'Dandelion$Dragonfly4', 'John', 'Doe', 'john.doe@example.com'),
(12, 'janetdoe2', 'Rose#Caterpillar2', 'Janet', 'Doe', 'janet.doe2@example.com'),
(13, 'bobbyross2', 'Sunflower&Ladybug9', 'Bobby', 'Ross', 'bobby.ross2@example.com'),
(14, 'alisonwonderland2', 'Beach@Seashell8', 'Alison', 'Wonderland', 'alison.wonderland2@example.com'),
(15, 'petpark2', 'Moonlit$Butterfly7', 'Pet', 'Park', 'pet.park2@example.com'),
(16, 'johnsmith', 'Cherry#Blossom5', 'John', 'Smith', 'john.smith@example.com'),
(17, 'janedoe', 'Starry&Nightfall4', 'Jane', 'Doe', 'jane.doe@example.com'),
(18, 'richierich', 'Snowflake@Penguin1', 'richard', 'Smith', 'richsmith@gmail.com'),
(19, 'jojo_bean', 'Peppermint$Sparrow6', 'Jolie', 'Doe', 'jolie.doe@example.com'),
(20, 'Stanman', 'Wildflower#Butterfly3', 'Stan', 'Doe', 'stan.doe@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `character_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `kdrama_id` int NOT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `characters` (`character_id`, `kdrama_id`, `name`) VALUES
(1, 1, 'Kim Ki-taek'),
(2, 1, 'Park Dong-ik'),
(3, 1, 'Kim Ki-woo'),
(4, 1, 'Chung-sook'),
(5, 1, 'Jessica'),
(6, 2, 'Seong Gi-hun'),
(7, 2, 'Hwang Jun-ho'),
(8, 2, 'Cho Sang-woo'),
(9, 2, 'Kang Sae-byeok'),
(10, 2, 'Oh Il-nam'),
(11, 3, 'Seok-woo'),
(12, 3, 'Soo-an'),
(13, 3, 'Sang-hwa'),
(14, 3, 'Yon-suk'),
(15, 3, 'Eui-sik'),
(16, 4, 'Vincenzo Cassano'),
(17, 4, 'Hong Cha-young'),
(18, 4, 'Jang Jun-woo'),
(19, 4, 'Han Seung-hyuk'),
(20, 4, 'Choi Myung-hee'),
(21, 5, 'Yoon Se-ri'),
(22, 5, 'Ri Jeong-hyeok'),
(23, 5, 'Seo Dan'),
(24, 5, 'Gu Seung-joon'),
(25, 5, 'Ko Sang-a'),
(26, 6, 'Park Sae-ro-yi'),
(27, 6, 'Jo Yi-seo'),
(28, 6, 'Jang Geun-won'),
(29, 6, 'Oh Soo-ah'),
(30, 6, 'Kim Toni'),
(31, 7, 'Do Min-joon'),
(32, 7, 'Cheon Song-yi'),
(33, 7, 'Lee Hwi-kyung'),
(34, 7, 'Yoo Se-mi'),
(35, 7, 'Lee Jae-kyung'),
(36, 8, 'Kim Shin/Goblin'),
(37, 8, 'Ji Eun-tak'),
(38, 8, 'Wang Yeo/Grim Reaper'),
(39, 8, 'Sunny/Kim Sun'),
(40, 8, 'Yoo Duk-hwa'),
(41, 9, 'Lee Ik-joon'),
(42, 9, 'Chae Song-hwa'),
(43, 9, 'Yang Seok-hyung'),
(44, 9, 'Ahn Jeong-won'),
(45, 9, 'Kim Jun-wan'),
(46, 10, 'Sung Deok-sun'),
(47, 10, 'Choi Taek'),
(48, 10, 'Kim Jung-hwan'),
(49, 10, 'Ryu Dong-ryong'),
(50, 10, 'Kim Sun-woo'),
(51, 11, 'Eugene Choi'),
(52, 11, 'Go Ae-shin'),
(53, 11, 'Gu Dong-mae'),
(54, 11, 'Kim Hee-sung'),
(55, 11, 'Kudo Hina'),
(56, 12, 'Yoo Shi-jin'),
(57, 12, 'Kang Mo-yeon'),
(58, 12, 'Seo Dae-young'),
(59, 12, 'Yoon Myeong-ju'),
(60, 12, 'Seo Dan'),
(61, 13, 'Park Hae-young'),
(62, 13, 'Lee Jae-han'),
(63, 13, 'Cha Soo-hyun'),
(64, 13, 'Kim Bum-joo'),
(65, 13, 'Oh Yoon-seo'),
(66, 14, 'Lee Chang'),
(67, 14, 'Seo-bi'),
(68, 14, 'Jo Beom-pal'),
(69, 14, 'Mu-yeong'),
(70, 14, 'Yeong-sin'),
(71, 15, 'Son Oh-gong'),
(72, 15, 'Jin Seon-mi'),
(73, 15, 'Woo Ma-wang'),
(74, 15, 'P.K'),
(75, 15, 'Ma-ji-ya'),
(76, 13, 'Jang Geu-rae'),
(77, 13, 'Oh Sang-shik'),
(78, 13, 'Ahn Young-yi'),
(79, 13, 'Kim Dong-shik'),
(80, 13, 'Baek Ki-nyeo'),
(81, 14, 'Jang Man-wol'),
(82, 14, 'Goo Chan-seong'),
(83, 14, 'Kim Sun-bi'),
(84, 14, 'Choi Seo-hee'),
(85, 14, 'Sanchez'),
(86, 15, 'Hyun-soo'),
(87, 15, 'Eun-hyeok'),
(88, 15, 'Ji-su'),
(89, 15, 'Sang-wook'),
(90, 15, 'Yong-ji'),
(91, 16, 'Joo Dan-tae'),
(92, 16, 'Sim Soo-ryeon'),
(93, 16, 'Cheon Seo-jin'),
(94, 16, 'Logan Lee'),
(95, 16, 'Oh Yoon-hee'),
(96, 17, 'Lee Dong-sik'),
(97, 17, 'Han Joo-won'),
(98, 17, 'Jung Je-soo'),
(99, 17, 'Shin Ha-kyun'),
(100, 17, 'Yeo Jin-goo');

--
-- Dumping data for table `characters`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `kdrama_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Parasite
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES 
    (1, 1, 'Song', 'Kang-ho', '1967-01-17'),
    (2, 1, 'Lee', 'Sun-kyun', '1975-03-02'),
    (3, 1, 'Cho', 'Yeo-jeong', '1981-02-10'),
    (4, 1, 'Choi', 'Woo-shik', '1990-03-26'),
    (5, 1, 'Park', 'So-dam', '1991-09-08');

-- Squid Game
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES 
    (6, 2, 'Lee', 'Jung-jae', '1972-03-15'),
    (7, 2, 'Park', 'Hae-soo', '1981-04-10'),
    (8, 2, 'Wi', 'Ha-joon', '1985-03-20'),
    (9, 2, 'Jung', 'Ho-yeon', '1994-01-23'),
    (10, 2, 'Kim', 'Joo-ryoung', '1996-03-05');

-- Train to Busan
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES 
    (11, 3, 'Gong', 'Yoo', '1979-07-10'),
    (12, 3, 'Ma', 'Dong-seok', '1971-08-01'),
    (13, 3, 'Jung', 'Yu-mi', '1983-01-18'),
    (14, 3, 'Kim', 'Soo-an', '2006-07-31'),
    (15, 3, 'Choi', 'Woo-shik', '1990-03-26');

-- Vincenzo
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES 
    (16, 4, 'Song', 'Joong-ki', '1985-09-19'),
    (17, 4, 'Jeon', 'Yeo-been', '1994-07-26'),
    (18, 4, 'Ok', 'Taec-yeon', '1988-12-27'),
    (19, 4, 'Kim', 'Yeo-jin', '1972-06-24'),
    (20, 4, 'Kwak', 'Dong-yeon', '1997-03-20');

-- Crash Landing on You
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES 
    (21, 5, 'Hyun', 'Bin', '1982-09-25'),
    (22, 5, 'Son', 'Ye-jin', '1982-01-11'),
    (23, 5, 'Seo', 'Ji-hye', '1984-08-24'),
    (24, 5, 'Kim', 'Jung-hyun', '1988-04-20'),
    (25, 5, 'Oh', 'Man-seok', '1975-03-14');
    
-- Itaewon Class

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(26, 6, 'Park', 'Seo-joon', 'December 16, 1988'),
(27, 6, 'Kim', 'Da-mi', 'April 7, 1995'),
(28, 6, 'Yoo', 'Jae-myung', 'April 16, 1973'),
(29, 6, 'Kwon', 'Nara', 'March 13, 1991'),
(30, 6, 'Ahn', 'Bo-hyun', 'May 16, 1988');

-- My Love From the Star

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(31, 7, 'Kim', 'Soo-hyun', 'February 16, 1988'),
(32, 7, 'Jun', 'Ji-hyun', 'October 30, 1981'),
(33, 7, 'Park', 'Hae-jin', 'May 1, 1983'),
(34, 7, 'Yoo', 'In-na', 'June 5, 1982'),
(35, 7, 'Shin', 'Sung-rok', 'November 23, 1982');

-- Goblin: The Lonely and Great God

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(36, 8, 'Gong', 'Yoo', 'July 10, 1979'),
(37, 8, 'Kim', 'Go-eun', 'July 2, 1991'),
(38, 8, 'Lee', 'Dong-wook', 'November 6, 1981'),
(39, 8, 'Yoo', 'In-na', 'June 5, 1982'),
(40, 8, 'Yook', 'Sung-jae', 'May 2, 1995');

-- Hospital Playlist

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(41, 9, 'Jo', 'Jung-suk', 'December 26, 1980'),
(42, 9, 'Yoo', 'Yeong', 'April 30, 1984'),
(43, 9, 'Jung', 'Kyung-ho', 'August 31, 1983'),
(44, 9, 'Kim', 'Dae-myung', 'December 24, 1979'),
(45, 9, 'Jeon', 'Mi-do', 'September 8, 1992');

-- Reply 1988

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(46, 10, 'Park Bo-gum', '', '1993-06-16'),
(47, 10, 'Lee Hye-ri', '', '1994-06-09'),
(48, 10, 'Go Kyung-pyo', '', '1990-06-11'),
(49, 10, 'Ryu Jun-yeol', '', '1986-09-25'),
(50, 10, 'Lee Dong-hwi', '', '1985-07-22');

-- Mr. Sunshine 

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(51, 11, 'Lee Byung-hun', '', '1970-07-12'),
(52, 11, 'Kim Tae-ri', '', '1990-04-24'),
(53, 11, 'Yoo Yeon-seok', '', '1984-04-11'),
(54, 11, 'Byun Yo-han', '', '1986-04-29'),
(55, 11, 'Kim Min-jung', '', '1982-03-30');

-- Descendants of the Sun

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(56, 12, 'Song Joong-ki', '', '1985-09-19'),
(57, 12, 'Song Hye-kyo', '', '1981-11-22'),
(58, 12, 'Jin Goo', '', '1980-07-20'),
(59, 12, 'Kim Ji-won', '', '1992-10-19'),
(60, 12, 'Choi Woong', '', '1988-05-16');

-- Signal

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(61, 13, 'Lee Je-hoon', '', '1984-07-04'),
(62, 13, 'Kim Hye-soo', '', '1970-09-05'),
(63, 13, 'Cho Jin-woong', '', '1976-03-02'),
(64, 13, 'Jang Hyun-sung', '', '1970-02-21'),
(65, 13, 'Jeong Hae-gyun', '', '1969-02-11');

-- Kingdom

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES
(66, 14, 'Ju Ji-hoon', '', '1982-05-16'),
(67, 14, 'Bae Doona', '', '1979-10-11'),
(68, 14, 'Ryu Seung-ryong', '', '1970-11-29'),
(69, 14, 'Kim Sang-ho', '', '1970-06-01'),
(70, 14, 'Kim Sung-kyu', '', '1980-04-28');

-- A Korean Odyssey

INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth)
VALUES
    (71, 67, 'Lee Seung-gi', 'Lee', '1987-01-13'),
    (72, 67, 'Cha Seung-won', 'Cha', '1970-06-07'),
    (73, 67, 'Oh Yeon-seo', 'Oh', '1987-06-22'),
    (74, 67, 'Lee Hong-gi', 'Lee', '1990-03-02'),
    (75, 67, 'Jang Gwang', 'Jang', '1952-06-18');


--  Misaeng: Incomplete Life
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) 
VALUES (76, 16, 'Lee Sung-min', 'Lee', '1968-06-24'),
       (77, 16, 'Im Si-wan', 'Im', '1988-12-01'),
       (78, 16, 'Kang So-ra', 'Kang', '1990-02-18'),
       (79, 16, 'Kang Ha-neul', 'Kang', '1990-02-21'),
       (80, 16, 'Byun Yo-han', 'Byun', '1986-04-29');
       
--  Hotel Del Luna
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) 
VALUES (81, 17, 'IU', '', '1993-05-16'),
       (82, 17, 'Yeo Jin-goo', 'Yeo', '1997-08-13'),
       (83, 17, 'Kang Mina', 'Kang', '1999-12-04'),
       (84, 17, 'P.O', '', '1993-02-02'),
       (85, 17, 'Bae Hae-sun', 'Bae', '1976-01-29');

--  Sweet Home
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) 
VALUES (86, 18, 'Song Kang', 'Song', '1994-04-23'),
       (87, 18, 'Lee Jin-wook', 'Lee', '1981-09-16'),
       (88, 18, 'Lee Si-young', 'Lee', '1982-04-17'),
       (89, 18, 'Lee Do-hyun', 'Lee', '1995-04-11'),
       (90, 18, 'Kim Nam-hee', 'Kim', '1995-08-02');

-- The Penthouse: War in Life
INSERT INTO actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) 
VALUES (91, 19, 'Lee Ji-ah', 'Lee', '1978-02-02'),
       (92, 19, 'Kim So-yeon', 'Kim', '1980-11-02'),
       (93, 19, 'Eugene', '', '1981-03-03'),
       (94, 19, 'Uhm Ki-joon', 'Uhm', '1976-03-23'),
       (95, 19, 'Shin Eun-kyung', 'Shin', '1973-02-15');

-- Beyond Evil
INSERT INTO Actors (actor_id, kdrama_id, first_name, last_name, date_of_birth) VALUES 
(96, 20, 'Shin Ha', 'Kyun', '1974-05-30'),
(97, 20, 'Yeo Jin', 'Goo', '1981-01-13'),
(98, 20, 'Chun Ho', 'Jin', '1971-11-12'),
(99, 20, 'Dong Young', 'Kim', '1980-06-15'),
(100, 20, 'Eom Ji', 'Won', '1976-04-16');














COMMIT;

-- ---------------------------------------------------------------

-- DROP TABLE IF EXISTS `awards`;
DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `award_id` int NOT NULL AUTO_INCREMENT,
  `kdrama_id` int NOT NULL,
  `award_name` varchar(50) NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO awards (`award_id`, `kdrama_id`, `award_name`, `year`)
VALUES (1, 1, 'Best Picture', 2020),
       (2, 2, 'Best Drama', 2021),
       (3, 3, 'Best Horror Film', 2016),
       (4, 4, 'Best Foreign Drama', 2021),
       (5, 5, 'Best Romance Drama', 2020),
       (6, 6, 'Best Webtoon Adaptation', 2020),
       (7, 7, 'Best Science Fiction/Fantasy Drama', 2014),
       (8, 8, 'Best Drama', 2016),
       (9, 9, 'Best Ensemble Cast', 2020),
       (10, 10, 'Best Drama', 2015),
       (11, 11, 'Best Drama', 2018),
       (12, 12, 'Best Drama', 2016),
       (13, 13, 'Best Crime Drama', 2016),
       (14, 14, 'Best Period Drama', 2019),
       (15, 15, 'Best Fantasy Drama', 2018),
       (16, 16, 'Best Drama', 2018),
       (17, 17, 'Best Supernatural Drama', 2019),
       (18, 18, 'Best Drama', 2020),
       (19, 19, 'Best Thriller Drama', 2021),
       (20, 20, 'Best Drama', 2021);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- JOIN between Actor and Character that shows the Actors for the characters in the Kdramas

SELECT a.actor_id, c.character_id, c.name, a.first_name, a.last_name, a.date_of_birth
FROM actors a
JOIN characters c ON a.actor_id = c.character_id;