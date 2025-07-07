-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2025 pada 11.06
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antique_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `description`
--

INSERT INTO `description` (`id`, `item_id`, `content`) VALUES
(1, 22, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `period_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `name`, `origin_id`, `period_id`, `description`, `created_at`) VALUES
(10, 'Gua Leang', 6, 6, 'Siapa sangka, ternyata lukisan gua tertua di dunia berada di Indonesia? Tepatnya, di gua Leang Tedongnge di kawasan karst Maros-Pangkep, Sulawesi Selatan. Diyakini, lukisan ini dibuat 45.500 tahun yang lalu.\r\n\r\nMenurut para arkeolog, babi kutil Sulawesi (Sus celebensis) dilukis dengan pigmen oker merah tua. Oker sendiri adalah pewarna merah alami yang berasal dari tanah liat.\r\n\r\nLukisan berukuran 136 x 54 cm ini menggambarkan seekor babi dengan kutil di wajah yang mirip tanduk. Ini adalah ciri khas babi dewasa berjenis kelamin jantan. Terdapat dua cetakan tangan di atas punggung babi.\r\n\r\n\"Orang-orang yang membuatnya sepenuhnya modern. Mereka sama seperti kita. Mereka memiliki semua kapasitas dan alat untuk melukis apa pun yang mereka suka,\" ungkap Maxime Aubert, salah satu penulis laporan yang dipublikasikan dalam jurnal Science Advances.\r\n\r\nBagaimana cara peneliti mengetahui usia lukisan tersebut? Maxime mengidentifikasi deposit kalsit yang terbentuk di atas lukisan itu. Lalu, memakai penanggalan isotop seri Uranium untuk menentukan usia deposit tersebut, dikutip BBC.', '2025-06-30 13:02:36'),
(11, 'Mona Lisa – Leonardo da Vinci', 7, 7, 'Pelukis\r\nLeonardo da Vinci\r\n\r\nSeorang seniman, ilmuwan, dan insinyur dari Italia, tokoh penting dalam era Renaissance.\r\nLukisan ini dianggap sebagai salah satu karya terbaiknya.\r\n\r\nMona Lisa adalah lukisan potret karya Leonardo da Vinci yang dibuat sekitar tahun 1503–1506. Lukisan ini menggambarkan seorang wanita dengan ekspresi wajah tenang dan senyuman misterius, yang dipercaya sebagai Lisa Gherardini, istri pedagang kaya dari Florence.\r\n\r\nKarya ini terkenal karena teknik sfumato yang halus (gradasi tanpa garis tegas), tatapan mata yang seolah mengikuti pengamat, dan senyum yang tampak berubah-ubah tergantung sudut pandang. Saat ini, Mona Lisa disimpan di Musée du Louvre, Paris, dan dianggap sebagai lukisan paling terkenal di dunia.', '2025-06-30 13:11:05'),
(12, 'The Starry Night – Vincent van Gogh', 8, 8, 'The Starry Night adalah lukisan karya Vincent van Gogh yang dibuat pada tahun 1889 saat ia dirawat di rumah sakit jiwa di Saint-Rémy-de-Provence, Prancis. Lukisan ini menggambarkan langit malam yang berputar dan bercahaya di atas desa tenang, dengan gaya ekspresif dan warna kontras yang kuat. Karya ini mencerminkan emosi dan imajinasi Van Gogh, serta menjadi salah satu lukisan paling terkenal di dunia. Kini dipajang di Museum of Modern Art (MoMA), New York.', '2025-06-30 13:12:56'),
(22, 'Perkelahian dengan Singa', 15, 15, 'Tempat pembuatan: Jerman, saat Raden Saleh tinggal di Eropa\r\nLokasi saat ini: Istana Kepresidenan Jakarta, Indonesia\r\n\r\nRaden Saleh adalah pelukis pribumi pertama dari Hindia Belanda (Indonesia) yang mendapat pendidikan seni di Eropa. Ia belajar di Belanda dan Jerman, dan menjadi pelukis istana bagi raja-raja Eropa. Ia menggabungkan teknik Barat dengan jiwa Nusantara.\r\n\r\nLukisan ini menggambarkan adegan dramatis, yaitu sekelompok pria sedang bertarung melawan seekor singa. Adegan berlangsung di alam liar. Berikut unsur-unsur penting:\r\nSinga tampak sedang menyerang seorang pria, dengan taring menganga, tubuh berotot, dan kuku tajam.\r\nPara pemburu bersenjata tombak, berusaha menyelamatkan rekan mereka.\r\nEkspresi wajah manusia penuh ketakutan dan keberanian.\r\nGerak tubuh manusia dan hewan sangat dinamis – menunjukkan momen dalam puncak ketegangan.\r\nLatar belakang berupa alam liar – pepohonan, langit yang gelap, dan tanah yang berbatu.\r\nWarna yang dominan: merah darah, cokelat tanah, dan bayangan gelap – menambah suasana menegangkan.\r\n\r\n“Perkelahian dengan Singa” bukan hanya karya seni penuh keindahan dan teknik tinggi, tetapi juga pernyataan simbolis tentang perjuangan dan keberanian rakyat Indonesia. Melalui lukisan ini, Raden Saleh berhasil menyampaikan pesan perlawanan dan nasionalisme secara halus namun kuat, bahkan di hadapan kekuasaan kolonial.', '2025-07-05 11:27:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `origins`
--

CREATE TABLE `origins` (
  `id` int(11) NOT NULL,
  `origin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `origins`
--

INSERT INTO `origins` (`id`, `origin_name`) VALUES
(1, 'Indonesia'),
(5, 'Italia'),
(15, 'Jerman, Eropa'),
(7, 'Musée du Louvre, Paris, Prancis'),
(8, 'Museum of Modern Art (MoMA), New York, AS'),
(6, 'Tedongnge, Sulawesi Selatan, Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periods`
--

CREATE TABLE `periods` (
  `id` int(11) NOT NULL,
  `period_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periods`
--

INSERT INTO `periods` (`id`, `period_name`) VALUES
(7, '1503-1506'),
(15, '1842'),
(8, '1889'),
(4, '1900-1950'),
(9, '1931'),
(11, '2n'),
(1, 'Abad ke-17'),
(2, 'Abad ke-18'),
(3, 'Abad ke-19'),
(6, 'Abad ke-46'),
(13, 'c nscdsnsd .bk'),
(5, 'Masa Dinasti Ming'),
(12, 's'),
(14, 'sdbjbwvjb n xmz mdvmsdj;kb.vcii;gwebjbme jb  bj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `fullname`) VALUES
(1, NULL, 'admin', '$2y$10$Q7CuNroiLNw6wPtAItOuHuxDmm.Ecxq4qFz0noxr3jSAWxR0wH9dy', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_origin` (`origin_id`),
  ADD KEY `fk_period` (`period_id`);

--
-- Indeks untuk tabel `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `origin_name` (`origin_name`);

--
-- Indeks untuk tabel `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `period_name` (`period_name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `origins`
--
ALTER TABLE `origins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fk_origin` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_period` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
