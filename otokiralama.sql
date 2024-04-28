-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 10:34 PM
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
-- Database: `otokiralama`
--

-- --------------------------------------------------------

--
-- Table structure for table `araclar`
--

CREATE TABLE `araclar` (
  `aracPlaka` varchar(10) NOT NULL,
  `aracMarka` varchar(50) NOT NULL,
  `aracModel` varchar(50) NOT NULL,
  `aracYil` year(4) NOT NULL,
  `aracSasiNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `araclar`
--

INSERT INTO `araclar` (`aracPlaka`, `aracMarka`, `aracModel`, `aracYil`, `aracSasiNo`) VALUES
('06 BHZ 06', 'HYUNDAI', 'ACCENT', '2012', 'ADHKLSGHJKADSHJKA'),
('34 PLT 34', 'Mercedes-Benz', 'CLR', '1999', 'A2041251FGR204102'),
('41 FRK 06', 'TOYOTA', 'COROLLA', '2005', 'M67262F1247Q82178'),
('61 LJ 25', 'FIAT', 'EGEA', '2023', '025KA251728ZG2512'),
('80 KF 34', 'TOFAŞ', 'Doğan SLX', '1998', 'T0126757X215H2124');

-- --------------------------------------------------------

--
-- Table structure for table `durum`
--

CREATE TABLE `durum` (
  `tc` bigint(20) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `aracPlaka` varchar(50) NOT NULL,
  `alis` date NOT NULL,
  `alisSaat` time NOT NULL,
  `birakis` date NOT NULL,
  `birakisSaat` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `durum`
--

INSERT INTO `durum` (`tc`, `ad`, `tel`, `aracPlaka`, `alis`, `alisSaat`, `birakis`, `birakisSaat`) VALUES
(11111111111, 'asdads', '+90 (555) 555 55 55', '80 KF 34', '2024-04-30', '21:40:00', '2024-05-12', '21:40:00'),
(11111241241, 'POLAT', '+90 (555) 555 55 55', '34 PLT 34', '2024-04-30', '23:00:00', '2024-05-20', '05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kullanicigiris`
--

CREATE TABLE `kullanicigiris` (
  `tc` bigint(11) NOT NULL,
  `kullaniciadi` varchar(30) NOT NULL,
  `sifre` varchar(30) NOT NULL,
  `yetki` varchar(10) NOT NULL,
  `songiris` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kullanicigiris`
--

INSERT INTO `kullanicigiris` (`tc`, `kullaniciadi`, `sifre`, `yetki`, `songiris`) VALUES
(11111111110, 'foaqen', 'kurtlarvadisi', 'Yönetici', '2024-04-28 23:31:36'),
(11111111111, 'enes', 'ankara', 'Yönetici', '2024-04-28 21:57:24'),
(52336158610, 'baron', 'kurtlarvadisi', 'Yönetici', '2024-04-28 23:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `musteriler`
--

CREATE TABLE `musteriler` (
  `tc` bigint(20) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `dogum` date NOT NULL,
  `tel` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musteriler`
--

INSERT INTO `musteriler` (`tc`, `ad`, `soyad`, `dogum`, `tel`) VALUES
(11111241241, 'POLAT', 'ALEMDAR', '1980-01-02', '+90 (555) 555 55 55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`aracPlaka`);

--
-- Indexes for table `kullanicigiris`
--
ALTER TABLE `kullanicigiris`
  ADD PRIMARY KEY (`tc`);

--
-- Indexes for table `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`tc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
