-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 21 Okt 2019 pada 06.47
-- Versi Server: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psikotesonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(3) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'robby', '8d05dd2f03981f86b56c23951f3f34d7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(7) NOT NULL,
  `id_user` int(5) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `kosong` varchar(20) NOT NULL,
  `score` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_user`, `benar`, `salah`, `kosong`, `score`, `tanggal`, `keterangan`) VALUES
(55, 121, '6', '4', '7', '35.3', '2019-04-17', 'Tidak Lulus'),
(52, 118, '16', '1', '0', '94.1', '2019-04-14', 'Lulus'),
(51, 117, '15', '1', '1', '90.2', '2019-04-14', 'Lulus'),
(61, 134, '5', '7', '0', '41.7', '2019-10-02', 'Tidak Lulus'),
(62, 135, '3', '9', '0', '25.0', '2019-10-02', 'Tidak Lulus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengaturan_tes`
--

CREATE TABLE `tbl_pengaturan_tes` (
  `id` int(4) NOT NULL,
  `nama_tes` varchar(50) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `nilai_min` varchar(20) NOT NULL,
  `peraturan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengaturan_tes`
--

INSERT INTO `tbl_pengaturan_tes` (`id`, `nama_tes`, `waktu`, `nilai_min`, `peraturan`) VALUES
(1, ' Tes Psikotes PT. Adira Multifinance', '30', '75', '<ol><li>Bacalah Doa terlebih dahulu</li><li>&nbsp;Bacalah soal tes psikotes yang diujikan dengan teliti tiap-tiap soal sebelum menjawab</li><li>Pengerjaan soal tes psikotes diberikan batasan waktu apabila waktu telah habis maka anda tidak dapat mengisi&nbsp; ataupun mengoreksi kembali jawaban dari soal yang tersedia.</li><li>Hasil psikotes akan ditampilkan setelah menyelesaikan tes psikotes.</li></ol>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id_soal` int(5) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL,
  `knc_jawaban` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_soal`
--

INSERT INTO `tbl_soal` (`id_soal`, `soal`, `a`, `b`, `c`, `d`, `knc_jawaban`, `gambar`, `tanggal`, `aktif`) VALUES
(23, 'Mobil - Bensin = Pelari - ....', 'Makanan', 'Sepatu', 'Kaos', 'Lintasan', 'a', '', '0000-00-00', 'Y'),
(24, 'Semua jenis burung bisa terbang. Semua ayam memiliki sayap', 'Semua burung memiliki sayap', 'Semua ayam bisa terbang', 'Semua ayam termasuk jenis burung', 'Semua ayam bukan termasuk jenis burung', 'd', '', '0000-00-00', 'Y'),
(25, '24 20 16 12 = ....', '10', '8', '6', '4', 'd', '', '0000-00-00', 'Y'),
(22, 'Fiktif : Fakta', 'Dongeng : Peristiwa', 'Rencana : Projeksi', 'Dugaan : Rekaan', 'Dagelan : Sandiwara', 'a', '', '0000-00-00', 'Y'),
(49, 'Gambar yang selanjutnya adalah . . .&nbsp;', 'Gambar A', 'Gambar B', 'Gambar C', 'Gambar D', 'c', '15p3-b.jpg', '2019-05-01', 'Y'),
(30, 'Pedati : Kuda = Pesawat Terbang :&nbsp;', 'Baling-Baling', 'Pilot', 'Landasan', 'Sayap', 'a', '', '0000-00-00', 'Y'),
(33, 'Perbandingan uang jajan Yoga dan uang jajan Sandi adalah 3:2, jika uang Yoga dan Sandi berjumlah Rp. 150.000, berapakah masing-masing uang Yoga dan Sandi ?', 'Rp. 80.000 dan Rp. 60.000', 'Rp. 90.000 dan Rp. 60.000', 'Rp. 90.000 dan Rp. 70.000', 'Rp. 100.000 dan Rp. 50.000', 'b', '', '0000-00-00', 'Y'),
(34, 'Putri membeli sebuah boneka seharga Rp. 50.000, kemudian ia jual lagi dengan harga Rp. 80.000. Berapa persenkah keuntungan Putri ?', '20%', '30%', '50%', '60%', 'd', '', '0000-00-00', 'Y'),
(35, 'Jika Raju senang maka nilainya tinggi, Jika nilainya tinggi maka ayah dan ibunya senang.<div>Kesimpulan yang dapat diambil dari premis diatas adalah ?</div>', 'Jika Raju senang maka nilainya tinggi', 'Jika nilai tinggi maka Raju akan senang', 'Jika Raju senang maka ayah dan ibunya senang', 'Jika nilai tinggi maka keluarga Raju akan membuat pesta', 'c', '', '0000-00-00', 'Y'),
(50, 'Gambar selanjutnya adalah . . . .', 'Gambar A', 'Gambar B', 'Gambar C', 'Gambar D', 'a', '79p4-a.jpg', '2019-05-01', 'Y'),
(37, '. . . . . . . = Interupsi', 'Penyelaan', 'Perbincangan', 'Pembicaraan', 'Kelebihan', 'a', '', '0000-00-00', 'Y'),
(40, 'Kepala : Pusing = Perut : . . . . . . .', 'Pilek', 'Gemuk', 'Mules', 'Batuk', 'c', '', '0000-00-00', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` text NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `statusaktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `stat_tes` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `tgl_lahir`, `jk`, `email`, `telp`, `alamat`, `statusaktif`, `stat_tes`) VALUES
(121, 'tubagus', '9fb9d88ca649985894292a6ce968ede6', 'Tubagus Syarif H', '1996-08-12', 'Pria', 'tubagus_sh@yahoo.com', '087831561131', 'Nagrak Sukabumi', 'Y', 'Sudah'),
(133, 'ano', 'bde9dee6f523d6476dcca9cae8caa5f5', 'ano', '2000-01-02', 'Pria', 'sadsad@g.vo', '085210245372', 'Ciaul Sukabumi', 'Y', ''),
(131, 'gaping', '65bafeb3c8669d6f638c09b95dd70fdd', 'gaping', '1999-01-01', 'Pria', 'bugabagiofficial@gmail.com', '085234561234', 'Jampang', 'Y', 'Sudah'),
(119, 'sandi', 'ac9b4e0b6a21758534db2a6324d34a54', 'Sandi', '1995-12-08', 'Pria', 'sandysp@outlook.com', '089638150342', 'Jampang', 'Y', 'Sudah'),
(117, 'robby', '8d05dd2f03981f86b56c23951f3f34d7', 'Robby Takdirillah', '1997-12-03', 'Pria', 'robbytakdirillah@gmail.com', '085210245372', 'Nagrak Sukabumi', 'Y', 'Sudah'),
(118, 'yoga', '807659cd883fc0a63f6ce615893b3558', 'Yoga Permana', '1997-10-11', 'Pria', 'yogaprrmn@gmail.com', '085234561234', 'Ciaul Sukabumi', 'Y', 'Sudah'),
(134, 'andi', 'ce0e5bf55e4f71749eade7a8b95c4e46', 'andi kuswandi', '1992-08-11', 'Pria', 'andi@gmail.com', '089787676565', 'Ciamis, Jawa Barat', 'Y', 'Sudah'),
(135, 'rini', 'b86872751de1e13c142d050acfd09842', 'rini sudini', '1997-08-09', 'Perempuan', 'rini@gmail.com', '09878765654', 'Bandung, jawa barat', 'Y', 'Sudah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_pengaturan_tes`
--
ALTER TABLE `tbl_pengaturan_tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `tbl_pengaturan_tes`
--
ALTER TABLE `tbl_pengaturan_tes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id_soal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
