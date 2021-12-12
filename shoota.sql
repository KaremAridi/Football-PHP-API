-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 12:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoota`
--

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`id`, `title`, `image`) VALUES
(1, 'LaLiga', 'assets/icon/leagues/LaLiga.png'),
(3, 'Premier Leagues', 'assets/icon/leagues/Premier_League.jpg'),
(6, 'UEFA Champions League', 'assets/icon/leagues/Champions_League.png');

-- --------------------------------------------------------

--
-- Table structure for table `likes_leagues`
--

CREATE TABLE `likes_leagues` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes_teams`
--

CREATE TABLE `likes_teams` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logged_in`
--

CREATE TABLE `logged_in` (
  `_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ended` tinyint(1) NOT NULL,
  `team_1` int(11) NOT NULL,
  `team_2` int(11) NOT NULL,
  `score_1` int(11) DEFAULT NULL,
  `score_2` int(11) DEFAULT NULL,
  `league_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `date`, `ended`, `team_1`, `team_2`, `score_1`, `score_2`, `league_id`) VALUES
(4, '04/12/2021', 1, 11, 9, 0, 1, 1),
(5, '04/12/2021', 1, 8, 1, 0, 2, 1),
(6, '05/12/2021', 0, 7, 6, NULL, NULL, 1),
(7, '01/12/2021', 1, 1, 2, 1, 0, 1),
(8, '28/11/2021', 1, 6, 8, 1, 0, 1),
(9, '27/11/2021', 1, 4, 7, 1, 1, 1),
(11, '21/11/2021', 1, 8, 4, 0, 0, 1),
(12, '11/11/11', 1, 10, 9, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `image` varchar(255) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `image`, `team_id`) VALUES
(2, 'Karim', 'Benzema', 'assets/icon/players/Benzema.png', 1),
(4, 'Gareth', 'Bale', 'assets/icon/players/Bale.png', 1),
(5, 'Dani', 'Carjaval', 'assets/icon/players/Carvajal.png', 1),
(6, 'Thibaut', 'Courtois', 'assets/icon/players/Courtois.png', 1),
(7, 'Toni', 'Kroos', 'assets/icon/players/Kroos.png', 1),
(8, 'Marcelo', 'Vieira', 'assets/icon/players/Marcelo.png', 1),
(9, 'Luka', 'Modrić', 'assets/icon/players/Modric.png', 1),
(10, 'Antoine', 'Griezmann', 'assets/icon/players/Griezmann.png', 2),
(11, 'Luis', 'Suárez', 'assets/icon/players/Suarez.png', 2),
(12, 'João', 'Félix', 'assets/icon/players/Felix.png', 2),
(13, 'Yannick ', 'Carrasco', 'assets/icon/players/Carrasco.png', 2),
(14, 'Matheus ', 'Cunha', 'assets/icon/players/Cunha.png', 2),
(15, 'Rodrigo', 'De Paul', 'assets/icon/players/DePaul.png', 2),
(16, '', 'Berchiche', 'assets/icon/players/Berchiche.png', 3),
(17, '', 'Berenguer', 'assets/icon/players/Berenguer.jpg', 3),
(18, '', 'Simon', 'assets/icon/players/Simon.png', 3),
(19, '', 'Vesga', 'assets/icon/players/Vesga.png', 3),
(20, '', 'Williams', 'assets/icon/players/Williams.png', 3),
(21, '', 'Yeray', 'assets/icon/players/Yeray.png', 3),
(28, '', 'Busquets', 'assets/icon/players/Busquets.png', 11),
(29, '', 'Dembele', 'assets/icon/players/Dembele.png', 11),
(30, '', 'Pedri', 'assets/icon/players/Pedri.png', 11),
(31, '', 'Pique', 'assets/icon/players/Pique.png', 11),
(32, '', 'Puig', 'assets/icon/players/Puig.png', 11),
(33, '', 'Ter Stegen', 'assets/icon/players/Ter Stegen.png', 11),
(34, '', 'Cabrera', 'assets/icon/players/Cabrera.png', 6),
(35, '', 'Calero', 'assets/icon/players/Calero.png', 6),
(36, '', 'Lei', 'assets/icon/players/Lei.png', 6),
(37, '', 'Pedrosa', 'assets/icon/players/Pedrosa.png', 6),
(38, '', 'Puado', 'assets/icon/players/Puado.png', 6),
(39, '', 'Brasanac', 'assets/icon/players/Brasanac.png', 5),
(40, '', 'Garcia', 'assets/icon/players/Garcia.png', 5),
(41, '', 'Herrera', 'assets/icon/players/Herrera.png', 5),
(42, '', 'Torres', 'assets/icon/players/Torres.png', 5),
(43, '', 'Vidal', 'assets/icon/players/Vidal.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `p` int(11) NOT NULL,
  `diff` int(11) NOT NULL,
  `pts` int(11) NOT NULL,
  `league_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standings`
--

INSERT INTO `standings` (`id`, `team_id`, `p`, `diff`, `pts`, `league_Id`) VALUES
(13, 1, 16, 22, 39, 1),
(14, 10, 15, 14, 31, 1),
(15, 9, 16, 8, 30, 1),
(16, 2, 15, 11, 29, 1),
(17, 8, 16, 6, 29, 1),
(18, 7, 15, 7, 24, 1),
(19, 3, 15, 2, 20, 1),
(20, 6, 15, 1, 20, 1),
(21, 5, 15, -4, 20, 1),
(22, 4, 15, 1, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `image`) VALUES
(1, 'Real Madrid', 'assets/icon/teams/Real_Madrid.png'),
(2, 'Atletico de Madrid', 'assets/icon/teams/At_Madrid.png'),
(3, 'Athletic Club', 'assets/icon/teams/Athletic_Club.png'),
(4, 'Valencia', 'assets/icon/teams/Valencia.png'),
(5, 'Osasuna', 'assets/icon/teams/Osasuna.png'),
(6, 'Espanyol', 'assets/icon/teams/Espanyol.png'),
(7, 'Rayo Vallecano', 'assets/icon/teams/Rayo_Vallecano.png'),
(8, 'Real Sociedad', 'assets/icon/teams/Real_Sociedad.png'),
(9, 'Real Betis', 'assets/icon/teams/Real_Betis.png'),
(10, 'Sevilla', 'assets/icon/teams/Sevilla.png'),
(11, 'Barcelona', 'assets/icon/teams/Barcelona.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'admin', 'admin', 'admin@example.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(10, 'Karem', 'Al Aridi', 'karem@shoota.com', 'a29a238c8b42d72979c864b8ca0b2a4fbf3768e0f9d3df4f4641f3a294a4c30c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes_leagues`
--
ALTER TABLE `likes_leagues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `league_id` (`league_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `likes_teams`
--
ALTER TABLE `likes_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `logged_in`
--
ALTER TABLE `logged_in`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `league_id` (`league_id`),
  ADD KEY `team_1` (`team_1`),
  ADD KEY `team_2` (`team_2`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_ibfk_1` (`team_id`);

--
-- Indexes for table `standings`
--
ALTER TABLE `standings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `league_Id` (`league_Id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes_leagues`
--
ALTER TABLE `likes_leagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `likes_teams`
--
ALTER TABLE `likes_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `logged_in`
--
ALTER TABLE `logged_in`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `standings`
--
ALTER TABLE `standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes_leagues`
--
ALTER TABLE `likes_leagues`
  ADD CONSTRAINT `likes_leagues_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`),
  ADD CONSTRAINT `likes_leagues_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes_teams`
--
ALTER TABLE `likes_teams`
  ADD CONSTRAINT `likes_teams_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `likes_teams_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `logged_in`
--
ALTER TABLE `logged_in`
  ADD CONSTRAINT `logged_in_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`team_1`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `matches_ibfk_3` FOREIGN KEY (`team_2`) REFERENCES `teams` (`id`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `standings`
--
ALTER TABLE `standings`
  ADD CONSTRAINT `standings_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `standings_ibfk_2` FOREIGN KEY (`league_Id`) REFERENCES `leagues` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
