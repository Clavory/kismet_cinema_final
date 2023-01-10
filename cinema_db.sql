-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 06, 2023 at 11:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieID` int(11) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL,
  `bookingEmail` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `ORDERID` varchar(255) NOT NULL,
  `DATE-TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieID`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`, `bookingEmail`, `amount`, `ORDERID`, `DATE-TIME`) VALUES
(71, 6, 'private-hall', 'imax', '14-3', '15-00', 'xyz', 'abc', '000000000', '000@gmail.com', '5000.00', 'cash', '2020-12-14 12:20:31'),
(72, 1, 'main-hall', '2d', '13-3', '18-00', 'Craig Lordrex', 'Yap', '+63915023358', 'knyapcraig@gmail.com', 'Not Paid', 'ARVR28874689', '2023-01-06 15:22:39'),
(73, 1, 'vip-hall', '2d', '2023-01-14', '12-00', 'Craig', 'Yap', '342534', 'yapcraiglordrex@gmail.com', 'Not Paid', 'ARVR61401117', '2023-01-06 17:28:32'),
(74, 1, 'vip-hall', '2d', '2023-01-14', '12-00', 'Craig', 'Yap', '342534', 'yapcraiglordrex@gmail.com', 'Not Paid', 'ARVR95841959', '2023-01-06 17:30:37'),
(75, 1, 'vip-hall', '2d', '2023-01-14', '12-00', 'Craig', 'Yap', '342534', 'yapcraiglordrex@gmail.com', 'Not Paid', 'ARVR98969049', '2023-01-06 17:33:01'),
(76, 1, 'vip-hall', '2d', '2023-01-18', '12-00', 'Craig', 'Yap', '+63915023358', 'yapcraiglordrex@gmail.com', 'Not Paid', 'ARVR31241262', '2023-01-06 17:38:49'),
(77, 1, 'vip-hall', '2d', '2023-01-18', '12-00', 'Craig', 'Yap', '+63915023358', 'yapcraiglordrex@gmail.com', 'Not Paid', 'ARVR89975173', '2023-01-06 17:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL,
  `mainhall` int(11) NOT NULL,
  `viphall` int(11) NOT NULL,
  `privatehall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`, `mainhall`, `viphall`, `privatehall`) VALUES
(1, 'img/avatarwow.jfif', 'Avatar: The Way of Water', 'Action/Adventure', 193, '2022-12-16', 'James Cameron', 'Bailey Bass, Sam Worthington, Zoe Saldana', 54, 60, 30),
(4, 'img/deleter.jpg', 'Deleter', 'Horror', 93, '2022-12-25', 'Mikhail red', 'Louise Delos Reyes, McCoy De Leon, Nadine Lustre', 43, 2, 1),
(5, 'img/megan.jpg', 'M3GAN', 'Horror, Sci-fi', 102, '2023-01-06', 'Gerard Johnstone', 'Allison Williams, Violet McGraw, Amie Donald\r\n', 3, 34, 27),
(6, 'img/glassonion.jfif', 'Glass Onion: A Knives Out Mystery', 'Comedy, Crime, Drama', 239, '2022-12-23', 'Rian Johnson', 'Daniel Craig, Edward Norton, Kate Hudson\r\n', 45, 12, 32),
(84, 'img/themenu.jfif', 'The Menu', 'Horror, Thriller', 107, '2022-11-22', 'Mark Mylod', 'Ralph Fiennes, Anya Taylor-Joy, Nicholas Hoult\r\n', 33, 43, 12),
(85, 'img/triangleofsadness.jfif', 'Triangle of Sadness', 'Comedy, Drama', 147, '2022-09-13', 'Ruben Östlund', 'Thobias Thorwid, Harris Dickinson, Charlbi Dean\r\n', 33, 12, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, '123', 'john', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `foreign_key_movieID` (`movieID`),
  ADD KEY `foreign_key_ORDERID` (`ORDERID`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD CONSTRAINT `foreign_key_movieID` FOREIGN KEY (`movieID`) REFERENCES `movietable` (`movieID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
