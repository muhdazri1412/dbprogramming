-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 06:10 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(5) NOT NULL,
  `cust_fname` varchar(10) DEFAULT NULL,
  `cust_lname` varchar(10) DEFAULT NULL,
  `Dateofbirth` date DEFAULT NULL,
  `phone` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_fname`, `cust_lname`, `Dateofbirth`, `phone`) VALUES
(104, 'Amir', 'Faizal', '1990-05-20', 111238851),
(109, 'Jack', 'Long', '1996-07-30', 123095312),
(118, 'Kim', 'Winny', '1988-03-19', 198765432),
(123, 'Peter', 'Park', '1995-08-01', 160923412),
(145, 'Tony', 'Star', '2001-11-30', 123406912),
(156, 'Steve', 'William', '1994-05-16', 190912841),
(167, 'Syamil', 'White', '2000-12-31', 111231234),
(175, 'Jane', 'Lien', '1998-12-11', 151409812),
(183, 'Danny', 'Scott', '1995-09-06', 112359127),
(188, 'Farah', 'Aini', '2000-04-24', 167892343),
(189, 'Haris', 'John', '1999-01-20', 134298401);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `dev_id` int(5) NOT NULL,
  `dev_name` varchar(35) DEFAULT NULL,
  `founded` date DEFAULT NULL,
  `origin` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`dev_id`, `dev_name`, `founded`, `origin`) VALUES
(500, 'Bandai Namco', '2006-03-31', 'Japan'),
(504, 'Nintendo', '1989-09-23', 'Japan'),
(511, 'Valve Corporation', '1996-08-24', 'USA'),
(523, 'Sega Games', '1960-06-03', 'USA'),
(539, 'Square Enix', '1975-09-01', 'Japan'),
(542, 'Capcom', '1979-03-30', 'Japan'),
(555, 'Electronic Arts', '1982-05-27', 'USA'),
(567, 'Activision Blizzard', '2008-07-08', 'USA'),
(577, 'Krafton', '2018-11-05', 'South Korea'),
(585, 'Rockstar Games', '1998-12-01', 'USA'),
(590, 'Respawn Entertainment', '2010-04-12', 'USA'),
(596, 'Ubisoft', '1986-03-12', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(5) NOT NULL,
  `gameName` varchar(33) DEFAULT NULL,
  `releaseGame` date DEFAULT NULL,
  `gameType` varchar(30) DEFAULT NULL,
  `numPlayer` int(5) DEFAULT NULL,
  `game_price` int(5) DEFAULT NULL,
  `dev_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `gameName`, `releaseGame`, `gameType`, `numPlayer`, `game_price`, `dev_id`) VALUES
(301, 'Sonic Mania', '2017-08-15', 'Platform', 1, 50, 523),
(308, 'PUBG', '2016-07-30', 'Battle Royale', 100, 70, 577),
(311, 'The Legend of Zelda', '2017-03-03', 'Action', 1, 60, 504),
(317, 'Final Fantasy', '2019-06-26', 'Action', 129, 80, 539),
(322, 'Street Fighter', '2016-02-16', 'Fighting', 2, 60, 523),
(324, 'Watch dogs', '2016-11-15', 'Action-adventure', 1, 75, 596),
(329, 'Call of Duty', '2019-10-25', 'FPS', 1, 65, 567),
(333, 'Tekken 7', '2017-06-02', 'Fighting', 2, 65, 500),
(342, 'Apexs Legend', '2019-02-04', 'Battle Royale', 70, 14, 590),
(343, 'Grand Theft Auto', '2013-09-17', 'Action-adventure', 70, 12, 585),
(344, 'Prototype', '2012-04-24', 'Action-adventure', 1, 85, 567),
(354, 'Counter-strike', '2012-08-03', 'Multiplayer FPS', 55, 16, 511),
(367, 'Battlefield', '2018-11-20', 'FPS', 1, 65, 555),
(369, 'Assassins Creed Odyssey', '2018-10-02', 'RPG', 1, 80, 596),
(386, 'Far Cry 5', '2018-03-27', 'FPS', 1, 100, 596);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `game_id` int(5) NOT NULL,
  `game_reviewer` varchar(20) DEFAULT NULL,
  `game_rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`game_id`, `game_reviewer`, `game_rating`) VALUES
(308, 'Steam', 6),
(308, 'PC Gamer', 8.5),
(311, 'IGN', 9.9),
(317, 'Metacritic', 8.7),
(322, 'IGN', 9),
(324, 'IGN', 8.4),
(324, 'Steam', 7),
(324, 'Metacritic', 8),
(324, 'PC Gamer', 8.7),
(329, 'PC Gamer', 8.2),
(333, 'Metacritic', 8.2),
(342, 'PC Gamer', 9.3),
(343, 'IGN', 9.9),
(344, 'Metacritic', 7.9),
(354, 'Steam', 9),
(367, 'PC Gamer', 7.9),
(369, 'Steam', 9),
(386, 'PC Gamer', 8),
(301, 'IGN', 8.7),
(301, 'Metacritic', 9.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `game_fk` (`dev_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `rating_game_fk` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `dev_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=597;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_fk` FOREIGN KEY (`dev_id`) REFERENCES `developer` (`dev_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_game_fk` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
