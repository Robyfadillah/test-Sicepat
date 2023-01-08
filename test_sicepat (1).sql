-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2023 pada 16.10
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_sicepat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_1a`
--

CREATE TABLE `pertanyaan_1a` (
  `emp_name` varchar(50) NOT NULL,
  `emp_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='hasil query dari : SELECT emp_name, emp_status FROM tbl_employee;';

--
-- Dumping data untuk tabel `pertanyaan_1a`
--

INSERT INTO `pertanyaan_1a` (`emp_name`, `emp_status`) VALUES
('Abdi', 'R'),
('Budi', 'P'),
('Cahya', 'P'),
('Danu', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_1b`
--

CREATE TABLE `pertanyaan_1b` (
  `emp_name` varchar(50) NOT NULL,
  `emp_status` varchar(50) NOT NULL,
  `emp_income` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='SELECT tbl_employee.emp_name, tbl_employee.emp_status, tbl_income.emp_income from tbl_employee join tbl_income on tbl_employee.emp_code=tbl_income.emp_code WHERE tbl_employee.emp_status=''R'';';

--
-- Dumping data untuk tabel `pertanyaan_1b`
--

INSERT INTO `pertanyaan_1b` (`emp_name`, `emp_status`, `emp_income`) VALUES
('Abdi', 'R', '10.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_1c`
--

CREATE TABLE `pertanyaan_1c` (
  `emp_code` varchar(50) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_status` varchar(50) NOT NULL,
  `emp_income` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='SELECT tbl_employee.emp_code, tbl_employee.emp_name, tbl_employee.emp_status, tbl_income.emp_income from tbl_employee join tbl_income on tbl_employee.emp_code=tbl_income.emp_code ORDER by tbl_income.emp_income DESC;';

--
-- Dumping data untuk tabel `pertanyaan_1c`
--

INSERT INTO `pertanyaan_1c` (`emp_code`, `emp_name`, `emp_status`, `emp_income`) VALUES
('Emp003', 'Cahya', 'P', 15000000),
('Emp004', 'Danu', 'P', 12000000),
('Emp001', 'Abdi', 'R', 10000000),
('Emp002', 'Budi', 'P', 9000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_code` varchar(50) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_code`, `emp_name`, `emp_status`) VALUES
('Emp001', 'Abdi', 'R'),
('Emp002', 'Budi', 'P'),
('Emp003', 'Cahya', 'P'),
('Emp004', 'Danu', 'P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_income`
--

CREATE TABLE `tbl_income` (
  `emp_code` varchar(50) NOT NULL,
  `emp_income` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_income`
--

INSERT INTO `tbl_income` (`emp_code`, `emp_income`) VALUES
('Emp001', 10000000),
('Emp002', 9000000),
('Emp003', 15000000),
('Emp004', 12000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_code`);

--
-- Indeks untuk tabel `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD PRIMARY KEY (`emp_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
