-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Sep 2021 pada 20.08
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `u_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `u_name`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akademik`
--

CREATE TABLE `akademik` (
  `id_ak` int(11) NOT NULL,
  `thn_akademik` varchar(20) NOT NULL,
  `semester` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akademik`
--

INSERT INTO `akademik` (`id_ak`, `thn_akademik`, `semester`) VALUES
(1, '2020/2021', 'Genap'),
(2, '2021/2022', 'Ganjil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` bigint(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `u_guru` varchar(50) NOT NULL,
  `nama_g` varchar(255) NOT NULL,
  `tempat_g` varchar(100) NOT NULL,
  `tgal_lahir` date NOT NULL,
  `jenis_kelamin_g` varchar(4) NOT NULL,
  `status_pegawai` varchar(255) NOT NULL,
  `mapel1` int(11) NOT NULL,
  `mapel2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `u_guru`, `nama_g`, `tempat_g`, `tgal_lahir`, `jenis_kelamin_g`, `status_pegawai`, `mapel1`, `mapel2`) VALUES
(1, '', 'GURU01', 'Achmad Muslichan', 'Grobogan', '1990-09-25', 'L', 'Honor Daerah TK.I Provinsi', 5, 6),
(2, '197806242014091002', 'GURU02', 'Ahmad Muflihin', 'Grobogan', '1978-06-24', 'L', 'PNS', 3, 0),
(3, '', 'GURU03', 'Aji Subiyantoro', 'GROBOGAN', '1991-12-23', 'L', 'Guru Honor Sekolah', 12, 0),
(4, '', 'GURU04', 'Ali Mustofa', 'Grobogan', '1978-04-22', 'L', 'Honor Daerah TK.I Provinsi', 3, 0),
(5, '', 'GURU05', 'Ana Sulistyaningsih', 'KENDAL', '1990-05-03', 'P', 'Guru Honor Sekolah', 5, 6),
(6, '', 'GURU06', 'Annisa Rachma Fadmaning Tyas', 'GROBOGAN', '1993-11-13', 'P', 'Guru Honor Sekolah', 7, 0),
(7, '198503022009021004', 'GURU07', 'Danang Eko Setyawan', 'Grobogan', '1985-03-02', 'L', 'PNS', 12, 0),
(8, '196307101988032006', 'GURU08', 'Dwi Wahyudiarti', 'Grobogan', '1963-07-10', 'P', 'PNS', 15, 0),
(9, '196811231994031007', 'GURU09', 'Edy Suwanto', 'Grobogan', '1968-11-23', 'L', 'PNS', 5, 6),
(10, '196411071995121001', 'GURU10', 'Eko Bambang Sudarsono', 'Grobogan', '1964-11-07', 'L', 'PNS', 5, 6),
(11, '196708092005012003', 'GURU11', 'Eny Mujiatun', 'Grobogan', '1967-08-09', 'P', 'PNS', 11, 0),
(12, '', 'GURU12', 'Febriana Ika Handayani', 'Grobogan', '1994-02-22', 'P', 'Honor Daerah TK.I Provinsi', 5, 6),
(13, '196509051995121003', 'GURU13', 'Hartono', 'Grobogan', '1965-09-05', 'L', 'PNS', 9, 0),
(14, '', 'GURU14', 'Ika Agustiningsih', 'Grobogan', '1989-08-28', 'P', 'Honor Daerah TK.I Provinsi', 10, 0),
(15, '', 'GURU15', 'Jumiati', 'Grobogan', '1987-03-28', 'P', 'Honor Daerah TK.I Provinsi', 10, 0),
(16, '196807202002121003', 'GURU16', 'Kukuh Budi Nurcahyo', 'Grobogan', '1968-07-20', 'L', 'PNS', 3, 16),
(17, '196909141995121002', 'GURU17', 'Kusyanto', 'Ketenger', '1969-09-14', 'L', 'PNS', 8, 0),
(18, '196803281995122002', 'GURU18', 'Lilik Noerhajani', 'Grobogan', '1968-03-28', 'P', 'PNS', 4, 18),
(19, '', 'GURU19', 'Maryuni', 'Grobogan', '1983-10-11', 'P', 'Honor Daerah TK.I Provinsi', 1, 0),
(20, '198108122015032001', 'GURU20', 'Nurkhayati Puji Rahayu', 'KEBUMEN', '1981-08-12', 'P', 'PNS', 5, 6),
(21, '', 'GURU21', 'NURUL ANWAR', 'GROBOGAN', '1994-06-14', 'L', 'Guru Honor Sekolah', 2, 0),
(22, '198003082014092001', 'GURU22', 'Paryumi', 'Grobogan', '1980-03-08', 'P', 'PNS', 9, 0),
(23, '', 'GURU23', 'Piping Putra Satria', 'Grobogan', '1987-10-29', 'L', 'Honor Daerah TK.I Provinsi', 12, 0),
(24, '197201032006041005', 'GURU24', 'Rahmad Widiyono', 'Grobogan', '1972-01-03', 'L', 'PNS', 9, 0),
(25, '196806182008012008', 'GURU25', 'Retnaningsih', 'Penawangan-Grobogan', '1968-06-18', 'P', 'PNS', 8, 0),
(26, '', 'GURU26', 'Ristanto', 'Grobogan', '1990-02-19', 'L', 'Honor Daerah TK.I Provinsi', 5, 6),
(27, '196501272008011004', 'GURU27', 'Riyadi', 'Grobogan', '1965-01-27', 'L', 'PNS', 13, 17),
(28, '196403051997021001', 'GURU28', 'Sapto Hardijono', 'Mojokerto', '1964-03-05', 'L', 'PNS', 14, 2),
(29, '196811101997022003', 'GURU29', 'Sari Fatollah', 'Grobogan', '1968-11-10', 'P', 'PNS', 4, 18),
(30, '197506122008012012', 'GURU30', 'Setya Yuniarsi', 'Grobogan', '1975-06-12', 'P', 'PNS', 15, 0),
(31, '197101052006042018', 'GURU31', 'Sri Hadiningsih', 'Grobogan', '1971-01-05', 'P', 'PNS', 1, 19),
(32, '196301111995122001', 'GURU32', 'Sriwati', 'Blora', '1963-01-11', 'P', 'PNS', 2, 0),
(33, '196507041990031012', 'GURU33', 'Subagyo', 'Bogor', '1965-07-04', 'L', 'PNS', 7, 0),
(34, '', 'GURU34', 'Sudarsono', 'Boyolali', '1980-03-31', 'L', 'Honor Daerah TK.I Provinsi', 0, 0),
(35, '196707151997022002', 'GURU35', 'Surya Megawati', 'Grobogan', '1967-07-15', 'P', 'PNS', 17, 13),
(36, '196411151995122001', 'GURU36', 'Tjatur Tavip Pratiwi', 'Grobogan', '1964-11-15', 'P', 'PNS', 3, 16),
(37, '196503131988032017', 'GURU37', 'Tri Atmi Sriminaningsih', 'GROBOGAN', '1965-03-13', 'P', 'PNS', 0, 0),
(38, '197311032005012003', 'GURU38', 'Tugiyati', 'Sleman', '1973-11-03', 'P', 'PNS', 14, 0),
(39, '196701261995122001', 'GURU39', 'Umi Rahayu', 'Grobogan', '1967-01-26', 'P', 'PNS', 1, 19),
(40, '', 'GURU40', 'WIDYA ARIYANTI', 'GROBOGAN', '1994-03-30', 'P', 'Guru Honor Sekolah', 14, 0),
(41, '', 'GURU41', 'WIJIANTO', 'GROBOGAN', '1989-12-27', 'L', 'Guru Honor Sekolah', 13, 20),
(42, '199308172020122008', 'GURU42', 'WULAN NURCAHYANI', 'GROBOGAN', '1993-08-17', 'P', 'CPNS', 20, 4),
(43, '197412172007012007', 'GURU43', 'Wuri Nugrahani', 'Grobogan', '1974-12-17', 'P', 'PNS', 11, 4),
(44, '', 'GURU44', 'Zamzuri', 'Grobogan', '1980-10-24', 'L', 'Honor Daerah TK.I Provinsi', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `wali_kelas` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `jumlah_siswa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `wali_kelas`, `kelas`, `jurusan`, `jumlah_siswa`) VALUES
(1, 5, 'X', 'Bhs & Budaya', 32),
(2, 18, 'X', 'IPS 1', 36),
(3, 17, 'X', 'IPS 2', 36),
(4, 15, 'X', 'IPS 3', 36),
(5, 30, 'X', 'MIPA 1', 36),
(6, 20, 'X', 'MIPA 2', 36),
(7, 32, 'X', 'MIPA 3', 36),
(8, 44, 'X', 'MIPA 4', 36),
(9, 3, 'X', 'MIPA 5', 36),
(10, 41, 'XI', 'Bhs & Budaya', 33),
(11, 35, 'XI', 'IPS 1', 35),
(12, 31, 'XI', 'IPS 2', 35),
(13, 28, 'XI', 'IPS 3', 35),
(14, 10, 'XI', 'MIPA 1', 35),
(15, 38, 'XI', 'MIPA 2', 34),
(16, 43, 'XI', 'MIPA 3', 35),
(17, 40, 'XI', 'MIPA 4', 35),
(18, 24, 'XI', 'MIPA 5', 35),
(19, 33, 'XII', 'Bhs & Budaya', 15),
(20, 12, 'XII', 'IPS 1', 34),
(21, 16, 'XII', 'IPS 2', 36),
(22, 37, 'XII', 'IPS 3', 26),
(44, 14, 'XII', 'mipa 1', 32),
(77, 25, 'Xii', 'mipa3', 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `mapel`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Pend. Agama'),
(3, 'Bahasa Inggris'),
(4, 'Sejarah Indonesia'),
(5, 'Matematika (Wajib)'),
(6, 'Matematika (Peminatan)'),
(7, 'Seni Budaya'),
(8, 'PPKn'),
(9, 'Fisika'),
(10, 'Bahasa Jawa'),
(11, 'Kimia'),
(12, 'Penjasorkes'),
(13, 'Geografi'),
(14, 'Biologi'),
(15, 'Ekonomi'),
(16, 'Sastra Inggris'),
(17, 'Sosiologi'),
(18, 'Sejarah Dunia'),
(19, 'Sastra Indonesia'),
(20, 'Antropologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `mapel_n` int(11) NOT NULL,
  `akademik` int(11) NOT NULL,
  `nama_siswa` int(11) NOT NULL,
  `kelas_n` int(11) NOT NULL,
  `harian1` decimal(6,0) NOT NULL,
  `harian2` decimal(6,0) NOT NULL,
  `tugas1` decimal(6,0) NOT NULL,
  `tugas2` decimal(6,0) NOT NULL,
  `uts` decimal(6,0) NOT NULL,
  `uas` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `mapel_n`, `akademik`, `nama_siswa`, `kelas_n`, `harian1`, `harian2`, `tugas1`, `tugas2`, `uts`, `uas`) VALUES
(57, 11, 1, 1, 5, '78', '85', '78', '78', '80', '78'),
(59, 11, 1, 5, 5, '78', '78', '78', '78', '78', '78'),
(60, 11, 1, 2, 6, '78', '78', '78', '78', '78', '78'),
(61, 11, 1, 7, 6, '78', '78', '78', '78', '78', '78'),
(62, 11, 1, 20, 6, '78', '78', '78', '78', '78', '78'),
(63, 11, 1, 27, 6, '78', '78', '78', '78', '78', '78'),
(64, 11, 1, 36, 6, '78', '78', '78', '78', '78', '78'),
(65, 11, 1, 49, 6, '78', '78', '78', '78', '78', '78'),
(66, 11, 1, 53, 6, '78', '78', '78', '78', '78', '78'),
(67, 11, 1, 65, 6, '78', '78', '78', '78', '78', '78'),
(68, 11, 1, 75, 6, '78', '78', '78', '78', '78', '78'),
(69, 11, 1, 87, 6, '78', '78', '78', '78', '78', '78'),
(70, 11, 1, 91, 6, '78', '78', '78', '78', '78', '78'),
(71, 11, 1, 103, 6, '78', '78', '78', '78', '78', '78'),
(72, 11, 1, 105, 6, '78', '78', '78', '78', '78', '78'),
(73, 11, 1, 116, 6, '78', '78', '78', '78', '78', '78'),
(74, 11, 1, 123, 6, '78', '78', '78', '78', '78', '78'),
(75, 11, 1, 127, 6, '78', '78', '78', '78', '78', '78'),
(76, 11, 1, 134, 6, '78', '78', '78', '78', '78', '78'),
(77, 11, 1, 137, 6, '78', '78', '78', '78', '78', '78'),
(78, 11, 1, 146, 6, '78', '78', '78', '78', '78', '78'),
(79, 11, 1, 151, 6, '78', '78', '78', '78', '78', '78'),
(80, 11, 1, 182, 6, '78', '78', '78', '78', '78', '78'),
(81, 11, 1, 184, 6, '78', '78', '78', '78', '78', '78'),
(82, 11, 1, 192, 6, '78', '78', '78', '78', '78', '78'),
(83, 11, 1, 205, 6, '78', '78', '78', '78', '78', '78'),
(84, 11, 1, 219, 6, '78', '78', '78', '78', '78', '78'),
(85, 11, 1, 220, 6, '78', '78', '78', '78', '78', '78'),
(86, 11, 1, 231, 6, '78', '78', '78', '78', '78', '78'),
(87, 11, 1, 235, 6, '78', '78', '78', '78', '78', '78'),
(88, 11, 1, 252, 6, '78', '78', '78', '78', '78', '78'),
(89, 11, 1, 263, 6, '78', '78', '78', '78', '78', '78'),
(90, 11, 1, 278, 6, '78', '78', '78', '78', '78', '78'),
(91, 11, 1, 281, 6, '78', '78', '78', '78', '78', '78'),
(92, 11, 1, 287, 6, '78', '78', '78', '78', '78', '78'),
(93, 11, 1, 294, 6, '78', '78', '78', '78', '78', '78'),
(94, 11, 1, 303, 6, '78', '78', '78', '78', '78', '78'),
(97, 11, 1, 15, 5, '80', '80', '80', '80', '80', '80'),
(98, 11, 1, 26, 5, '80', '80', '80', '80', '80', '80'),
(99, 11, 1, 34, 5, '80', '80', '80', '80', '80', '80'),
(100, 11, 1, 47, 5, '80', '80', '80', '80', '80', '80'),
(101, 11, 1, 52, 5, '80', '80', '80', '80', '80', '80'),
(102, 11, 1, 62, 5, '80', '80', '80', '80', '80', '80'),
(103, 11, 1, 63, 5, '80', '80', '80', '80', '80', '80'),
(104, 11, 1, 74, 5, '80', '80', '80', '80', '80', '80'),
(105, 11, 1, 89, 5, '80', '80', '80', '80', '80', '80'),
(106, 11, 1, 100, 5, '80', '80', '80', '80', '80', '80'),
(107, 11, 1, 101, 5, '80', '80', '80', '80', '80', '80'),
(108, 11, 1, 115, 5, '80', '80', '80', '80', '80', '80'),
(109, 11, 1, 125, 5, '80', '80', '80', '80', '80', '80'),
(110, 11, 1, 126, 5, '80', '80', '80', '80', '80', '80'),
(111, 11, 1, 133, 5, '80', '80', '80', '80', '80', '80'),
(112, 11, 1, 145, 5, '80', '80', '80', '80', '80', '80'),
(113, 11, 1, 150, 5, '80', '80', '80', '80', '80', '80'),
(114, 11, 1, 166, 5, '80', '80', '80', '80', '80', '80'),
(115, 11, 1, 181, 5, '80', '80', '80', '80', '80', '80'),
(116, 11, 1, 183, 5, '80', '80', '80', '80', '80', '80'),
(117, 11, 1, 190, 5, '80', '80', '80', '80', '80', '80'),
(118, 11, 1, 196, 5, '80', '80', '80', '80', '80', '80'),
(119, 11, 1, 213, 5, '80', '80', '80', '80', '80', '80'),
(120, 11, 1, 216, 5, '80', '80', '80', '80', '80', '80'),
(121, 11, 1, 228, 5, '80', '80', '80', '80', '80', '80'),
(122, 11, 1, 234, 5, '80', '80', '80', '80', '80', '80'),
(123, 11, 1, 251, 5, '80', '80', '80', '80', '80', '80'),
(124, 11, 1, 262, 5, '80', '80', '80', '80', '80', '80'),
(125, 11, 1, 275, 5, '80', '80', '80', '80', '80', '80'),
(126, 11, 1, 277, 5, '80', '80', '80', '80', '80', '80'),
(127, 11, 1, 286, 5, '80', '80', '80', '80', '80', '80'),
(128, 11, 1, 292, 5, '80', '80', '80', '80', '80', '80'),
(129, 11, 1, 302, 5, '80', '80', '80', '80', '80', '80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'admin'),
(2, 'siswa'),
(3, 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(4) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nik`, `nama`, `tempat`, `tgl_lahir`, `jenis_kelamin`, `no_hp`, `alamat`, `kelas`) VALUES
(1, '0060057677', '3315024707060004', 'ADI DIYAH PITALOKA', 'Grobogan', '2006-07-07', 'P', '081228369123', 'Dusun Dempel', 5),
(2, '0053221401', '3315176912050000', 'Adiba Zahya Putri', 'Grobogan', '2005-12-29', 'P', '085290241616', 'Ngroto', 6),
(3, '0052998056', '3315030111050001', 'Aditia Putra Ramadhan', 'Grobogan', '2005-11-01', 'L', '6285727586095', 'jipang', 2),
(4, '0059006960', '3315026907050001', 'Afinda Hikmawati Alfiani', 'Grobogan', '2005-07-29', 'P', '088239370645', 'Dusun Krasak', 7),
(5, '0045419416', '3315022212040003', 'Afrizal Rifqi Taufiqul Hakum', 'Kabupaten Grobogan', '2004-12-22', 'L', '082147004519', 'Dusun Truko', 5),
(6, '0067611966', '3528125606060002', 'AGNES ROSE MALIA PRATIWI', 'PURWODADI', '2006-06-16', 'P', '081227723028', 'Cekel', 8),
(7, '0056099473', '3315021401050005', 'Agung Dwi Saputro', 'Grobogan', '2005-01-14', 'L', '085326900671', 'Dsn.Beketro', 6),
(8, '0059189644', '3315021506050002', 'Agung Rizki Putra Pratama', 'Grobogan', '2005-06-15', 'L', '088215651184', 'Godong-Juwangi', 7),
(9, '0048252956', '3315027008040001', 'AGUSTINA SETIYANINGSIH', 'Grobogan', '2004-08-30', 'P', '085641085659', 'Sendang', 2),
(10, '0052800271', '3315030407050001', 'AHMAD HABIB MANSHUR', 'Grobogan', '2005-07-04', 'L', '087827114554', 'Jl. Srikandi', 3),
(11, '0051012587', '3315020701050004', 'AHMAD MA\'ARIF', 'Grobogan', '2005-01-07', 'L', '0859121443535', 'Ketro', 4),
(12, '0045918650', '3315031409040001', 'AHMAD SUPRIYADI', 'Kabupaten G', '2004-09-14', 'L', '082350200160', 'Doyong', 2),
(13, '0044997641', '3315160107970004', 'Ahmat Yusuf Al Hafis', 'Grobogan', '2004-11-07', 'L', '082324786848', 'Dusun Rapah', 1),
(14, '0045075576', '3315025912040004', 'AIDA SYARIFAH', 'Grobogan', '2004-12-19', 'P', '082350710645', 'tahunan', 9),
(15, '0053797353', '3315166004050006', 'AJENG KHOIRUL HIDAYAH', 'GROBOGAN', '2005-04-20', 'P', '085640355268', 'GALEH', 5),
(16, '0051755675', '3315020311050008', 'Akbar Wijaya', 'Grobogan ', '2005-11-03', 'L', '081228155714', 'Kangkungan ', 1),
(17, '0060054866', '3315022904060001', 'Aldea Aditiya Putranto', 'Grobogan', '2006-04-29', 'L', '081339735436', 'Nampu', 1),
(18, '0056096557', '3315160908050003', 'Alfan Bimantara', 'Grobogan', '2005-08-09', 'L', '081226711316', 'Truwis', 4),
(19, '0051077965', '3315026006050002', 'ALIF FATUL KHORIAH', 'Grobogan', '2005-06-20', 'P', '088225178356', 'Kedungwungu', 3),
(20, '0051237235', '3315024608060002', 'Alisya Tasya Zalanti', 'Grobogan', '2005-08-06', 'P', '081804440667', 'Sendangharjo', 6),
(21, '0051197028', '3315022312050001', 'ALVIAN DWI ADITIYANTO', 'GROBOGAN', '2005-12-23', 'L', '081325799696', 'Dusun Gedong', 2),
(22, '0059992405', '3315034808960001', 'ALVINA NAILI KUSNIA', 'GROBOGAN', '2005-12-05', 'P', '085800432432', 'KARANGWADER', 4),
(23, '0060054868', '3315024102060002', 'Amalia Setyaningrum', 'Grobogan', '2006-02-01', 'P', '082137998713', 'Nampu', 7),
(24, '0051212315', '3315026709050001', 'AMANDA AGNESIA', 'GROBOGAN', '2005-09-27', 'P', '085773439583', 'KEDUNGWUINGU', 8),
(25, '0050993620', '3315025206050001', 'Amanda Natasya', 'Grobogan', '2005-06-12', 'P', '08893331298', 'Karto dipuran', 9),
(26, '0043194143', '3315164905040003', 'AMEYLIA AMBARWATI', 'GROBOGAN', '2004-05-09', 'P', '081348748187', 'GALEH', 5),
(27, '0066540409', '3315025701060001', 'Ana Setiya Ningsih', 'grobogan', '2006-01-17', 'P', '083866883680', 'Mojoagung', 6),
(28, '0056854126', '3315023009050004', 'Ananda Afriza Adhi Kurniawan', 'Grobogan', '2005-09-30', 'L', '082136524164', 'Sumberjosari', 3),
(29, '0045238286', '3315167112040006', 'Ananda Putri Rizqi', 'Jakarta', '2004-12-31', 'P', '082241953509', 'Plosorejo', 7),
(30, '0060136486', '3315164501060004', 'Ananda Shalsabila', 'Grobogan', '2006-01-05', 'P', '08813958382', 'Guyangan', 8),
(31, '0044804992', '3309196412049001', 'ANDINI PRAMUDIA', 'Boyolali', '2004-12-24', 'P', '085338198252', 'Mangkokan', 9),
(32, '0052224066', '3315024206060005', 'ANGELITA AYUNINGTYAS', 'Grobogan', '2006-06-02', 'P', '6282313295895', 'Sumber Barat', 2),
(33, '0051139193', '3315022503050001', 'ANGGA PUTRA PRATAMA', 'Grobogan', '2005-03-25', 'L', '088802984440', 'Jatisari', 4),
(34, '0053797364', '3315165811050003', 'ANGGRAENI DEWI PUSPITA SARI', 'GROBOGAN', '2005-11-18', 'P', '085853346670', 'GALEH', 5),
(35, '0053009276', '3275095711050007', 'Anggun Halimah', 'Grobogan', '2005-11-17', 'P', '082138344849', 'Sedadi', 3),
(36, '0051519599', '3315024809050002', 'Anggun Kalpataru', 'Grobogan', '2005-09-08', 'P', '082314865720', 'Mrayun', 6),
(37, '0058356558', '3315161204050000', 'Anis Dzakiyu Salman Abrilo', 'Grobogan', '2005-04-12', 'L', '081328042329', 'Guci RT 4/1', 8),
(38, '0068601581', '3315024609060001', 'Anis Nur Afifah', 'Grobogan', '2006-09-06', 'P', '082337016615', 'Karanganyar', 7),
(39, '0052900102', '3315026005050002', 'ANISA KUSHIDAYANTI', 'Grobogan', '2005-05-20', 'P', '088226753548', 'Ketro', 4),
(40, '0051279235', '3315026811050001', 'ANITA RIYANTI PRAMESTI', 'Grobogan', '2005-11-28', 'P', '085290023407', 'Dusun Dempel', 2),
(41, '0056351195', '3315026409050001', 'ANNISA NADIFA NAFSY', 'GROBOGAN', '2005-09-24', 'P', '088225413629', 'Karangjati', 8),
(42, '0052040950', '3309196804059001', 'APRILIA PUSPITASARI', 'Boyolali', '2005-04-28', 'P', '081339653881', 'Juwangi', 9),
(43, '0052330886', '3315167004050001', 'Apriliana Adi Saputri', 'Grobogan', '2005-04-30', 'P', '088802772358', 'Sogo', 3),
(44, '0063819747', '3315026603060007', 'ARAMINTHA DEFANY', 'GROBOGAN', '2006-03-26', 'P', '088232411432', 'SUMBERJOSARI', 4),
(45, '0050956597', '3315021108050002', 'Arda Saputra', 'Grobogan', '2005-08-11', 'L', '083866973599', 'Lengkong', 1),
(46, '0066869175', '3315024702060005', 'ARNEZA JOAN ARINANDA PUTRI', 'Grobogan', '2006-02-07', 'P', '088802621597', 'Termas', 2),
(47, '0053132887', '3315037107050001', 'ASTRIYANA', 'GROBOGAN', '2005-07-31', 'P', '082313319528', 'JL KARANG PANAS', 5),
(48, '0045075776', '3315026306040001', 'AYU NOVITASARI', 'Kabupaten G', '2004-06-23', 'P', '085713802260', 'Dusun Kayen', 3),
(49, '0053439702', '3315166304050002', 'AZZA NURCHAMILA', 'GROBOGAN', '2005-04-23', 'P', '082313495894', 'Gundi', 6),
(50, '0044997772', '3315022705040003', 'Bagas Ilham Sanjaya', 'Kabupaten G', '2004-05-27', 'L', '082134527097', 'KEDUNGWUNGU', 9),
(51, '0051212329', '3315020908050004', 'Bagas Sayful', 'Grobogan', '2005-08-09', 'L', '081390253195', 'Dusun Ngumbuk', 2),
(52, '0057441460', '3309192303050002', 'BAGUS MARCHELL SATRIA DAYU PERDANA', 'Boyolali', '2005-03-23', 'L', '082228460531', 'Klego', 5),
(53, '3049963248', '3315031912040000', 'Bakhrul Ulum', 'Grobogan', '2004-12-19', 'L', '081932711495', 'Tunggu', 6),
(54, '3058690612', '3315032802050000', 'Bayu Setiawan', 'Grobogan', '2005-02-28', 'L', '085942167479', 'Tunggu, RT 4/1', 1),
(55, '0054487335', '3315020411050001', 'Bazoned Mazba Saifullah', 'Semarang', '2005-11-04', 'L', '085879572566', 'Dusun Mojo', 1),
(56, '0058887307', '3315022603050001', 'BIMA MAULANA AKBAR', 'Grobogan', '2005-03-26', 'L', '082247443074', 'Dumbong', 3),
(57, '0055019913', '3309194502050004', 'BRELIYA AYU HERU HARYANI', 'Boyolali', '2005-02-05', 'P', '081227750793', 'Duwaran', 4),
(58, '0051799040', '3315021308050004', 'BRILIAN NUR FAZA', 'Grobogan', '2005-08-13', 'L', '081360669626', 'Gadoh', 4),
(59, '0063374162', '3315026704060004', 'Cahya Aprillia Priyani', 'Grobogan', '2006-04-27', 'P', '082137804792', 'Dusun Jati', 7),
(60, '0046184663', '3315165807040001', 'Catur Aditiya', 'Grobogan', '2004-07-18', 'P', '085239023295', 'Dusun Rapah', 8),
(61, '3053159089', '3315026010050000', 'Chika Anastasya Putri', 'Grobogan', '2005-10-20', 'P', '081215586527', 'Dusun Truko, RT 2/1', 9),
(62, '0052957205', '3315025308050001', 'Cindy Grease Dwi Jaya', 'Grobogan', '2005-08-13', 'P', '081328085256', 'Dsn.Beketro', 5),
(63, '0051077801', '3315166109050007', 'Cindy Pratiwi', 'Grobogan', '2005-09-21', 'P', '089629670412', 'Dusun Rapah', 5),
(64, '0046576843', '3315034410040001', 'Cindy Veny Nur Avni', 'Grobogan', '2004-10-04', 'P', '083872025453', 'Watupawon', 2),
(65, '0051077787', '3315165803050001', 'Dahlia', 'Grobogan', '2005-03-18', 'P', '083162223562', 'Rapah', 6),
(66, '0051810805', '3315020404050001', 'DAMARJATI SATRIYA', 'Grobogan', '2005-04-04', 'L', '081393951473', 'Gunung Tugel', 7),
(67, '0053132915', '3315032612050001', 'DANA RIZQI FADLILAH', 'GROBOGAN', '2005-12-26', 'L', '085225956519', 'JL KARANG PANAS', 2),
(68, '0049890460', '3315026211040000', 'Dea Putri Rahayu', 'Grobogan', '2004-11-22', 'P', '088220282614', 'Dusun Getas', 3),
(69, '0044593386', '3315166712040003', 'Desi triana sari', 'Kabupaten G', '2004-12-27', 'P', '085741692461', 'Merbung', 7),
(70, '0044939171', '3315020812040000', 'Destio Akbar Saputra', 'Grobogan', '2004-12-08', 'L', '08818665264', 'Dusun RT 5/7', 8),
(71, '0052439834', '3315025512050003', 'Destyana Anggriani', 'Grobogan', '2005-12-15', 'P', '088226782875', 'Karangjati', 8),
(72, '0051358866', '3315026809050001', 'DEVI SEPTIYANI', 'GROBOGAN', '2005-09-28', 'P', '088238508528', 'DOLOGAN', 4),
(73, '0041589663', '3315026112040003', 'DEVITA FITRIANINGRUM', 'Kabupaten G', '2004-12-21', 'P', '081326651646', 'Gadoh', 9),
(74, '0045097631', '3315024310040005', 'Dewi Oktavianita', 'Grobogan', '2004-10-03', 'P', '082245918193', 'Gunung Tugel', 5),
(75, '0053854842', '3309194306050000', 'Dian Desilia Widya Sari', 'Boyolali', '2005-06-03', 'P', '085879550509', 'Dusun Blado RT 22/1', 6),
(76, '0058751564', '3315022401050003', 'DIAZ ARDIAN PRAMANA', 'Grobogan', '2005-01-24', 'L', '081946995694', 'Sendang', 1),
(77, '0051077799', '3315160209050005', 'Diaz Putra Firananda', 'Grobogan', '2005-09-02', 'L', '082323701510', 'Dusun Bangkle', 1),
(78, '0056915856', '3315031207050001', 'Didhan Zogafahuda. F.S.S.', 'Grobogan', '2005-07-12', 'L', '085700727339', 'jipang', 9),
(79, '0046821073', '3315021509040007', 'Dimas Setiya Wardana', 'Grobogan', '2004-09-15', 'L', '085773890395', 'Jegir', 3),
(80, '0051529462', '3315164807050006', 'Dina hervin Muktikasari', 'Grobogan', '2005-07-08', 'P', '082138880543', 'Kampung Sogo', 7),
(81, '0051076393', '3315025410050001', 'Dinda Dwi Chandra Ramadhany', 'Grobogan', '2005-10-14', 'P', '081229124685', 'Katelan', 1),
(82, '0044979408', '3315021509040003', 'Dio Trimansyah', 'Grobogan', '2004-09-15', 'L', '08122566655', 'Limberejo', 4),
(83, '0052998061', '3315035209050001', 'Diyah Wuri Handayani', 'grobogan', '2005-09-12', 'P', '088216472498', 'jipang', 2),
(84, '0050994007', '3315021511050001', 'Duta Firdaus Prasetyo', 'Grobogan', '2005-11-15', 'L', '6288238227433', 'Karto dipuran', 2),
(85, '0042207689', '3315021602040004', 'DWI FEBRIYANTO', 'Kabupaten G', '2004-02-11', 'L', '087815060506', 'termas', 1),
(86, '0055507638', '3315025306050005', 'EFA NURAINI', 'Grobogan', '2005-06-13', 'P', '081230262654', 'Mrayun', 8),
(87, '0051279261', '3315020312050001', 'EGA NUR HIDAYAT', 'Grobogan', '2005-12-03', 'L', '085600400305', 'Dusun Dempel', 6),
(88, '0060113505', '3315024702060001', 'ELISA NUR AZZIZAH', 'GROBOGAN', '2006-02-07', 'P', '082223381046', 'JL RAWOH', 9),
(89, '0051799213', '3315026103050003', 'ELMA MILARANTI', 'Grobogan', '2005-03-21', 'P', '085338753058', 'Sendangharjo', 5),
(90, '0059036459', '3315034707050002', 'Elsa Dwiana Cahyani', 'Grobogan', '2005-07-07', 'P', '085540443072', 'Jln. Gatutkaca', 3),
(91, '0059868538', '3315026109050002', 'ENDAH KOMARIYAH', 'GROBOGAN', '2005-09-21', 'P', '085329758331', 'Cekel', 6),
(92, '0059874085', '3315035805050001', 'ERNA ANDRIYANI', 'Grobogan', '2005-05-18', 'P', '083866867218', 'Dsn. Doyong', 7),
(93, '0041091932', '3315034205040002', 'ESHA LISTI ANINDIA PUTRI', 'KABUPATEN G', '2004-05-02', 'P', '089687042562', 'WOLO', 8),
(94, '0060090553', '3305121507060002', 'Evando Kristiyanto Hidayah', 'Kebumen', '2006-07-15', 'L', '082313306681', 'Telawah', 7),
(95, '0057668099', '3315021701050001', 'Fa\'is Khoirul A\'nam', 'Grobogan', '2005-01-17', 'L', '087734605024', 'Sumber Barat', 3),
(96, '0055156769', '3315160710050002', 'Faishal Adhwaa\'', 'Grobogan', '2005-10-07', 'L', '082126639610', 'Plosorejo', 8),
(97, '0042797398', '3315161705040002', 'Faizal Agung Nugroho', 'Grobogan', '2004-05-17', 'L', '085200102888', 'Ketangirejo', 4),
(98, '0056601544', '3315161901050003', 'Fany Fadilah', 'Grobogan', '2005-01-19', 'L', '083865580922', 'Dusun Rapah', 1),
(99, '0055607467', '3315021905050001', 'FAUZI HANAFI', 'GROBOGAN', '2005-05-19', 'L', '085647811857', 'DUSUN PULO', 9),
(100, '0052273925', '3315025309050002', 'Fikrina Ikhsanti', 'Grobogan', '2005-09-13', 'P', '081326790943', 'Dsn. Sumber Barat', 5),
(101, '0060053121', '3315021002060001', 'FREDY AHMAD FAISAL', 'Grobogan', '2006-02-10', 'L', '087779660946', 'Kedungwungu', 5),
(102, '0060055307', '3315026605060003', 'FRISCHA NURLITA PUTRI', 'Grobogan', '2006-05-26', 'P', '088221577685', 'Jl. Legoso Raya Gg. Dogol Suta', 4),
(103, '0051072113', '3315026001050002', 'Galih Langgeng Saputri', 'Grobogan', '2005-01-20', 'P', '085702046804', 'Karangjati', 6),
(104, '0052330899', '3315165809050003', 'Galuh Putri Dwiyana', 'Grobogan', '2005-09-18', 'P', '08816790955', 'Guyangan', 7),
(105, '0052481066', '3315032401060003', 'Galuh Setiawan', 'Grobogan', '2006-01-24', 'L', '081225895243', 'Sedadi', 6),
(106, '0051520836', '5311160104050006', 'Gema Kurniawan Raspati Lede', 'Waingapu', '2005-04-01', 'L', '085878107040', 'Sumber Timur', 7),
(107, '0051316930', '3315021806050001', 'Gilang Tri Usmana', 'Grobogan', '2005-06-18', 'L', '085719671372', 'Getas', 2),
(108, '0051628685', '3315025210050003', 'Gilar Anggun Pradipta', 'Grobogan', '2005-10-12', 'L', '088237131667', 'Karangrejo', 3),
(109, '0027567372', '0', 'HADI SUSILO', 'GROBOGAN', '2004-11-03', 'L', '081225875156', 'DS. KARANGWADER', 4),
(110, '0056563831', '3315024706050013', 'Hana Syakira Apsari', 'Grobogan', '2005-06-07', 'P', '081228074098', 'Beketro', 1),
(111, '0047765456', '3309194210049003', 'HANIFA DHITAJALI', 'Boyolali', '2004-10-02', 'P', '082133099262', 'Cerme', 8),
(112, '0060058883', '3315024202060004', 'Happy Ayu Shofiana Putri', 'Grobogan', '2006-01-02', 'P', '081225089845', 'Dusun Jati', 9),
(113, '0056941209', '3315020404050000', 'Hassena Eka Aprilliasyah', 'Grobogan', '2005-04-04', 'L', '08816581683', 'Pangkalan, RT 5/3', 2),
(114, '0052779530', '3315026212050002', 'HERLINA AULIA PUTRI', 'GROBOGAN', '2005-12-22', 'P', '08885688706', 'KARANGLO', 1),
(115, '0051197679', '3315025708050003', 'HESTI AMILIA BINAWATI', 'Grobogan', '2005-08-17', 'P', '081291420731', 'Tahunan', 5),
(116, '0051209735', '3315025010050002', 'HESTI KUMALASARI', 'GROBOGAN', '2005-10-10', 'P', '08882561355', 'Gedangan', 6),
(117, '0057153980', '3601181202050001', 'Hikmawati Dewi', 'Pandegelang', '2005-02-12', 'P', '088215708152', 'Trongso', 7),
(118, '0042683645', '3315035107040001', 'Hilda Widyawati', 'Kabupaten G', '2004-07-11', 'P', '6285326648886', 'Bologarang', 2),
(119, '0036751317', '3172015207030002', 'IKLIMA DWI GALUH FIORENTINA', 'JAKARTA', '2003-07-12', 'P', '081358172223', 'PULO', 8),
(120, '0053457201', '3315161203050003', 'Ilham Santoso', 'Kabupaten G', '2005-03-12', 'L', '6285225286424', 'Karang Widoro', 8),
(121, '0057970298', '3309192405050002', 'IMAM IQBAL YON BABY', 'Boyolali', '2005-05-24', 'L', '083865601202', 'Klego', 9),
(122, '0051968858', '3315024205050002', 'Imeilda Rifatin Anggraini', 'Grobogan', '2005-05-02', 'P', '081238564069', 'Dsn.Kalitengah', 9),
(123, '0051197682', '3315026012050002', 'INA ANZANA', 'Grobogan', '2005-12-20', 'P', '082324789264', 'Ngerdemak', 6),
(124, '0050994076', '3315026708050004', 'Indah dwi astuti', 'Grobogan', '2005-08-27', 'P', '088802756083', 'Karto dipuran', 3),
(125, '0051197773', '3315024503050005', 'INDANA KHOIRINA', 'Kabupaten G', '2005-03-05', 'P', '083108573368', 'Dusun Gentang', 5),
(126, '0050930602', '3315021608050001', 'Insa Imam Yattaqi', 'Grobogan', '2005-08-16', 'L', '082133248450', 'Karanganyar', 5),
(127, '0057172432', '3315026312050001', 'Intan Ayu Wicahyani', 'Grobogan', '2005-12-23', 'P', '085338121238', 'Sumberjosari', 6),
(128, '0058124865', '3315030905050001', 'Irpan sugiarto', 'Grobogan', '2005-05-09', 'L', '081236812006', 'jipang', 3),
(129, '0059087923', '3315026412050001', 'ISNA NUR LAILA', 'Grobogan', '2005-12-24', 'P', '081314211154', 'Dusun Dempel', 7),
(130, '0050973103', '3315025702050003', 'Isnaini Chusnul Khotimah', 'KABUPATEN G', '2005-02-17', 'P', '088239714241', 'putat', 8),
(131, '0041909841', '3315027010040003', 'Isyana Rachmawati', 'Grobogan', '2004-10-30', 'P', '085878772976', 'Dusun Krasak', 9),
(132, '0054911686', '3309195808050005', 'ITA WULANSARI', 'BOYOLALI', '2005-08-18', 'P', '088221346326', 'KEDUNG RANDU', 4),
(133, '0052791483', '3315035003050004', 'Jenisa Amanda Alfani', 'Kabupaten G', '2005-03-10', 'P', '081548934800', 'Penawangan', 5),
(134, '0053499757', '3315025512050002', 'JESICA PUTRI KUMALASARI', 'GROBOGAN', '2005-12-15', 'P', '081228231158', 'Prejengan', 6),
(135, '0056802084', '3315035505050002', 'Jesika Ananta Meisanti', 'Grobogan', '2005-05-15', 'P', '085643161192', 'Jln. Bima III Kramat krajan', 7),
(136, '0059727991', '3315026808050001', 'JUANA MUGI LESTARI', 'Grobogan', '2005-08-28', 'P', '6285292245532', 'Karangwuni', 2),
(137, '0054236186', '3315022005050001', 'JUANS VIRNANDO', 'Grobogan', '2005-05-20', 'L', '081344197253', 'Dumbong', 6),
(138, '0050930603', '3315024206050002', 'Junea Noni Afriana', 'Grobogan', '2005-06-02', 'P', '081225433904', 'Karanganyar', 8),
(139, '0057299218', '3315025105050002', 'Kaela Dika Olivia', 'Grobogan', '2005-05-11', 'P', '083105940086', 'Lorejo', 3),
(140, '0064604155', '3315024604060002', 'KAYLA PUTRI APRILYA', 'Grobogan', '2006-04-06', 'P', '082322321779', 'Tegalsari', 4),
(141, '0051101803', '3315161405050001', 'KHABIB MUHYIDDIN KHOLIS', 'GROBOGAN', '2005-05-14', 'L', '081227235656', 'Dusun Sambung', 7),
(142, '0039580165', '3315022004050003', 'KORI FIRDAUSA', 'Grobogan', '2003-10-24', 'L', '085727167089', 'Sumber Barat', 8),
(143, '0051358918', '3315025008050003', 'KURNIA PANGESTIKA', 'GROBOGAN', '2005-10-08', 'P', '087725344448', 'KETRO', 2),
(144, '0060113513', '3315026302060001', 'KUSMA NADILA', 'GROBOGAN', '2006-02-23', 'P', '081214077334', 'RAWOH', 9),
(145, '0059814212', '3674035505090001', 'Lailatul Ni\'mah', 'Grobogan', '2005-03-12', 'P', '081226533096', 'Ketro', 5),
(146, '0056978043', '3315035702050002', 'LENI DWI ANDINI', 'KABUPATEN G', '2005-02-17', 'P', '085334726680', 'TLOGOREJO', 6),
(147, '0057732864', '3315026002060003', 'Lina Fitriyani', 'Kabupaten G', '2005-03-07', 'P', '085740571276', 'Sendangharjo', 7),
(148, '0060070382', '3315025606060004', 'LINDA DWI ISMAWATI', 'GROBOGAN', '2006-06-16', 'P', '088239470745', 'DOLOGAN', 3),
(149, '0060058950', '3315026001060000', 'Lintang Putri Ababil', 'Grobogan', '2006-01-20', 'P', '088227521235', 'Dusun Getas RT 1/4', 8),
(150, '0051013058', '3315026403050002', 'LISSA NOVITA PUTRI', 'Grobogan', '2005-03-24', 'P', '083128450782', 'Ketro', 5),
(151, '0051076558', '3315025311050001', 'Listianingsih', 'Grobogan', '2005-11-13', 'P', '08886580344', 'Kepoh', 6),
(152, '0056060944', '3315164601050006', 'Lulu\'ul Marjanah', 'Grobogan', '2005-01-06', 'P', '085878801922', 'Kerep', 4),
(153, '0054534220', '3309194604059001', 'LUTHFIYATUN FARIDATUN NAFIAH', 'Boyolali', '2005-04-06', 'P', '082164692839', 'Cerme', 7),
(154, '0062765455', '3315021206060004', 'Ma\'ruf Fajar Nur Utomo', 'Grobogan', '2006-06-12', 'L', '085742666410', 'Limberejo', 3),
(155, '0054236490', '3315160505050008', 'MARINO REVANESTA SULAEMAN', 'Grobogan', '2005-05-05', 'L', '085741682877', 'Glonggong', 4),
(156, '0067958116', '3315021603060002', 'MARIO ADITYA YOGI PRANATA', 'Grobogan', '2006-03-16', 'L', '6281228650692', 'Gadoh', 2),
(157, '3048797198', '3313125307040003', 'Marwa Putri Sholekhah', 'Sragen', '2004-07-13', 'P', '085712164640', 'Mojoagung', 2),
(158, '0058639198', '3315034408050002', 'Mela Agustina', 'Grobogan', '2005-08-04', 'P', '085601381233', 'Desa Jipang', 3),
(159, '0048416687', '3602044907040002', 'Meli Amanda Putri', 'Grobogan', '2004-07-09', 'P', '082313118369', 'Limberejo', 4),
(160, '0054998690', '3315165107050004', 'Meliana Eka Rahmawati', 'Grobogan', '2005-07-11', 'P', '6285601010971', 'Dsn. Werdoyo', 2),
(161, '0055743079', '3315165905050002', 'Melisa Fauziyah', 'Grobogan', '2005-05-19', 'P', '081391596390', 'Bangsri', 3),
(162, '0055453919', '3315035609050006', 'Mila Dewi Cahyaningrum', 'Grobogan', '2005-09-16', 'P', '081327198642', '-', 8),
(163, '0060051620', '3315026306060001', 'Milda Amelia Istiarini', 'Grobogan', '2006-06-23', 'P', '085225137401', 'Karangwaru', 9),
(164, '0052689937', '3315020112050003', 'Milzyam Anjangsono', 'Grobogan', '2005-12-01', 'L', '087731375940', 'Sumberjosari', 9),
(165, '0060192771', '3315032807060001', 'Mochamad Riki Andreyanto', 'Grobogan', '2006-07-28', 'L', '088216573406', 'jipang', 4),
(166, '0055450779', '3315032805050002', 'Mohamad Dedi Irawan', 'Grobogan', '2005-05-28', 'L', '085842126059', 'jipang', 5),
(167, '0051073887', '3315022908050002', 'Mokhamad Andri Saputra', 'Grobogan', '2005-08-29', 'L', '081229828084', 'Dsn. Pondok', 2),
(168, '0058242935', '3315020808050006', 'MUHAMAD ARIF AFRIANSYAH', 'GROBOGAN', '2005-08-08', 'L', '081359195023', 'MANGIN', 3),
(169, '0051237840', '3315020306050003', 'Muhamad Faisal Alfi Linuwih', 'Grobogan', '2005-06-03', 'P', '08234136457', 'Sendang', 4),
(170, '0052275267', '3315162401050003', 'Muhamad Imam Safi\'i', 'Kab Groboga', '2005-01-24', 'L', '085842150686', 'Truwis', 7),
(171, '0063106996', '3315022104060002', 'Muhamad Khoirunniam', 'Grobogan', '2006-04-21', 'L', '085956521255', 'Dsn. Sumber Barat', 8),
(172, '0060070824', '3315022903060002', 'MUHAMAD MAULANA FATHUL ALIM', 'GROBOGAN', '2006-03-29', 'L', '087733974943', 'SUMBER BARAT', 2),
(173, '0043194121', '3315160406040003', 'MUHAMMAD ADIL', 'Kabupaten G', '2004-06-04', 'L', '081239132467', 'Kopek RT 5/ RW 1', 1),
(174, '0054903942', '3315032004050001', 'Muhammad Aldhy Syamsudin', 'Grobogan', '2005-04-20', 'L', '087710585395', 'Sedadi', 9),
(175, '0057411372', '3315020902050002', 'Muhammad Aron Daffa', 'Kabupaten G', '2005-02-09', 'L', '083866584958', 'Dsn. Sumber Barat', 3),
(176, '0056620631', '3315032003050001', 'MUHAMMAD BAGAS ZAENURI ILHAM', 'Grobogan', '2005-03-20', 'L', '087708982508', 'Desa Tunggu', 4),
(177, '0043491939', '3315031903040003', 'Muhammad Bagus Shahdan Masruri', 'Grobogan', '2004-03-19', 'L', '085972564395', 'Tunggu', 1),
(178, '0045075885', '3315021408040003', 'Muhammad Dwi Agus Setiawan', 'Kabupaten G', '2004-08-14', 'L', '081328028544', 'Pangkalan', 2),
(179, '0060051744', '3315021904060001', 'MUHAMMAD MAHENDRA FASIH', 'Grobogan', '2006-04-19', 'L', '087829321161', 'JAJAR', 3),
(180, '0052820464', '3315032003050001', 'Muhammad Rizal Adi Saputra ', 'Grobogan', '2005-05-25', 'L', '087812601771', 'Dusun Watupawon', 1),
(181, '0051622527', '3315020106050002', 'Mukhammad Ulil Albab', 'Grobogan', '2005-06-01', 'L', '081225538113', 'Sumber Barat', 5),
(182, '0058042687', '3315020106050001', 'Mukhammad Ulinnuha', 'Grobogan', '2005-06-01', 'L', '085230175831', 'Sumberjosari', 6),
(183, '0060041800', '3315026302060005', 'MULQI RIZKI AULIA', 'Jakarta', '2006-02-23', 'P', '085333432756', 'ngerdemak', 5),
(184, '0046479289', '3315031103040001', 'Muna Kurniawati', 'Grobogan', '2004-03-10', 'P', '081327350013', 'Toko', 6),
(185, '0066147956', '3315027003060001', 'Musthika Arifah', 'Grobogan', '2006-03-30', 'P', '081918526111', 'Sumber Timur', 7),
(186, '3056683218', '3315165507650000', 'Naabigh Safety Lathifah', 'Grobogan', '2005-07-07', 'P', '08817673137', 'Gundi', 8),
(187, '0057520607', '3315026509050002', 'NABILA AYU LESTARI', 'GROBOGAN', '2005-09-24', 'P', '082334326053', 'JAMUS', 9),
(188, '3056669124', '3315025708050000', 'Nabila Faradiba', 'Grobogan', '2005-08-17', 'P', '085866755690', 'Dusun Mendalan RT 2/8', 4),
(189, '0044546638', '3315165511040002', 'Nada Nur Bayanti', 'Grobogan', '2004-11-15', 'P', '083865984614', 'Plosorejo', 7),
(190, '0051197135', '3315026510050001', 'NADILA RAHMA RAMADHANI', 'GROBOGAN', '2005-10-25', 'P', '088238352281', 'Dusun Jetis', 5),
(191, '0045136308', '3315026212040002', 'Nadya Febyanti', 'Kabupaten G', '2004-12-22', 'P', '085643161211', 'Sumberjosari', 2),
(192, '0048714202', '3315165812040001', 'Nanda Lutfiyani', 'Grobogan', '2004-12-18', 'P', '081225816132', 'Merbung', 6),
(193, '0051316010', '3315026708050006', 'Natasya Agustina Madiyani', 'Grobogan', '2005-08-27', 'P', '081228510607', 'Dusun Jati', 7),
(194, '0052275276', '3315164209050005', 'Nayara Nia Niken Arysandi', 'Grobogan', '2005-09-02', 'P', '083840107727', 'kepoh', 8),
(195, '0060054769', '3315026803060001', 'NAZMI RISMAWATI', 'GROBOGAN', '2006-03-28', 'P', '088233905642', 'Dusun Jetis', 9),
(196, '0049282681', '3315026611040002', 'NINIK AMBARWATI', 'GROBOGAN', '2004-11-26', 'P', '088215765048', 'JAMUS', 5),
(197, '0054082511', '3315020808050004', 'Noval Ferdiansyah', 'Grobogan', '2005-08-08', 'L', '081228868827', 'Dsn. Kedungwungu', 7),
(198, '0053506780', '3315034511050002', 'Novia Tia Ayu Anggraini', 'Grobogan', '2005-11-05', 'P', '085741387562', 'Jln. Nakulo Kramat Krajan', 3),
(199, '3033869524', '3315164611030001', 'Nur Halimah', 'Grobogan', '2003-11-10', 'P', '082324041782', 'Kerep', 4),
(200, '3033869524', '3315164611030001', 'Nur Halimah', 'Grobogan', '2005-06-29', 'P', '082324041782', 'Gunung Tugel', 4),
(201, '0060051741', '3315164103060001', 'NUR HANIK ATUL ZAROAH', 'Grobogan', '2006-03-01', 'P', '083110393541', 'Latak', 2),
(202, '0067614645', '3315021403060003', 'Nur Kholis', 'GROBOGAN', '2006-03-14', 'L', '088232505974', 'SUMBER TIMUR', 1),
(203, '0060070825', '3315026407060002', 'NUR YULIANA ASTUTIK', 'GROBOGAN', '2006-07-24', 'P', '083865494086', 'JATIMONTONG', 3),
(204, '0059582957', '3315027110050003', 'OKTAVIA FIBRIANTI', 'Grobogan', '2005-10-31', 'P', '085333217219', 'Gunungtumpeng', 4),
(205, '0052275155', '3315166310050001', 'Oktavian Utami', 'Grobogan', '2005-10-23', 'P', '083128824448', 'Kemloko', 6),
(206, '0045895400', '3315165408040007', 'Pipin Eka Wati', 'KABUPATEN G', '2004-08-14', 'P', '081229493990', 'Guci', 1),
(207, '0046613442', '3174085211040003', 'PUJI FITRI LESTARI', 'JAKARTA', '2004-11-12', 'P', '083862652474', 'SUMBERJOSARI', 1),
(208, '0057716849', '3322164204050001', 'PUJI LESTARI', 'KAB. SEMARA', '2005-04-02', 'P', '6283128805154', 'KARANGRAYUNG-JUWANGI', 2),
(209, '0052012580', '3315025712050001', 'PURI DESI KURNIAWATI', 'GROBOGAN', '2005-12-17', 'P', '088806511825', 'Rawoh', 7),
(210, '0059657121', '3315164503040003', 'Putri Dewi Sarwidhi', 'Kabupaten G', '2004-03-05', 'P', '085742110749', 'Merbung', 8),
(211, '0060039637', '3315025504060003', 'PUTRIANA MA\'RIFAH', 'Grobogan', '2006-04-15', 'P', '083114199022', 'Ketro', 9),
(212, '0054742517', '3309193011050001', 'RADITYA WAHYU PRATOMO', 'Boyolali', '2005-11-30', 'L', '085331057165', 'Kangkunglor', 8),
(213, '0060058884', '3315026206060001', 'Rahma Adhinita', 'Grobogan', '2006-06-22', 'P', '081214093273', 'Dusun Jati', 5),
(214, '0055242321', '3315025804050003', 'Rahma Fatiha Azahra', 'Grobogan', '2005-04-18', 'P', '0', 'Sumber Barat', 1),
(215, '0047146674', '3309190311049005', 'RAMADHAN BAYU SEJATI', 'Boyolali', '2004-11-03', 'L', '0895363062254', 'Pecukan', 9),
(216, '0051212888', '3315021810050004', 'Ramadhan Mahendra', 'Grobogan', '2005-10-18', 'L', '082313117795', 'Sendangharjo', 5),
(217, '0054166093', '3315030307050001', 'Rangga Putra Hermawan', 'Grobogan', '2005-07-03', 'L', '085877173698', 'Jipang Rt 3/2 Penawangan Grobogan', 4),
(218, '0054323676', '3175065008050010', 'Ratu Erridha Alfattikhah', 'Jakarta', '2005-08-10', 'P', '08818525495', 'Kalisari', 3),
(219, '0060036731', '3315025505060001', 'Reisty Sabrina', 'Grobogan', '2006-05-15', 'P', '082245918131', 'Karanganyar', 6),
(220, '0051426428', '3316022605050002', 'RENGGA BIMANTARA PUTRA', 'BLORA', '2005-05-26', 'L', '088221664072', 'Karangjati', 6),
(221, '0059248940', '3309190507059002', 'RESANO ABAN ISWANTO', 'Boyolali', '2005-07-05', 'L', '085640368966', 'Kalongan', 7),
(222, '0053132989', '3315036607050001', 'REVINA KARLA MAHARANI', 'GROBOGAN', '2005-07-26', 'P', '082265078642', 'JL RAYA LEYANGAN', 7),
(223, '0054787806', '3315166809050004', 'RIANA GIANTI', 'Grobogan', '2005-09-28', 'P', '081217819127', 'Sambung', 8),
(224, '0050956874', '3315022312050002', 'Rifki Durrohman', 'Grobogan', '2005-12-23', 'L', '088215126399', 'Lengkong', 1),
(225, '0054584895', '3315022103050001', 'Rijal Yuhana Faza', 'Kabupaten G', '2005-03-21', 'L', '085942027528', 'Sendangharjo', 8),
(226, '0052831333', '3315024101050003', 'RINA INDRI ASTUTI', 'Kabupaten G', '2005-01-01', 'P', '085238800682', 'Dusun Truko', 9),
(227, '0051198049', '3315021910050003', 'Risma Kurniawan', 'Grobogan', '2005-10-19', 'L', '083146450641', 'Tangkis', 2),
(228, '0051310464', '3315025906050001', 'RISMA MEGININDA', 'Grobogan', '2005-06-19', 'P', '088233501437', 'Mrayun', 5),
(229, '0068779648', '3315021301060001', 'Riyan Guritno', 'Grobogan', '2006-01-13', 'L', '081225875635', 'Welahan', 9),
(230, '0057236487', '3315021003050001', 'RIZKI APRIANDI', 'Kabupaten G', '2005-03-10', 'L', '088238015971', 'Dusun Rawoh', 1),
(231, '3059486126', '3315026302050000', 'Rizqia Aulia Rahman', 'Grobogan', '2005-02-02', 'P', '085230175905', 'Dusun Tangkis RT 3/3', 6),
(232, '0038575393', '3315022311030001', 'ROHMAT HIDAYAT', 'Grobogan', '2002-11-23', 'L', '083866584802', 'Ketro', 3),
(233, '0057367164', '3315166708050001', 'ROJABIATUS ISTIQOMAH', 'GROBOGAN', '2005-08-27', 'P', '085602432072', 'GOLENG', 7),
(234, '0052179119', '3315160906050001', 'RONALDA ARDIONA JANGKARU', 'Grobogan', '2005-06-09', 'L', '085640894201', 'JL. JEND. SUDIRMAN', 5),
(235, '0048558967', '3315022311040002', 'RUJITO', 'GROBOGAN', '2004-11-23', 'L', '085934926851', 'SUMBERBARAT', 6),
(236, '0052330881', '3315160603050001', 'Ryan Fajar Pratama', 'Grobogan', '2005-03-06', 'L', '0859166091993', 'Bangsri', 4),
(237, '0059798957', '3315021712050003', 'RYU GENTA ARYA PRATAMA', 'Grobogan', '2005-12-17', 'L', '0', 'SUMBERJOSARI', 1),
(238, '0066564850', '3315164606050005', 'SABILA RAHMATIKA', 'GROBOGAN', '2005-06-06', 'P', '088233580232', 'Guci', 2),
(239, '0060136489', '3321144204060001', 'Sabrina Aditya Maharani', 'Grobogan', '2006-04-02', 'P', '081391803841', 'Guyangan', 3),
(240, '0051198066', '3315025406050001', 'Salima Najwa Ikrimatus Sa\'diyah', 'Grobogan', '2005-06-14', 'P', '082136320299', 'Pangkalan', 8),
(241, '0052330878', '3315165601050004', 'Salsa Kurniasari', 'Grobogan', '2005-01-16', 'P', '088228898760', 'Guyangan', 4),
(242, '0054179214', '3315024607050002', 'SALSABILLA PUJI HARTANINGRUM', 'Grobogan', '2005-07-06', 'P', '085742606852', 'Dusun Jaten', 2),
(243, '0051238543', '3315022604050003', 'Sani Fathudin', 'Grobogan', '2005-04-26', 'L', '087880018510', 'Sendang', 7),
(244, '0052011806', '3315025508050003', 'SANTI RAHAYU', 'GROBOGAN', '2005-08-15', 'P', '082323706853', 'RAWOH', 9),
(245, '0055616468', '3315026004050001', 'SANYA AURELYA', 'Grobogan', '2005-04-20', 'P', '085803020913', 'Gadoh', 4),
(246, '0051271465', '3316025408060000', 'Sarah Al Ihyaul Ulim', 'Grobogan', '2005-08-14', 'P', '085338341719', 'Dusun Kalisari RT 7/3', 1),
(247, '0054502621', '3315021005050003', 'SATRIYO RESTU SAPUTRO', 'GROBOGAN', '2005-05-10', 'L', '6281215361730', 'CEKEL', 2),
(248, '0033623997', '3309194809030002', 'SEFIA NINGRUM', 'Boyolali', '2003-09-06', 'P', '083144812262', 'Sampangan', 2),
(249, '0047407632', '3309194102040003', 'SELIA', 'Boyolali', '2004-02-01', 'P', '085238772559', 'Pecukan', 3),
(250, '0052998282', '3315030209050003', 'Septa Karunia', 'Grobogan', '2005-09-02', 'L', '085600556564', 'Jipang', 8),
(251, '0060051633', '3315024809060003', 'Septia Tri Nastiti Anggit Pramesti', 'Grobogan', '2006-09-08', 'P', '081227174245', 'Karangasem', 5),
(252, '0051899512', '3315134512050003', 'SESILIA ADVENTYAS DESTIYANA', 'GROBOGAN', '2005-12-05', 'P', '087779231786', 'JL. CEMPAKA 2 19', 6),
(253, '0043784781', '3603126103050001', 'SHABRINA AISHA SALSABILA', 'TANGERANG', '2005-03-21', 'P', '082124990967', 'Jl. Pinus VII/33 Pd. Rejeki', 7),
(254, '0060039035', '3315024301060001', 'Sherlyana citra lestari', 'Grobogan', '2006-01-03', 'P', '08953590722', 'Pangkalan', 4),
(255, '0060058946', '3315024401050000', 'Sibi Kinanti', 'Grobogan', '2006-01-04', 'P', '082136304878', 'Dusun Getas RT 3/5', 2),
(256, '3041895086', '3315163010040000', 'Sifa Saputro', 'Grobogan', '2004-10-30', 'L', '081230291673', 'Pahesan RT 1/1', 9),
(257, '0045856275', '3315162310040005', 'Sigit Dwi Laksono', 'Grobogan', '2004-10-23', 'L', '081391221652', 'Sumurgede', 1),
(258, '0050956882', '3315025306050004', 'Sindu Finata', 'Grobogan', '2005-06-13', 'P', '085385086405', 'Lengkong', 8),
(259, '0060070400', '3315026202060007', 'SINTA SISWANDANI', 'GROBOGAN', '2006-02-22', 'P', '081228218627', 'DOLOGAN', 9),
(260, '0060051476', '3315025305060001', 'SISKA AULIYA', 'GROBOGAN', '2006-05-13', 'P', '085713583143', 'Bogor', 3),
(261, '0021943492', '3315026212030001', 'SITI BAROKAH', 'KABUPATEN G', '2003-12-22', 'P', '088232852877', 'KARANGWADER', 8),
(262, '0045775459', '3315036812040001', 'SITI MUKSODAH', 'Kabupaten G', '2004-12-15', 'P', '088237161390', 'Dsn. Galeh', 5),
(263, '3050142949', '3315021206940000', 'Siti suryanti', 'Grobogan', '2005-03-21', 'P', '085727172950', 'Sumber Barat', 6),
(264, '0056614421', '3315026608050001', 'SITI SUSANTI', 'GROBOGAN', '2005-08-26', 'P', '087812605265', 'DUSUN JAMUS', 1),
(265, '0043360202', '3315034907040004', 'SITI ZULIYA', 'Grobogan', '2004-07-09', 'P', '088806415183', 'Desa Tunggu', 7),
(266, '0045895411', '3315165311040004', 'Siyan Lutfiani', 'KABUPATEN G', '2004-11-13', 'P', '088221467683', 'Guci', 4),
(267, '0056479287', '3315026209050002', 'Sofia Septianingtyas', 'Grobogan', '2005-09-22', 'P', '081325540845', 'Dsn. Gilingan', 8),
(268, '0058285069', '3315026505050005', 'Sresti Bersa Valesesti', 'Grobogan', '2005-05-25', 'P', '085866693393', 'Mojoagung', 2),
(269, '0043794099', '3315095512960001', 'Sri Rahayu', 'Kabupaten G', '2004-09-17', 'P', '087805456864', 'Sidorejo', 3),
(270, '0059074391', '3315036605050002', 'SRI WULAN', 'Grobogan', '2005-05-26', 'P', '085601364365', 'Dsn. Bendungan', 9),
(271, '0051954033', '3315020404050004', 'Steven Eka Aprelianto', 'Kabupaten G', '2005-04-04', 'L', '08886527825', 'Dempel', 1),
(272, '0056041500', '3315024905050003', 'STIVANI ASTRI KUSUMANINGRUM', 'Grobogan', '2005-05-09', 'P', '082314951987', 'Tahunan', 4),
(273, '0057212534', '3309194805050001', 'SUCHI AENGEL INA ROHMAN PUTRI', 'BOYOLALI', '2005-05-08', 'P', '081390182065', 'PONDOK', 2),
(274, '0059641667', '3315026705050002', 'SUKI MUNTIANA', 'Grobogan', '2005-05-27', 'P', '081384250927', '', 3),
(275, '0057564650', '3315021102060004', 'Sultan Abdul Ghofur', 'Grobogan', '2006-02-11', 'L', '085713280470', 'Karangjati', 5),
(276, '0044939286', '3315025312040002', 'SYIFA HANA ULWAN HIDABI', 'Grobogan', '2004-12-13', 'P', '083192375855', 'Ketro', 4),
(277, '0051375580', '3315026209050007', 'TANTI SISDWI HARDIYANTI', 'GROBOGAN', '2005-09-22', 'P', '085875358397', 'SUMBERJOSARI', 5),
(278, '0051796342', '3315025106050003', 'TARISA ANGGRAINI', 'GROBOGAN', '2005-06-11', 'P', '083127747296', 'NANGGUNG', 6),
(279, '0055075307', '3315032506050002', 'TAUFIQ ISMAIL', 'Grobogan', '2005-06-25', 'L', '083122684493', 'Tunggu', 3),
(280, '0055010919', '3315026508050002', 'TEA MARGARET', 'GROBOGAN', '2005-08-25', 'P', '085962342582', 'DOLOGAN', 2),
(281, '0052844411', '3315172807050003', 'TEGAR TRI PRASETYO', 'GROBOGAN', '2005-07-28', 'L', '088225275289', 'SABAN', 6),
(282, '0048857668', '3315035206040002', 'TIARA FEBRIYANTI', 'Kabupaten G', '2004-06-12', 'P', '088229901542', 'Dsn. Galeh', 7),
(283, '0051810877', '3315026405050001', 'TRI WAHYUNI', 'Grobogan', '2005-05-24', 'P', '082135868664', 'Gunung Tugel', 8),
(284, '0051383837', '3309192503050001', 'TRISTAN RAVI NUGRAHA', 'Boyolali', '2005-03-25', 'L', '085156920535', 'Kalongan', 7),
(285, '0051197784', '3315024607050001', 'TYAS AYU SALSABILA', 'Grobogan', '2005-07-06', 'P', '085239025602', 'Rawoh', 9),
(286, '0051197205', '3315025210050004', 'ULFA RISTIANINGSIH', 'GROBOGAN', '2005-10-12', 'P', '088224192669', 'Dusun Jetis', 5),
(287, '0053797354', '3315166105050007', 'ULIYAS SARI', 'GROBOGAN', '2005-05-21', 'P', '085708476881', 'WERDOYO', 6),
(288, '0047862326', '3315166812040002', 'Ulyafathur Rohmah', 'Grobogan', '2004-12-28', 'P', '085345188964', 'Guci', 7),
(289, '0051197692', '3315025108050003', 'USWATUN KHASANAH', 'Grobogan', '2005-08-11', 'P', '082327359783', 'Ngerdemak', 8),
(290, '0053494503', '3309194808059002', 'VALERIA EKA STEVANNY', 'Boyolali', '2005-08-08', 'P', '085713361955', 'Karangmanis', 1),
(291, '0053305263', '3315026209050005', 'Verela Alfiana', 'Grobogan', '2005-09-22', 'P', '08885991271', 'Ketro', 9),
(292, '0057856051', '3315026209050006', 'Verela Alfiani', 'Grobogan', '2005-09-22', 'P', '082137424692', 'Ketro', 5),
(293, '0051198573', '3315026610050002', 'Vina Oktavia Rahmawati', 'Grobogan', '2005-10-26', 'P', '082133348514', 'Payaman', 3),
(294, '0060051907', '3315026101060001', 'Viola Amanda Stievhany', 'Grobogan', '2006-01-21', 'P', '082135833294', 'Kalak kidul', 6),
(295, '0051198069', '3315025208050002', 'Virda Ayu Prihatini', 'Grobogan', '2005-08-12', 'P', '088228782987', 'Pangkalan', 4),
(296, '0045510178', '3315020609040003', 'VISTO NABIGHAH ANTENG', 'Kabupaten G', '2004-09-06', 'L', '082242506160', 'Gadoh', 1),
(297, '0060058947', '3315025101060001', 'Vita Atika Lestari', 'Grobogan', '2006-01-11', 'P', '08818595173', 'Termas', 7),
(298, '0053439696', '3315166602050003', 'VIVANDA PRITASARI', 'KABUPATEN G', '2005-02-26', 'P', '089647591880', 'GUNDI', 8),
(299, '0051077803', '3315164511050001', 'WAFIQ FADHILAH YAHYA', 'Grobogan', '2005-11-05', 'P', '087847570141', 'Bangle', 2),
(300, '0052151214', '3315021308050003', 'WILDAN ARDIANSYAH SUDJADI', 'GROBOGAN', '2005-08-13', 'L', '085228535342', 'NANGGUNG', 1),
(301, '0060037884', '3315024505060003', 'Winda Melisa', 'Grobogan', '2006-05-05', 'P', '085291996122', 'Ketro', 9),
(302, '0052330902', '3315165311050001', 'Windi Nadhira Fitriani', 'Grobogan', '2005-11-13', 'P', '08883936454', 'Guyangan', 5),
(303, '0055041361', '3315167103050004', 'Wiwin Setyo Wulan', 'Grobogan', '2005-03-31', 'P', '082323536274', 'Werdoyo', 6),
(304, '0047592164', '3315036612040002', 'WULAN AVITA SARI', 'Kabupaten G', '2004-12-26', 'P', '081228805531', 'Dsn. Galeh', 7),
(305, '0045098402', '3315026910040003', 'Wulan Rizky', 'Kabupaten G', '2004-10-29', 'P', '081325111513', 'Sendang', 8),
(306, '0045132471', '3315024809040001', 'YENI FATMA WATI', 'Grobogan', '2004-09-08', 'P', '085727581488', 'Dusun Dempel', 3),
(307, '0051755084', '3315020209050002', 'YOGA RIDWAN WIDIANTORO', 'Grobogan', '2005-09-02', 'L', '081229515687', 'Dusun Truko', 1),
(308, '0055589628', '3315033107050001', 'Yulian Setyo Winoto', 'Grobogan', '2005-07-31', 'L', '081225895157', 'Sedadi', 8),
(309, '0046571691', '3315026106040003', 'Yuni Liana Nadia Puspitasari', 'Kabupaten G', '2004-06-21', 'P', '081225723806', 'Karangrejo', 4),
(310, '0052011679', '3315026305050002', 'YUNI NOVITASARI', 'GROBOGAN', '2005-05-23', 'P', '081391803731', 'Rawoh', 4),
(311, '0051197916', '3315021807050002', 'YUSUF BAYU ARTA', 'GROBOGAN', '2005-07-18', 'L', '085923197981', 'DUSUN RAWOH ', 1),
(312, '0065812710', '3315020803060002', 'Zaky Rage Aryadi', 'Grobogan', '2006-03-08', 'L', '089519311023', 'Gilingan', 9),
(313, '0043629648', '3309195510040002', 'ZARA SIFA SALSABILA', 'Boyolali', '2004-10-15', 'P', '087826762399', 'Karangmanis', 9),
(314, '0051310223', '3315025404050003', 'Zumrotun Nasiroh', 'Grobogan', '2005-04-14', 'P', '085230347781', 'Termas', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'GURU01', '123456', 3),
(3, 'GURU02', '123456', 3),
(4, 'GURU03', '123456', 3),
(5, 'GURU04', '123456', 3),
(6, 'GURU05', '123456', 3),
(7, 'GURU06', '123456', 3),
(8, 'GURU07', '123456', 3),
(9, 'GURU08', '123456', 3),
(10, 'GURU09', '123456', 3),
(11, 'GURU10', '123456', 3),
(12, 'GURU11', '123456', 3),
(13, 'GURU12', '123456', 3),
(14, 'GURU13', '123456', 3),
(15, 'GURU14', '123456', 3),
(16, 'GURU15', '123456', 3),
(17, 'GURU16', '123456', 3),
(18, 'GURU17', '123456', 3),
(19, 'GURU18', '123456', 3),
(20, 'GURU19', '123456', 3),
(21, 'GURU20', '123456', 3),
(22, 'GURU21', '123456', 3),
(23, 'GURU22', '123456', 3),
(24, 'GURU23', '123456', 3),
(25, 'GURU24', '123456', 3),
(26, 'GURU25', '123456', 3),
(27, 'GURU26', '123456', 3),
(28, 'GURU27', '123456', 3),
(29, 'GURU28', '123456', 3),
(30, 'GURU29', '123456', 3),
(31, 'GURU30', '123456', 3),
(32, 'GURU31', '123456', 3),
(33, 'GURU32', '123456', 3),
(34, 'GURU33', '123456', 3),
(35, 'GURU34', '123456', 3),
(36, 'GURU35', '123456', 3),
(37, 'GURU36', '123456', 3),
(38, 'GURU37', '123456', 3),
(39, 'GURU38', '123456', 3),
(40, 'GURU39', '123456', 3),
(41, 'GURU40', '123456', 3),
(42, 'GURU41', '123456', 3),
(43, 'GURU42', '123456', 3),
(44, 'GURU43', '123456', 3),
(45, 'GURU44', '123456', 3),
(49, '0053221401', '123456', 2),
(50, '0052998056', '123456', 2),
(51, '0059006960', '123456', 2),
(52, '0045419416', '123456', 2),
(53, '0067611966', '123456', 2),
(54, '0056099473', '123456', 2),
(55, '0059189644', '123456', 2),
(56, '0048252956', '123456', 2),
(57, '0052800271', '123456', 2),
(58, '0051012587', '123456', 2),
(59, '0045918650', '123456', 2),
(60, '0044997641', '123456', 2),
(61, '0045075576', '123456', 2),
(62, '0053797353', '123456', 2),
(63, '0051755675', '123456', 2),
(64, '0060054866', '123456', 2),
(65, '0056096557', '123456', 2),
(66, '0051077965', '123456', 2),
(67, '0051237235', '123456', 2),
(68, '0051197028', '123456', 2),
(69, '0059992405', '123456', 2),
(70, '0060054868', '123456', 2),
(71, '0051212315', '123456', 2),
(72, '0050993620', '123456', 2),
(73, '0043194143', '123456', 2),
(74, '0066540409', '123456', 2),
(75, '0056854126', '123456', 2),
(76, '0045238286', '123456', 2),
(77, '0060136486', '123456', 2),
(78, '0044804992', '123456', 2),
(79, '0052224066', '123456', 2),
(80, '0051139193', '123456', 2),
(81, '0053797364', '123456', 2),
(82, '0053009276', '123456', 2),
(83, '0051519599', '123456', 2),
(84, '0058356558', '123456', 2),
(85, '0068601581', '123456', 2),
(86, '0052900102', '123456', 2),
(87, '0051279235', '123456', 2),
(88, '0056351195', '123456', 2),
(89, '0052040950', '123456', 2),
(90, '0052330886', '123456', 2),
(91, '0063819747', '123456', 2),
(92, '0050956597', '123456', 2),
(93, '0066869175', '123456', 2),
(94, '0053132887', '123456', 2),
(95, '0045075776', '123456', 2),
(96, '0053439702', '123456', 2),
(97, '0044997772', '123456', 2),
(98, '0051212329', '123456', 2),
(99, '0057441460', '123456', 2),
(100, '3049963248', '123456', 2),
(101, '3058690612', '123456', 2),
(102, '0054487335', '123456', 2),
(103, '0058887307', '123456', 2),
(104, '0055019913', '123456', 2),
(105, '0051799040', '123456', 2),
(106, '0063374162', '123456', 2),
(107, '0046184663', '123456', 2),
(108, '3053159089', '123456', 2),
(109, '0052957205', '123456', 2),
(110, '0051077801', '123456', 2),
(111, '0046576843', '123456', 2),
(112, '0051077787', '123456', 2),
(113, '0051810805', '123456', 2),
(114, '0053132915', '123456', 2),
(115, '0049890460', '123456', 2),
(116, '0044593386', '123456', 2),
(117, '0044939171', '123456', 2),
(118, '0052439834', '123456', 2),
(119, '0051358866', '123456', 2),
(120, '0041589663', '123456', 2),
(121, '0045097631', '123456', 2),
(122, '0053854842', '123456', 2),
(123, '0058751564', '123456', 2),
(124, '0051077799', '123456', 2),
(125, '0056915856', '123456', 2),
(126, '0046821073', '123456', 2),
(127, '0051529462', '123456', 2),
(128, '0051076393', '123456', 2),
(129, '0044979408', '123456', 2),
(130, '0052998061', '123456', 2),
(131, '0050994007', '123456', 2),
(132, '0042207689', '123456', 2),
(133, '0055507638', '123456', 2),
(134, '0051279261', '123456', 2),
(135, '0060113505', '123456', 2),
(136, '0051799213', '123456', 2),
(137, '0059036459', '123456', 2),
(138, '0059868538', '123456', 2),
(139, '0059874085', '123456', 2),
(140, '0041091932', '123456', 2),
(141, '0060090553', '123456', 2),
(142, '0057668099', '123456', 2),
(143, '0055156769', '123456', 2),
(144, '0042797398', '123456', 2),
(145, '0056601544', '123456', 2),
(146, '0055607467', '123456', 2),
(147, '0052273925', '123456', 2),
(148, '0060053121', '123456', 2),
(149, '0060055307', '123456', 2),
(150, '0051072113', '123456', 2),
(151, '0052330899', '123456', 2),
(152, '0052481066', '123456', 2),
(153, '0051520836', '123456', 2),
(154, '0051316930', '123456', 2),
(155, '0051628685', '123456', 2),
(156, '0027567372', '123456', 2),
(157, '0056563831', '123456', 2),
(158, '0047765456', '123456', 2),
(159, '0060058883', '123456', 2),
(160, '0056941209', '123456', 2),
(161, '0052779530', '123456', 2),
(162, '0051197679', '123456', 2),
(163, '0051209735', '123456', 2),
(164, '0057153980', '123456', 2),
(165, '0042683645', '123456', 2),
(166, '0036751317', '123456', 2),
(167, '0053457201', '123456', 2),
(168, '0057970298', '123456', 2),
(169, '0051968858', '123456', 2),
(170, '0051197682', '123456', 2),
(171, '0050994076', '123456', 2),
(172, '0051197773', '123456', 2),
(173, '0050930602', '123456', 2),
(174, '0057172432', '123456', 2),
(175, '0058124865', '123456', 2),
(176, '0059087923', '123456', 2),
(177, '0050973103', '123456', 2),
(178, '0041909841', '123456', 2),
(179, '0054911686', '123456', 2),
(180, '0052791483', '123456', 2),
(181, '0053499757', '123456', 2),
(182, '0056802084', '123456', 2),
(183, '0059727991', '123456', 2),
(184, '0054236186', '123456', 2),
(185, '0050930603', '123456', 2),
(186, '0057299218', '123456', 2),
(187, '0064604155', '123456', 2),
(188, '0051101803', '123456', 2),
(189, '0039580165', '123456', 2),
(190, '0051358918', '123456', 2),
(191, '0060113513', '123456', 2),
(192, '0059814212', '123456', 2),
(193, '0056978043', '123456', 2),
(194, '0057732864', '123456', 2),
(195, '0060070382', '123456', 2),
(196, '0060058950', '123456', 2),
(197, '0051013058', '123456', 2),
(198, '0051076558', '123456', 2),
(199, '0056060944', '123456', 2),
(200, '0054534220', '123456', 2),
(201, '0062765455', '123456', 2),
(202, '0054236490', '123456', 2),
(203, '0067958116', '123456', 2),
(204, '3048797198', '123456', 2),
(205, '0058639198', '123456', 2),
(206, '0048416687', '123456', 2),
(207, '0054998690', '123456', 2),
(208, '0055743079', '123456', 2),
(209, '0055453919', '123456', 2),
(210, '0060051620', '123456', 2),
(211, '0052689937', '123456', 2),
(212, '0060192771', '123456', 2),
(213, '0055450779', '123456', 2),
(214, '0051073887', '123456', 2),
(215, '0058242935', '123456', 2),
(216, '0051237840', '123456', 2),
(217, '0052275267', '123456', 2),
(218, '0063106996', '123456', 2),
(219, '0060070824', '123456', 2),
(220, '0043194121', '123456', 2),
(221, '0054903942', '123456', 2),
(222, '0057411372', '123456', 2),
(223, '0056620631', '123456', 2),
(224, '0043491939', '123456', 2),
(225, '0045075885', '123456', 2),
(226, '0060051744', '123456', 2),
(227, '0052820464', '123456', 2),
(228, '0051622527', '123456', 2),
(229, '0058042687', '123456', 2),
(230, '0060041800', '123456', 2),
(231, '0046479289', '123456', 2),
(232, '0066147956', '123456', 2),
(233, '3056683218', '123456', 2),
(234, '0057520607', '123456', 2),
(235, '3056669124', '123456', 2),
(236, '0044546638', '123456', 2),
(237, '0051197135', '123456', 2),
(238, '0045136308', '123456', 2),
(239, '0048714202', '123456', 2),
(240, '0051316010', '123456', 2),
(241, '0052275276', '123456', 2),
(242, '0060054769', '123456', 2),
(243, '0049282681', '123456', 2),
(244, '0054082511', '123456', 2),
(245, '0053506780', '123456', 2),
(246, '3033869524', '123456', 2),
(247, '3033869524', '123456', 2),
(248, '0060051741', '123456', 2),
(249, '0067614645', '123456', 2),
(250, '0060070825', '123456', 2),
(251, '0059582957', '123456', 2),
(252, '0052275155', '123456', 2),
(253, '0045895400', '123456', 2),
(254, '0046613442', '123456', 2),
(255, '0057716849', '123456', 2),
(256, '0052012580', '123456', 2),
(257, '0059657121', '123456', 2),
(258, '0060039637', '123456', 2),
(259, '0054742517', '123456', 2),
(260, '0060058884', '123456', 2),
(261, '0055242321', '123456', 2),
(262, '0047146674', '123456', 2),
(263, '0051212888', '123456', 2),
(264, '0054166093', '123456', 2),
(265, '0054323676', '123456', 2),
(266, '0060036731', '123456', 2),
(267, '0051426428', '123456', 2),
(268, '0059248940', '123456', 2),
(269, '0053132989', '123456', 2),
(270, '0054787806', '123456', 2),
(271, '0050956874', '123456', 2),
(272, '0054584895', '123456', 2),
(273, '0052831333', '123456', 2),
(274, '0051198049', '123456', 2),
(275, '0051310464', '123456', 2),
(276, '0068779648', '123456', 2),
(277, '0057236487', '123456', 2),
(278, '3059486126', '123456', 2),
(279, '0038575393', '123456', 2),
(280, '0057367164', '123456', 2),
(281, '0052179119', '123456', 2),
(282, '0048558967', '123456', 2),
(283, '0052330881', '123456', 2),
(284, '0059798957', '123456', 2),
(285, '0066564850', '123456', 2),
(286, '0060136489', '123456', 2),
(287, '0051198066', '123456', 2),
(288, '0052330878', '123456', 2),
(289, '0054179214', '123456', 2),
(290, '0051238543', '123456', 2),
(291, '0052011806', '123456', 2),
(292, '0055616468', '123456', 2),
(293, '0051271465', '123456', 2),
(294, '0054502621', '123456', 2),
(295, '0033623997', '123456', 2),
(296, '0047407632', '123456', 2),
(297, '0052998282', '123456', 2),
(298, '0060051633', '123456', 2),
(299, '0051899512', '123456', 2),
(300, '0043784781', '123456', 2),
(301, '0060039035', '123456', 2),
(302, '0060058946', '123456', 2),
(303, '3041895086', '123456', 2),
(304, '0045856275', '123456', 2),
(305, '0050956882', '123456', 2),
(306, '0060070400', '123456', 2),
(307, '0060051476', '123456', 2),
(308, '0021943492', '123456', 2),
(309, '0045775459', '123456', 2),
(310, '3050142949', '123456', 2),
(311, '0056614421', '123456', 2),
(312, '0043360202', '123456', 2),
(313, '0045895411', '123456', 2),
(314, '0056479287', '123456', 2),
(315, '0058285069', '123456', 2),
(316, '0043794099', '123456', 2),
(317, '0059074391', '123456', 2),
(318, '0051954033', '123456', 2),
(319, '0056041500', '123456', 2),
(320, '0057212534', '123456', 2),
(321, '0059641667', '123456', 2),
(322, '0057564650', '123456', 2),
(323, '0044939286', '123456', 2),
(324, '0051375580', '123456', 2),
(325, '0051796342', '123456', 2),
(326, '0055075307', '123456', 2),
(327, '0055010919', '123456', 2),
(328, '0052844411', '123456', 2),
(329, '0048857668', '123456', 2),
(330, '0051810877', '123456', 2),
(331, '0051383837', '123456', 2),
(332, '0051197784', '123456', 2),
(333, '0051197205', '123456', 2),
(334, '0053797354', '123456', 2),
(335, '0047862326', '123456', 2),
(336, '0051197692', '123456', 2),
(337, '0053494503', '123456', 2),
(338, '0053305263', '123456', 2),
(339, '0057856051', '123456', 2),
(340, '0051198573', '123456', 2),
(341, '0060051907', '123456', 2),
(342, '0051198069', '123456', 2),
(343, '0045510178', '123456', 2),
(344, '0060058947', '123456', 2),
(345, '0053439696', '123456', 2),
(346, '0051077803', '123456', 2),
(347, '0052151214', '123456', 2),
(348, '0060037884', '123456', 2),
(349, '0052330902', '123456', 2),
(350, '0055041361', '123456', 2),
(351, '0047592164', '123456', 2),
(352, '0045098402', '123456', 2),
(353, '0045132471', '123456', 2),
(354, '0051755084', '123456', 2),
(355, '0055589628', '123456', 2),
(356, '0046571691', '123456', 2),
(357, '0052011679', '123456', 2),
(358, '0051197916', '123456', 2),
(359, '0065812710', '123456', 2),
(360, '0043629648', '123456', 2),
(361, '0051310223', '123456', 2),
(364, '0060057677', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `akademik`
--
ALTER TABLE `akademik`
  ADD PRIMARY KEY (`id_ak`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `akademik`
--
ALTER TABLE `akademik`
  MODIFY `id_ak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483650;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
