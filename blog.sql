-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 04:53 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idUser` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `title`, `content`, `createdAt`, `updatedAt`, `idUser`) VALUES
(4, 'Why did I start coding?', 'I started coding because I learned HTML and CSS when I was studying in the High School, then I studied javascript (I hated it, by the way, because it was so dificult to learn for me) so I realized I loved this vocacion.', '2022-03-11 02:27:27', '2022-03-11 02:27:27', 2),
(5, 'What is the language I most hate?', 'Java', '2022-03-11 02:41:39', '2022-03-11 02:41:39', 2),
(7, 'About Me', 'I am a Computer Engineering student at Rafael Belloso Chacín University (URBE) in Maracaibo, Venezuela; currently in the 11th trimester. With very good grades.\r\n\r\nPassionate about what I do, I enjoy learning new things and making amazing applications.\r\n\r\nI am a self-taught person too. I am constantly learning new things about Programming and Web Development. With more than a year in this profession.\r\n\r\nI have worked using different Web Development tools such as JavaScript, React, NodeJS (Express), MongoDB, MySQL, GIT, Heroku, Handlebars, Bootstrap, Materialize, Socket.io, Nodemailer, etc.\r\n\r\nAt the moment, I\'m studing React Native and then I would like to study Next.js\r\n\r\nI learn quickly thanks to the enthusiasm I have for technology.\r\n\r\nAlso, I think the only way to do a great work is to love what you do.', '2022-03-11 03:24:57', '2022-03-11 03:24:57', 2),
(8, 'Equaldata', 'Innovating together.\nWe help businesses like yours to adopt modern technology and implement the foundations for an innovative digital strategy.\n\n8350 NW 52ND Ter, Ste 301\nDoral, FL, 33166, USA', '2022-03-11 03:40:15', '2022-03-11 03:40:15', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `createdAt`, `updatedAt`, `name`, `lastname`, `username`, `password`) VALUES
(2, '2022-03-11 01:51:19', '2022-03-11 03:45:37', 'Andres', 'Guanipa', 'andreseguanipa1', 'e10adc3949ba59abbe56e057f20f883e'),
(4, '2022-03-11 03:39:46', '2022-03-11 03:42:35', 'Andres', 'Medina', 'andres_medina', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
