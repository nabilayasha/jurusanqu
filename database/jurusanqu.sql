-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jun 2024 pada 09.14
-- Versi server: 8.0.30
-- Versi PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekolah` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `I` int DEFAULT NULL,
  `E` int DEFAULT NULL,
  `S` int DEFAULT NULL,
  `N` int DEFAULT NULL,
  `T` int DEFAULT NULL,
  `F` int DEFAULT NULL,
  `J` int DEFAULT NULL,
  `P` int DEFAULT NULL,
  `hasil` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `nama`, `sekolah`, `id_kelas`, `P`, `I`, `J`, `T`, `E`, `N`, `S`, `F`, `hasil`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'dsa', 1, 93, 100, 7, 100, 0, 100, 0, 0, 'INTP', 'Music,English', '2024-06-06 15:39:39', '2024-06-07 01:51:22'),
(2, 'budi', 'sma gang macan', 2, 93, 87, 7, 93, 13, 40, 60, 7, 'ISTP', 'Electrical Engineering', '2024-06-07 00:05:08', '2024-06-07 00:05:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`) VALUES
(1, '2 SMA'),
(2, '3 SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_19_091817_create_questions_table', 1),
(6, '2021_09_19_091924_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int NOT NULL,
  `pertanyaan` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jawaban_satu` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jawaban_dua` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipe_satu` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipe_dua` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`, `jawaban_satu`, `jawaban_dua`, `tipe_satu`, `tipe_dua`) VALUES
(1, NULL, 'Puas ketika mampu menjalankan semuanya sesuai rencana', 'Puas ketika mampu beradaptasi dengan momentum yang terjadi', 'J', 'P'),
(2, NULL, 'Daftar dan checklist adalah panduan penting', 'Daftar dan checklist adalah tugas dan beban', 'J', 'P'),
(3, NULL, 'Hidup harus sudah diatur dari awal', 'Hidup seharusnya mengalir sesuai kondisi', 'J', 'P'),
(4, NULL, 'Bertindak sesuai apa yang sudah direncanakan', 'Bertindak sesual situasi dan kondisi yang terjadi saat itu', 'J', 'P'),
(5, NULL, 'Perubahan adalah musuh', 'Perubahan adalah semangat hidup', 'J', 'P'),
(6, NULL, 'Situasi last minute sangat menyiksa membuat stress dan merupakan kesalahan', 'Situasi last minute membuat bersemangat dan memunculkan potensi', 'J', 'P'),
(7, NULL, 'Ketidakpastian membuat bingung dan meresahkan', 'Ketidakpastian itu seru, menegangkan dan membuat hati lebih senang', 'J', 'P'),
(8, NULL, 'Merasa tenang bila semua sudah diputuskan', 'Merasa nyaman bila situasi tetap terbuka terhadap pilihan-pilihan lain', 'J', 'P'),
(9, NULL, 'Berpegang teguh pada pendirian', 'Pendirian masih bisa berubah tergantung situasi nantinva', 'J', 'P'),
(10, NULL, 'Fokus pada target dan mengabaikan hal-hal baru', 'Memperhatikar hal-hal baru dan siap menyesuaikan diri serta mengubah target', 'J', 'P'),
(11, NULL, 'Mengatur orang lain dengan tata tertib agar tujuan tercapai', 'Membiarkan orang lain bertindak bebas asalkan tujuan tercapai', 'J', 'P'),
(12, NULL, 'Berorientasi pada hasil', 'Berorientasi pada proses', 'J', 'P'),
(13, NULL, 'Aturan, jadwal dan target akan sangat membantu dan memperielas tindakan', 'Aturan jadwal dan target sangat mengikat dan membebani', 'J', 'P'),
(14, NULL, 'Tidak menyukai hal-hal yang bersifat mendadak dan di luar perencanaan', 'Perubahan mendadak tidak jadi masalah', 'J', 'P'),
(15, NULL, 'Terencana dan memiliki deadline jelas', 'Spontan Fleksibel, tidak diikat waktu', 'J', 'P'),
(16, NULL, 'Mementingkan sebab-akibat', 'Mementingkan nilai-nilai personal', 'T', 'F'),
(17, NULL, 'Menuntut perlakuan yang adil dan sama pada semua orang', 'Menuntut perlakuan khusus sesuai karakteristik masing masing orang', 'T', 'F'),
(18, NULL, 'Standar harus ditegakkan di atas segalanya (itu menunjukkan kehormatan)', 'Perasaan manusia lebih penting dari sekadar standar (yang adalah benda)', 'T', 'F'),
(19, NULL, 'Bersemangat saat mengkritik dan menemukan kesalahan', 'Bersemangat saat menolong orang keluar dari kesalahan dan meluruskan', 'T', 'F'),
(20, NULL, 'Sering dianggap keras kepala', 'Sering dianggap terlalu memihak', 'T', 'F'),
(21, NULL, 'Sering Mempertanyakan sesuatu', 'Sering Mengakomodasi Sesuatu', 'T', 'F'),
(22, NULL, 'Yang penting tujuan tercapai', 'Yang penting situasi harmonis terjaga', 'T', 'F'),
(23, NULL, 'Melibatkan perasaan itu tidak profesional', 'Terialu kaku pada peraturan dan pekerjaan itu kejam', 'T', 'F'),
(24, NULL, 'Menganalisa', 'Berempati', 'T', 'F'),
(25, NULL, 'Mengambil keputusan berdasar logika dan aturan main', 'Mengambil keputusan berdasar perasaan pribadi dan kondisi orang lain', 'T', 'F'),
(26, NULL, 'Diyakinkan dengan penjelasan yang masuk akal', 'Diyakinkan dengan penjelasan yang menyentuh perasaan', 'T', 'F'),
(27, NULL, 'Mengemukakan tujuan dan sasaran lebih dahulu', 'Mengemukakan kesepakatan terlebih dahulu', 'T', 'F'),
(28, NULL, 'Menghargai seseorang karena skill dan faktor teknis', 'Menghargai seseorang karena sifat dan perilakunya', 'T', 'F'),
(29, NULL, 'Berorientasi tugas dan job description', 'Berorientasi pada manusia dan hubungan', 'T', 'F'),
(30, NULL, 'Obyektif', 'Subyektif', 'T', 'F'),
(31, NULL, 'Memiih cara yang sudah ada dan sudah terbuki', 'Memilih cara yang unik dan belum dipraktekkan orang lain', 'S', 'N'),
(32, NULL, 'Menggunakan Keterampilan yang sudah dikuasai', 'Menyukai tantangan untuk menguasai keterampilan baru', 'S', 'N'),
(33, NULL, 'Praktis', 'Konseptual', 'S', 'N'),
(34, NULL, 'Memberi kesempatan untuk berkomunikasi secara perorangan', 'Memilih berkomunikasi pada sekelempok orang', 'S', 'N'),
(35, NULL, 'Secara konsisten mengamati dan mengingat detail', 'Mengamati dan mengingat detail hanya bila berhubungan dengan pola', 'S', 'N'),
(36, NULL, 'Berfokus pada masa kini (apa yang bisa diperbaiki sekarang)', 'Berfokus pada masa depan (apa yang mungkin dicapai di masa depan)', 'S', 'N'),
(37, NULL, 'Menarik kesimpulan dengan lama dan hati-hati', 'Menarik kesimpulan dengan cepat sesuai naluri', 'S', 'N'),
(38, NULL, 'Bertindak step by step dengan timeframe yang jelas', 'Bertindak dengan semangat tanpa menggunakan timeframe', 'S', 'N'),
(39, NULL, 'Kontinuitas clan stabilitas lebih diutamakan', 'Perubahan dan variasi lebih diutamakan', 'S', 'N'),
(40, NULL, 'Memilih takta lebih penting daripada ide inspirasi', 'Memilih ide inspiratif lebih penting daripada fakta', 'S', 'N'),
(41, NULL, 'Prosecural dan tradisional', 'Bebas dan dinamis', 'S', 'N'),
(42, NULL, 'SOP sangat membantu', 'SOP sangat membosankan', 'S', 'N'),
(43, NULL, 'Menggunakan pengalaman sebagai pedoman', 'Menggunakan imajinasi dan perenungan sebagai pedoman', 'S', 'N'),
(44, NULL, 'Berbicara mengenai masalah yang dihadapi hari ini dan langkah langkah', 'Berbicara mengenai visi masa depen dan konsep-konsep mengenai visi', 'S', 'N'),
(45, NULL, 'Bergerak dan detail ke gambaran umum sebagai kesimpulan akhir', 'Bergerak dari gambaran umum baru ke detail', 'S', 'N'),
(46, NULL, 'Berhati hati Penuh pertimbangan, Kaku', 'Spontan, Easy Going fleksibel', 'I', 'E'),
(47, NULL, 'Membangun ide dengan matang baru berbicara', 'Membangun ide pada saat berbicara', 'I', 'E'),
(48, NULL, 'Lebih suka komunikasi tidak langsung (telp, Surat, e-mail)', 'Lebih suka komunikasi langsung (tatap muka)', 'I', 'E'),
(49, NULL, 'Memberi kesempatan untuk berkomunikasi secara perorangan', 'Memilih berkomunikasi pada sekelompok orang', 'I', 'E'),
(50, NULL, 'Menyimpan semangat dalam hati', 'Memilih berkomunikasi pada sekelompok orang', 'I', 'E'),
(51, NULL, 'Berpikir secara matang sebelum bertindak', 'Berani bertindak tanpa terlalu lama berfikir', 'I', 'E'),
(52, NULL, 'Lebih memilih tempat yang tenang dan pribadi untuk berkonsentrasi', 'Lebih memilih tempat yang ramai dan banyak interaksi aktifitas', 'I', 'E'),
(53, NULL, 'Berinisiatif bila situasi memaksa atau berhubungan dengan kepentingan sendiri', 'Berinisiatif tinggi hampir dalam berbagai hal meskipun tidak berhubungan dengan', 'I', 'E'),
(54, NULL, 'Beraktiftas sendirian di rumah menyenangkan', 'Beraktifitas sendirian di rumah membosankan', 'I', 'E'),
(55, NULL, 'Pertemuan dengan orang lain dan aktivitas sosial melelahkan', 'Bertemu orang dan aktivitas sosial membuat bersemangat', 'I', 'E'),
(56, NULL, 'Tertutup dan mandiri', 'Sosial dan Ekspresif', 'I', 'E'),
(57, NULL, 'Fokus pada sedikit hobi namun mendalam', 'Fokus pada banyak hobi secara luas dan umum', 'I', 'E'),
(58, NULL, 'Berorientasi pada dunia internal (memori, pemikiran ide)', 'Berorientasi pada dunia eksternal (kegiatan, orang)', 'I', 'E'),
(59, NULL, 'Menemukan dan mengembangkan ide dengan merenungkan', 'Menemukan dan mengembangkan ide dengan mendiskusikannya', 'I', 'E'),
(60, NULL, 'Lebih memilih berkomunikasi dengan menulis', 'Lebih memilih berkomunikasi dengan bicara', 'I', 'E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi_jurusan`
--

CREATE TABLE `rekomendasi_jurusan` (
  `id` int NOT NULL,
  `tipe` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `julukan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `rekomendasi_jurusan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekomendasi_jurusan`
--

INSERT INTO `rekomendasi_jurusan` (`id`, `tipe`, `julukan`, `deskripsi`, `rekomendasi_jurusan`, `img`) VALUES
(1, 'ISTJ', 'Si Tupai Yang Rajin', 'Karakter ISTJ digambarkan sebagai seekor tupai yang rajin berlalu-lalang mengumpulkan makanan, dan lebih suka hidup sesuai standar yang dibuatnya sendiri. ISTJ memiliki kekuatan dalam hal kepercayaan, serta cenderung menjaga privasi dan tidak suka tampil di depan umum. Dalam bekerja, ISTJ lebih suka melakukannya sendiri tanpa gangguan dan akan tetap sabar meskipun mengerjakan sesuatu yang tidak disukainya. Meskipun sering dianggap dingin, ISTJ adalah pribadi yang adil dan objektif, mempersiapkan segala sesuatu dengan baik dan suka merencanakan segala sesuatu sesuai rencana. Mereka lebih suka membantu dan memperhatikan orang lain, meskipun sulit mengungkapkan pujian dengan mudah. Karena takut membuat kesalahan, mereka berusaha melakukan segala sesuatu dengan sempurna, bahkan memperhatikan detail kecil dengan obsesif. ISTJ juga dikenal sangat teliti dan cermat, namun kesulitan bekerja dengan cara baru atau mencari solusi kreatif.', 'Cyber Security','cyber.jpg'),
(2, 'ISFJ', 'Si Cinderella yang Ramah', 'Bagaikan Cinderella yang optimis, rajin, ramah, dan berhati malaikat. ISFJ selalu bekerja dengan rapi dengan tidak menyia-nyiakan waktu. ISFJ adalah sosok yang dapat diandalkan dan layak dipercaya, namun memerlukan banyak pujian dan dorongan untuk terus berkembang. ISFJ merasa bahagia setelah membantu dan menjaga perasaan orang lain. ISFJ sulit menerima perubahan dan takut akan ketidakpastian dalam hidup. ISFJ teliti dan bekerja dengan cermat pada pekerjaan yang membutuhkan analisis dan ketepatan. ISFJ akan tetap menyelesaikan semua tugas yang ada, meski dalam kondisi hati yang buruk. ISFJ memiliki komitmen tinggi terhadap tanggung jawab dan dedikasi, tidak hanya mementingkan hasil akhir tetapi juga proses. Ketika menghadapi situasi yang menantang, ISFJ tetap tenang dan terorganisir, memastikan segala sesuatunya berjalan sesuai rencana tanpa ada yang terlewat. Kebaikan hatinya terlihat dalam setiap tindakan, menjadikannya seseorang yang dihormati dan dicintai oleh orang di sekitarnya.', 'Biologi', 'biologi.jpg'),
(3, 'ISFJ', 'Si Cinderella yang Ramah', 'Bagaikan Cinderella yang optimis, rajin, ramah, dan berhati malaikat. ISFJ selalu bekerja dengan rapi dengan tidak menyia-nyiakan waktu. ISFJ adalah sosok yang dapat diandalkan dan layak dipercaya, namun memerlukan banyak pujian dan dorongan untuk terus berkembang. ISFJ merasa bahagia setelah membantu dan menjaga perasaan orang lain. ISFJ sulit menerima perubahan dan takut akan ketidakpastian dalam hidup. ISFJ teliti dan bekerja dengan cermat pada pekerjaan yang membutuhkan analisis dan ketepatan. ISFJ akan tetap menyelesaikan semua tugas yang ada, meski dalam kondisi hati yang buruk. ISFJ memiliki komitmen tinggi terhadap tanggung jawab dan dedikasi, tidak hanya mementingkan hasil akhir tetapi juga proses. Ketika menghadapi situasi yang menantang, ISFJ tetap tenang dan terorganisir, memastikan segala sesuatunya berjalan sesuai rencana tanpa ada yang terlewat. Kebaikan hatinya terlihat dalam setiap tindakan, menjadikannya seseorang yang dihormati dan dicintai oleh orang di sekitarnya.’.', 'Pendidikan Musik', 'musik.jpg'),
(4, 'ISFJ', 'Si Cinderella yang Ramah', 'Bagaikan Cinderella yang optimis, rajin, ramah, dan berhati malaikat. ISFJ selalu bekerja dengan rapi dengan tidak menyia-nyiakan waktu. ISFJ adalah sosok yang dapat diandalkan dan layak dipercaya, namun memerlukan banyak pujian dan dorongan untuk terus berkembang. ISFJ merasa bahagia setelah membantu dan menjaga perasaan orang lain. ISFJ sulit menerima perubahan dan takut akan ketidakpastian dalam hidup. ISFJ teliti dan bekerja dengan cermat pada pekerjaan yang membutuhkan analisis dan ketepatan. ISFJ akan tetap menyelesaikan semua tugas yang ada, meski dalam kondisi hati yang buruk. ISFJ memiliki komitmen tinggi terhadap tanggung jawab dan dedikasi, tidak hanya mementingkan hasil akhir tetapi juga proses. Ketika menghadapi situasi yang menantang, ISFJ tetap tenang dan terorganisir, memastikan segala sesuatunya berjalan sesuai rencana tanpa ada yang terlewat. Kebaikan hatinya terlihat dalam setiap tindakan, menjadikannya seseorang yang dihormati dan dicintai oleh orang di sekitarnya.’.', 'Antropologi', 'antro.jpg'),
(5, 'ISTP', 'Si Misterius irit Bicara', 'Karakter ini memiliki kemampuan untuk mencari jalur paling cepat dalam segala pekerjaan. ISTP tidak akan menggunakan energi nya untuk hal yang tidak penting. Karakter ISTP tidak banyak bicara, lebih menunjukkan aksinya lewat tindakan. Mereka cepat menganalisis situasi dan tegas dalam bertindak. Dari luar, mereka tampak tenang, misterius, dan tidak suka berbicara panjang lebar, namun selalu berusaha memahami orang lain. ISTP menyukai kebebasan dan kesederhanaan, tidak berpura-pura, humoris, dan tidak takut menjadikan diri sendiri objek candaan ekstrem. ISTP sangat tidak suka terbelit aturan yang menghalangi keinginannya. Dalam perselisihan, ISTP memilih netral dan tidak berusaha memperbaiki hubungan yang menyulitkan. ISTP tidak suka orang yang sensitif dan banyak protes. Berpola pikir rasional dan memberikan nasihat jujur. Dalam krisis, ISTP menjadi tanggap dan kuat, mampu berpikir dingin dan mencari solusi cepat. Namun, ISTP cenderung tidak menyelesaikan pekerjaan yang dimulai, dan memilih jalan tercepat dalam segala pekerjaan tanpa membuang energi untuk hal tidak penting.', 'Teknik Elektro', 'elektro.jpg'),
(6, 'ISFP', 'Seandainya Kucing Adalah Manusia, Dialah ISFP', 'ISFP adalah karakter yang sederhana namun sensitif seperti kucing. Sulit untuk membuatnya melakukan sesuatu yang tidak diinginkannya. Ketika dipaksa, ISFP cenderung menarik diri, namun akan menunjukkan sifat manisnya jika menyukai seseorang atau sesuatu. Dari luar, ISFP tampak santai dan tanpa kekhawatiran, namun sebenarnya sensitif dan memiliki pandangan sendiri. Orang di sekitarnya menilai ISFP sebagai sosok ramah dan hangat. ISFP tidak suka membuat rencana dan sering kali lambat dalam bertindak. Mereka tahu apa yang ingin dilakukan, tetapi butuh waktu untuk mewujudkannya. ISFP tidak berlarut-larut dalam suasana hati buruk dan mencari hal menyenangkan untuk memperbaikinya. Mereka mudah merasa bahagia dengan hal-hal kecil dan tidak berambisi besar. ISFP membedakan dengan jelas orang yang disukai dan tidak disukai.  ISFP lebih suka mengekspresikan diri dengan tindakan daripada kata-kata dan merasa kesulitan dalam debat serius.', 'Biologi', 'biologi.jpg'),
(7, 'ISFP', 'Seandainya Kucing Adalah Manusia, Dialah ISFP', 'ISFP adalah karakter yang sederhana namun sensitif seperti kucing. Sulit untuk membuatnya melakukan sesuatu yang tidak diinginkannya. Ketika dipaksa, ISFP cenderung menarik diri, namun akan menunjukkan sifat manisnya jika menyukai seseorang atau sesuatu. Dari luar, ISFP tampak santai dan tanpa kekhawatiran, namun sebenarnya sensitif dan memiliki pandangan sendiri. Orang di sekitarnya menilai ISFP sebagai sosok ramah dan hangat. ISFP tidak suka membuat rencana dan sering kali lambat dalam bertindak. Mereka tahu apa yang ingin dilakukan, tetapi butuh waktu untuk mewujudkannya. ISFP tidak berlarut-larut dalam suasana hati buruk dan mencari hal menyenangkan untuk memperbaikinya. Mereka mudah merasa bahagia dengan hal-hal kecil dan tidak berambisi besar. ISFP membedakan dengan jelas orang yang disukai dan tidak disukai.  ISFP lebih suka mengekspresikan diri dengan tindakan daripada kata-kata dan merasa kesulitan dalam debat serius.', 'Ilmu Komputer', 'komp.jpg'),
(8, 'ISFP', 'Seandainya Kucing Adalah Manusia, Dialah ISFP', 'ISFP adalah karakter yang sederhana namun sensitif seperti kucing. Sulit untuk membuatnya melakukan sesuatu yang tidak diinginkannya. Ketika dipaksa, ISFP cenderung menarik diri, namun akan menunjukkan sifat manisnya jika menyukai seseorang atau sesuatu. Dari luar, ISFP tampak santai dan tanpa kekhawatiran, namun sebenarnya sensitif dan memiliki pandangan sendiri. Orang di sekitarnya menilai ISFP sebagai sosok ramah dan hangat. ISFP tidak suka membuat rencana dan sering kali lambat dalam bertindak. Mereka tahu apa yang ingin dilakukan, tetapi butuh waktu untuk mewujudkannya. ISFP tidak berlarut-larut dalam suasana hati buruk dan mencari hal menyenangkan untuk memperbaikinya. Mereka mudah merasa bahagia dengan hal-hal kecil dan tidak berambisi besar. ISFP membedakan dengan jelas orang yang disukai dan tidak disukai.  ISFP lebih suka mengekspresikan diri dengan tindakan daripada kata-kata dan merasa kesulitan dalam debat serius.', 'Kesehatan Masyarakat', 'kesmas.jpg'),
(9, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Cyber Security', 'cyber.jpg'),
(10, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Humaniora Medis', 'human.jpg'),
(11, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Biokimia', 'biokimia.jpg'),
(12, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Ilmu Komunikasi', 'ilkom.jpg'),
(13, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Psikologi', 'psikolog.jpg'),
(14, 'INFJ', 'Si Bunglon yang Misterius', 'Karakter INFJ bagaikan Bunglon yang dapat mengubah warna tubuhnya sesuai suhu atau intensitas cahaya di sekitarnya, Hal ini dikarenakan INFJ terlahir dengan kemampuan emosional alami. Seperti Bunglon yang mengubah warna tergantung lingkungan sekitarnya, INFJ juga mengubah warna dengan menyerah perasaan atau emosi orang lain. INFJ adalah karakter yang sangat berempati dan memiliki perhatian luar biasa meskipun sulit memahami dan mengekspresikan perasaannya sendiri. INFJ tidak akan menghindari interaksi dengan orang lain, namun juga tidak akan aktif mendekati orang lain. INFJ memiliki imajinasi yang kuat namun sering kesulitan dalam menghadapi realitas karena kurangnya keterampilan praktis. Meskipun berpikir dalam, INFJ tidak mengikuti arus umum dan memegang teguh prinsip sendiri. INFJ penuh rasa ingin tahu dan selalu ingin belajar. INFJ membenci persaingan dan pekerjaan rutin. Dalam situasi stres, INFJ dapat menjadi tidak stabil emosinya. INFJ lebih suka diskusi yang berfokus pada ide-ide daripada jawaban pasti, dan bekerja keras demi kepuasan diri mereka sendiri. Lebih suka pekerjaan yang memberi inspirasi daripada yang sistematis, dan cenderung menemukan solusi sesuai dengan cara mereka sendiri.', 'Teknik biomedik', 'biomed.jpg'),
(15, 'INTJ', 'Macan Tutul Kilimanjaro', 'INTJ dideskripsikan sebagai macan tutul yang tangguh dan gigih, terus berjalan di jalannya sendiri meskipun dihadapkan pada berbagai rintangan. INTJ mudah untuk mengakui kesalahan mereka sendiri. INTJ cenderung menciptakan dunia mereka sendiri tanpa terikat pada kerangka yang sudah ada. INTJ sangat menyukai perdebatan intelektual dan menghargai kemampuan orang lain untuk memahami inti permasalahan. Meskipun terkesan individualistis dan cenderung membosankan, INTJ memiliki kemampuan komunikasi yang baik dan mampu menyampaikan ide dengan jelas dan logis. INTJ merasa puas ketika bisa menjalankan segalanya sesuai rencana dan memiliki pemikiran terbuka dan keterbukaan untuk belajar dari pendapat orang lain. INTJ bekerja lebih efisien di lingkungan yang memberi ruang untuk berpikir kreatif dan tidak akan bertahan lama di lingkungan yang terlalu mengekang.', 'Teknik Elektro', 'elektro.jpg'),
(16, 'INTJ', 'Macan Tutul Kilimanjaro', 'INTJ dideskripsikan sebagai macan tutul yang tangguh dan gigih, terus berjalan di jalannya sendiri meskipun dihadapkan pada berbagai rintangan. INTJ mudah untuk mengakui kesalahan mereka sendiri. INTJ cenderung menciptakan dunia mereka sendiri tanpa terikat pada kerangka yang sudah ada. INTJ sangat menyukai perdebatan intelektual dan menghargai kemampuan orang lain untuk memahami inti permasalahan. Meskipun terkesan individualistis dan cenderung membosankan, INTJ memiliki kemampuan komunikasi yang baik dan mampu menyampaikan ide dengan jelas dan logis. INTJ merasa puas ketika bisa menjalankan segalanya sesuai rencana dan memiliki pemikiran terbuka dan keterbukaan untuk belajar dari pendapat orang lain. INTJ bekerja lebih efisien di lingkungan yang memberi ruang untuk berpikir kreatif dan tidak akan bertahan lama di lingkungan yang terlalu mengekang.', 'Bahasa Inggris', 'inggris.jpg'),
(17, 'INTJ', 'Macan Tutul Kilimanjaro', 'INTJ dideskripsikan sebagai macan tutul yang tangguh dan gigih, terus berjalan di jalannya sendiri meskipun dihadapkan pada berbagai rintangan. INTJ mudah untuk mengakui kesalahan mereka sendiri. INTJ cenderung menciptakan dunia mereka sendiri tanpa terikat pada kerangka yang sudah ada. INTJ sangat menyukai perdebatan intelektual dan menghargai kemampuan orang lain untuk memahami inti permasalahan. Meskipun terkesan individualistis dan cenderung membosankan, INTJ memiliki kemampuan komunikasi yang baik dan mampu menyampaikan ide dengan jelas dan logis. INTJ merasa puas ketika bisa menjalankan segalanya sesuai rencana dan memiliki pemikiran terbuka dan keterbukaan untuk belajar dari pendapat orang lain. INTJ bekerja lebih efisien di lingkungan yang memberi ruang untuk berpikir kreatif dan tidak akan bertahan lama di lingkungan yang terlalu mengekang.', 'Ilmu Komputer', 'komp.jpg'),
(18, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Bahasa Inggris', 'inggris.jpg'),
(19, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Antropologi', 'antro.jpg'),
(20, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Ilmu Komputer', 'komp.jpg'),
(21, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Cyber Security', 'cyber.jpg'),
(22, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Teknik Mesin', 'mesin.jpg'),
(23, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Teknik Elektro', 'elektro.jpg'),
(24, 'INFP', 'Si Paling Imajinatif', 'Individu dengan tipe INFP cenderung hidup dalam imajinasi dan dunia mimpi, tanpa membangun tembok dengan realitas. Meskipun terlihat tenang, INFP adalah idealis yang mencari makna. Sering kali pura-pura serius di hadapan orang lain, padahal tenggelam dalam pemikiran sendiri. INFP cenderung menunda atau berimprovisasi daripada merencanakan. Meskipun terlihat pendiam, otak INFP sibuk dengan pemikiran yang melimpah karena imajinasi yang luas. Meskipun memiliki keyakinan dan nilai yang kuat, sosok INFP hanya menceritakan hidupnya kepada orang yang mereka percaya. Mereka memiliki rasa ingin tahu yang tinggi, namun tidak terikat dengan cara menyelesaikannya. Perfeksionis namun rasa malas lebih tinggi, mereka akan menunjukkan ketegasan jika menemukan hal yang bermakna. Dalam situasi yang ekstrem, INFP bisa melakukan protes seorang diri demi mempertahankan keyakinan mereka.', 'Teknik Komputer', 'tekkom.jpg'),
(25, 'INTP', 'Si Manusia  Tak Kasatmata', 'INTP Adalah si jenius penyendiri, tenggelam dalam fantasi, dan memiliki aura nya sendiri, sehingga sering disebut si ilmuwan sinting yang tampaknya sungguh keren. Meskipun pikirannya rumit, INTP mampu menyampaikannya dengan sederhana dan jelas. Tidak selalu peka terhadap perasaan orang lain, INTP sering menyakiti perasaan orang lain karena kurang memikirkan kata-katanya dengan matang. INTP dikenal sebagai sosok yang selalu berkata apa adanya dan merasa lelah jika terlalu banyak interaksi sosial. Saat terlibat dengan hobi atau minatnya, INTP sangat fokus dan tidak peduli dengan hal lain. INTP bangga dengan keahliannya, dan siap berperang saat dikritik, baik dalam kemampuan berbahasa maupun analisis, dengan banyak ide dan pemahaman yang mendalam dari sudut pandang kritis. Hasil kerjanya lebih baik saat bekerja sendiri daripada dalam tim.', 'Pendidikan Musik', 'musik.jpg'),
(26, 'INTP', 'Si Manusia  Tak Kasatmata', 'INTP Adalah si jenius penyendiri, tenggelam dalam fantasi, dan memiliki aura nya sendiri, sehingga sering disebut si ilmuwan sinting yang tampaknya sungguh keren. Meskipun pikirannya rumit, INTP mampu menyampaikannya dengan sederhana dan jelas. Tidak selalu peka terhadap perasaan orang lain, INTP sering menyakiti perasaan orang lain karena kurang memikirkan kata-katanya dengan matang. INTP dikenal sebagai sosok yang selalu berkata apa adanya dan merasa lelah jika terlalu banyak interaksi sosial. Saat terlibat dengan hobi atau minatnya, INTP sangat fokus dan tidak peduli dengan hal lain. INTP bangga dengan keahliannya, dan siap berperang saat dikritik, baik dalam kemampuan berbahasa maupun analisis, dengan banyak ide dan pemahaman yang mendalam dari sudut pandang kritis. Hasil kerjanya lebih baik saat bekerja sendiri daripada dalam tim.', 'Bahasa Inggris', 'inggris.jpg'),
(27, 'ESTP', 'Hidup Bagaikan di Film Laga', 'Bagaikan pemeran utama dalam film laga, ESTP adalah tipe yang aktif beraksi, selalu berusaha untuk melakukan sesuatu dan mengerjakan nya dengan usaha keras. Karena itulah tak akan ada yang bisa menghentikan ESTP ketika ESTP bertekad untuk melakukan sesuatu. ESTP adalah individu yang sederhana, menyenangkan, dan gemar bercanda, menciptakan suasana ceria di sekitarnya. ESTP mudah akrab dengan orang lain, bahkan yang baru dikenalnya. Meskipun bisa marah, ESTP cepat melupakan kesalahan orang lain. Mendengarkan curahan hati orang lain sulit bagi ESTP karena melibatkan perasaan, namun mereka mampu berpura-pura peduli. ESTP tidak menyukai kehidupan yang terlalu terencana dan cenderung menunda-nunda. Meskipun demikian, ESTP memiliki kemampuan untuk menyelesaikan masalah dengan ketenangan dan kekuatan mental. ESTP memiliki daya ingat dan analisis yang baik, serta mampu melalui tantangan dengan kompetitif dan kuat.', 'Cyber Security', 'cyber.jpg'),
(28, 'ESTP', 'Hidup Bagaikan di Film Laga', 'Bagaikan pemeran utama dalam film laga, ESTP adalah tipe yang aktif beraksi, selalu berusaha untuk melakukan sesuatu dan mengerjakan nya dengan usaha keras. Karena itulah tak akan ada yang bisa menghentikan ESTP ketika ESTP bertekad untuk melakukan sesuatu. ESTP adalah individu yang sederhana, menyenangkan, dan gemar bercanda, menciptakan suasana ceria di sekitarnya. ESTP mudah akrab dengan orang lain, bahkan yang baru dikenalnya. Meskipun bisa marah, ESTP cepat melupakan kesalahan orang lain. Mendengarkan curahan hati orang lain sulit bagi ESTP karena melibatkan perasaan, namun mereka mampu berpura-pura peduli. ESTP tidak menyukai kehidupan yang terlalu terencana dan cenderung menunda-nunda. Meskipun demikian, ESTP memiliki kemampuan untuk menyelesaikan masalah dengan ketenangan dan kekuatan mental. ESTP memiliki daya ingat dan analisis yang baik, serta mampu melalui tantangan dengan kompetitif dan kuat.', 'Sistem Informasi', 'sisfor.jpg'),
(29, 'ESFP', 'Lumba lumba Periang', 'Lumba lumba mudah sekali mendekati bahkan bercanda dengan manusia, seperti halnya ESFP. Karakter ini paling memiliki energi positif dan ceria dibandingkan karakter lainnya dan penuh dengan energi optimis dari dalam dirinya. ESFP merupakan karakter yang paling perhatian, tidak ragu untuk memberikan segala yang dimilikinya kepada orang lain. Memiliki hubungan yang luas dan mampu berkenalan dengan banyak orang. Di mana pun berada, ESFP cenderung menjadi pemimpin, memiliki kemampuan memimpin yang baik. Meski membuat rencana besar, kadang rencana ESFP belum matang. Takut pada hal negatif seperti penyakit, perpisahan, dan kesepian, serta pemikiran yang tidak menyenangkan. ESFP tidak terlalu memperhitungkan urutan atau rencana, namun mampu menyelesaikan masalah dengan baik. Meskipun sering membuat kesalahan, ESFP tetap memiliki kemampuan menyelesaikan pekerjaan dengan lancar.', 'Psikologi', 'psikolog.jpg'),
(30, 'ESFP', 'Lumba lumba Periang', 'Lumba lumba mudah sekali mendekati bahkan bercanda dengan manusia, seperti halnya ESFP. Karakter ini paling memiliki energi positif dan ceria dibandingkan karakter lainnya dan penuh dengan energi optimis dari dalam dirinya. ESFP merupakan karakter yang paling perhatian, tidak ragu untuk memberikan segala yang dimilikinya kepada orang lain. Memiliki hubungan yang luas dan mampu berkenalan dengan banyak orang. Di mana pun berada, ESFP cenderung menjadi pemimpin, memiliki kemampuan memimpin yang baik. Meski membuat rencana besar, kadang rencana ESFP belum matang. Takut pada hal negatif seperti penyakit, perpisahan, dan kesepian, serta pemikiran yang tidak menyenangkan. ESFP tidak terlalu memperhitungkan urutan atau rencana, namun mampu menyelesaikan masalah dengan baik. Meskipun sering membuat kesalahan, ESFP tetap memiliki kemampuan menyelesaikan pekerjaan dengan lancar.', 'Humaniora Medis', 'human.jpg'),
(31, 'ESFP', 'Lumba lumba Periang', 'Lumba lumba mudah sekali mendekati bahkan bercanda dengan manusia, seperti halnya ESFP. Karakter ini paling memiliki energi positif dan ceria dibandingkan karakter lainnya dan penuh dengan energi optimis dari dalam dirinya. ESFP merupakan karakter yang paling perhatian, tidak ragu untuk memberikan segala yang dimilikinya kepada orang lain. Memiliki hubungan yang luas dan mampu berkenalan dengan banyak orang. Di mana pun berada, ESFP cenderung menjadi pemimpin, memiliki kemampuan memimpin yang baik. Meski membuat rencana besar, kadang rencana ESFP belum matang. Takut pada hal negatif seperti penyakit, perpisahan, dan kesepian, serta pemikiran yang tidak menyenangkan. ESFP tidak terlalu memperhitungkan urutan atau rencana, namun mampu menyelesaikan masalah dengan baik. Meskipun sering membuat kesalahan, ESFP tetap memiliki kemampuan menyelesaikan pekerjaan dengan lancar.', 'Ilmu Komputer', 'komp.jpg'),
(32, 'ESFP', 'Lumba lumba Periang', 'Lumba lumba mudah sekali mendekati bahkan bercanda dengan manusia, seperti halnya ESFP. Karakter ini paling memiliki energi positif dan ceria dibandingkan karakter lainnya dan penuh dengan energi optimis dari dalam dirinya. ESFP merupakan karakter yang paling perhatian, tidak ragu untuk memberikan segala yang dimilikinya kepada orang lain. Memiliki hubungan yang luas dan mampu berkenalan dengan banyak orang. Di mana pun berada, ESFP cenderung menjadi pemimpin, memiliki kemampuan memimpin yang baik. Meski membuat rencana besar, kadang rencana ESFP belum matang. Takut pada hal negatif seperti penyakit, perpisahan, dan kesepian, serta pemikiran yang tidak menyenangkan. ESFP tidak terlalu memperhitungkan urutan atau rencana, namun mampu menyelesaikan masalah dengan baik. Meskipun sering membuat kesalahan, ESFP tetap memiliki kemampuan menyelesaikan pekerjaan dengan lancar.', 'Pendidikan Musik', 'musik.jpg'),
(33, 'ESFP', 'Lumba lumba Periang', 'Lumba lumba mudah sekali mendekati bahkan bercanda dengan manusia, seperti halnya ESFP. Karakter ini paling memiliki energi positif dan ceria dibandingkan karakter lainnya dan penuh dengan energi optimis dari dalam dirinya. ESFP merupakan karakter yang paling perhatian, tidak ragu untuk memberikan segala yang dimilikinya kepada orang lain. Memiliki hubungan yang luas dan mampu berkenalan dengan banyak orang. Di mana pun berada, ESFP cenderung menjadi pemimpin, memiliki kemampuan memimpin yang baik. Meski membuat rencana besar, kadang rencana ESFP belum matang. Takut pada hal negatif seperti penyakit, perpisahan, dan kesepian, serta pemikiran yang tidak menyenangkan. ESFP tidak terlalu memperhitungkan urutan atau rencana, namun mampu menyelesaikan masalah dengan baik. Meskipun sering membuat kesalahan, ESFP tetap memiliki kemampuan menyelesaikan pekerjaan dengan lancar.', 'Biologi', 'biologi.jpg'),
(34, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Ilmu Politik', 'ilpol.jpg'),
(35, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Biokimia', 'biokimia.jpg'),
(36, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Ilmu Komputer', 'komp.jpg'),
(37, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Televisi dan Film', 'film.jpg'),
(38, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Biologi', 'biologi.jpg'),
(39, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Pendidikan Musik', 'musik.jpg'),
(40, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Hukum', 'hukum.jpg'),
(41, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya..', 'Teknik Lingkungan', 'tekling.jpg'),
(42, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Bahasa Inggris', 'inggris.jpg'),
(43, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Psikologi', 'psikolog.jpg'),
(44, 'ENFP', 'Si Unicorn yang Lucu', 'Unicorn yang merupakan karakter bagi anak anak adalah karakter lucu berwarna Warni bak pelangi. Layaknya ENFP yang bersinar dan memancarkan cahaya yang berkilauan, penuh semangat dan memperlihatkan minat di berbagai bidang. Meskipun terlihat sebagai pembawa suasana ceria, ENFP sebenarnya paling bahagia saat memiliki hubungan emosional yang dalam dengan orang lain. ENFP adalah individu unik, lembut, dan berintuisi tinggi dalam mencari makna hidup. Mudah dekat dengan orang baru, selalu membawa aura positif, namun jarang menunjukkan sisi gelap atau perasaan kepada orang lain. Tidak menyukai kepalsuan dalam pertemanan dan cenderung bertele-tele dalam berbicara. ENFP merasa berguna jika dapat memotivasi atau memberikan dukungan mental kepada orang lain. ENFP sulit menyelesaikan tugas yang bukan minatnya dan cenderung berpindah ke hal baru tanpa menyelesaikan yang sedang ditekuninya.', 'Teknik Komputer', 'tekkom.jpg'),
(45, 'ENTP', 'Si Monyet Multitalenta', 'Sifat ENTP mirip dengan sifat monyet yang multitalenta, optimis tanpa batas tetapi sebenarnya ENTP terus menganalisis sesuatu di sekitarnya. Terdapat banyak ide yang menggebu-gebu, sayangnya kebanyakan adalah ide yang tidak mungkin diwujudkan. Tidak tahan dengan kebosanan. Jika merasa bosan ENTP akan segera melompat ke “pohon” Yang lain. Meskipun terlihat ceria dan mahir dalam berbicara, sebenarnya ENTP adalah seorang analis yang kritis terhadap ide dan pemikiran yang tidak logis. ENTP bisa dengan cepat memahami maksud orang lain tetapi tidak terlalu terlibat secara langsung kecuali jika itu merugikan dirinya sendiri. Suka mempelajari subjek yang menarik minatnya dengan giat, namun enggan mempelajari hal yang tidak disukainya. Fleksibel dan serbaguna, ENTP dapat dengan mudah beradaptasi dengan tugas apa pun yang diberikan padanya. Meskipun akan bekerja keras dalam hal yang diminatinya, ENTP akan menghindari pekerjaan yang membosankan dan tidak menarik baginya.', 'Ilmu Aktuaria', 'aktuaria.jpg'),
(46, 'ENTP', 'Si Monyet Multitalenta', 'Sifat ENTP mirip dengan sifat monyet yang multitalenta, optimis tanpa batas tetapi sebenarnya ENTP terus menganalisis sesuatu di sekitarnya. Terdapat banyak ide yang menggebu-gebu, sayangnya kebanyakan adalah ide yang tidak mungkin diwujudkan. Tidak tahan dengan kebosanan. Jika merasa bosan ENTP akan segera melompat ke “pohon” Yang lain. Meskipun terlihat ceria dan mahir dalam berbicara, sebenarnya ENTP adalah seorang analis yang kritis terhadap ide dan pemikiran yang tidak logis. ENTP bisa dengan cepat memahami maksud orang lain tetapi tidak terlalu terlibat secara langsung kecuali jika itu merugikan dirinya sendiri. Suka mempelajari subjek yang menarik minatnya dengan giat, namun enggan mempelajari hal yang tidak disukainya. Fleksibel dan serbaguna, ENTP dapat dengan mudah beradaptasi dengan tugas apa pun yang diberikan padanya. Meskipun akan bekerja keras dalam hal yang diminatinya, ENTP akan menghindari pekerjaan yang membosankan dan tidak menarik baginya.', 'Ekonomi', 'ekonomi.jpg'),
(47, 'ENTP', 'Si Monyet Multitalenta', 'Sifat ENTP mirip dengan sifat monyet yang multitalenta, optimis tanpa batas tetapi sebenarnya ENTP terus menganalisis sesuatu di sekitarnya. Terdapat banyak ide yang menggebu-gebu, sayangnya kebanyakan adalah ide yang tidak mungkin diwujudkan. Tidak tahan dengan kebosanan. Jika merasa bosan ENTP akan segera melompat ke “pohon” Yang lain. Meskipun terlihat ceria dan mahir dalam berbicara, sebenarnya ENTP adalah seorang analis yang kritis terhadap ide dan pemikiran yang tidak logis. ENTP bisa dengan cepat memahami maksud orang lain tetapi tidak terlalu terlibat secara langsung kecuali jika itu merugikan dirinya sendiri. Suka mempelajari subjek yang menarik minatnya dengan giat, namun enggan mempelajari hal yang tidak disukainya. Fleksibel dan serbaguna, ENTP dapat dengan mudah beradaptasi dengan tugas apa pun yang diberikan padanya. Meskipun akan bekerja keras dalam hal yang diminatinya, ENTP akan menghindari pekerjaan yang membosankan dan tidak menarik baginya.', 'Teknik Elektro', 'elektro.jpg'),
(48, 'ENTP', 'Si Monyet Multitalenta', 'Sifat ENTP mirip dengan sifat monyet yang multitalenta, optimis tanpa batas tetapi sebenarnya ENTP terus menganalisis sesuatu di sekitarnya. Terdapat banyak ide yang menggebu-gebu, sayangnya kebanyakan adalah ide yang tidak mungkin diwujudkan. Tidak tahan dengan kebosanan. Jika merasa bosan ENTP akan segera melompat ke “pohon” Yang lain. Meskipun terlihat ceria dan mahir dalam berbicara, sebenarnya ENTP adalah seorang analis yang kritis terhadap ide dan pemikiran yang tidak logis. ENTP bisa dengan cepat memahami maksud orang lain tetapi tidak terlalu terlibat secara langsung kecuali jika itu merugikan dirinya sendiri. Suka mempelajari subjek yang menarik minatnya dengan giat, namun enggan mempelajari hal yang tidak disukainya. Fleksibel dan serbaguna, ENTP dapat dengan mudah beradaptasi dengan tugas apa pun yang diberikan padanya. Meskipun akan bekerja keras dalam hal yang diminatinya, ENTP akan menghindari pekerjaan yang membosankan dan tidak menarik baginya.', 'Aristektur', 'arsi.jpg'),
(49, 'ESTJ', 'Yang Selalu Menjadi Contoh dan Standar Pembanding', 'ESTJ adalah sosok yang berani untuk mengambil giliran pertama dalam presentasi. ESTJ adalah orang yang periang dan tegar, namun tidak terlalu memperhatikan perasaan orang lain, tempramental, paling konservatif, dan sangat keras kepala dalam mempertahankan prinsipnya. Karakter ini cenderung berkomunikasi secara langsung dan tegas, tidak suka berbelit-belit atau menyampaikan pesan secara tidak langsung. Mereka percaya bahwa kejujuran langsung akan lebih mudah dipahami oleh lawan bicaranya, sehingga tidak akan menghindari konfrontasi atau menyembunyikan maksud. Sebelum memulai suatu tugas, ESTJ cenderung merencanakan langkah-langkahnya dengan mempertimbangkan hasil akhir yang diinginkan. Rasanya lega saat tugasnya telah diselesaikan beberapa hari sebelum batas waktu. Mendapatkan pengakuan atas keterampilannya dapat membuatnya bahagia.. Meskipun begitu, ESTJ tidak begitu peduli dengan jenis kategorisasi psikologis seperti MBTI.', 'Hubungan Internasional', 'hi.jpg'),
(50, 'ESTJ', 'Yang Selalu Menjadi Contoh dan Standar Pembanding', 'ESTJ adalah sosok yang berani untuk mengambil giliran pertama dalam presentasi. ESTJ adalah orang yang periang dan tegar, namun tidak terlalu memperhatikan perasaan orang lain, tempramental, paling konservatif, dan sangat keras kepala dalam mempertahankan prinsipnya. Karakter ini cenderung berkomunikasi secara langsung dan tegas, tidak suka berbelit-belit atau menyampaikan pesan secara tidak langsung. Mereka percaya bahwa kejujuran langsung akan lebih mudah dipahami oleh lawan bicaranya, sehingga tidak akan menghindari konfrontasi atau menyembunyikan maksud. Sebelum memulai suatu tugas, ESTJ cenderung merencanakan langkah-langkahnya dengan mempertimbangkan hasil akhir yang diinginkan. Rasanya lega saat tugasnya telah diselesaikan beberapa hari sebelum batas waktu. Mendapatkan pengakuan atas keterampilannya dapat membuatnya bahagia.. Meskipun begitu, ESTJ tidak begitu peduli dengan jenis kategorisasi psikologis seperti MBTI.', 'Ilmu Politik', 'ilpol.jpg'),
(51, 'ESTJ', 'Yang Selalu Menjadi Contoh dan Standar Pembanding', 'ESTJ adalah sosok yang berani untuk mengambil giliran pertama dalam presentasi. ESTJ adalah orang yang periang dan tegar, namun tidak terlalu memperhatikan perasaan orang lain, tempramental, paling konservatif, dan sangat keras kepala dalam mempertahankan prinsipnya. Karakter ini cenderung berkomunikasi secara langsung dan tegas, tidak suka berbelit-belit atau menyampaikan pesan secara tidak langsung. Mereka percaya bahwa kejujuran langsung akan lebih mudah dipahami oleh lawan bicaranya, sehingga tidak akan menghindari konfrontasi atau menyembunyikan maksud. Sebelum memulai suatu tugas, ESTJ cenderung merencanakan langkah-langkahnya dengan mempertimbangkan hasil akhir yang diinginkan. Rasanya lega saat tugasnya telah diselesaikan beberapa hari sebelum batas waktu. Mendapatkan pengakuan atas keterampilannya dapat membuatnya bahagia.. Meskipun begitu, ESTJ tidak begitu peduli dengan jenis kategorisasi psikologis seperti MBTI.', 'Teknik Biomedik', 'biomed.jpg'),
(52, 'ESFJ', 'Hangat, Tapi Banyak Mengoceh', 'ESFJ merupakan individu yang sangat menghargai interaksi sosial dan merasa energi terisi saat berkomunikasi dengan orang lain. Mereka memiliki sensitivitas emosional yang tinggi dan selalu siap membantu. Kesetiaan dan ketaatan terhadap nilai-nilai moral, hukum, dan etika sosial dianggap sangat penting, ESFJ tidak ragu untuk mengakhiri hubungan dengan individu yang dianggap tidak bertanggung jawab. ESFJ ahli dalam merencanakan dan menjalankan rencana, tanpa pernah melampaui batas yang ditetapkan. Ketika sesuatu tidak sesuai dengan rencana, mereka merasa tidak nyaman dan cenderung gelisah. Penuh perhatian terhadap perasaan orang lain, ESFJ lebih suka berbicara dengan lembut daripada secara langsung menyinggung masalah. Kehadiran tugas mendadak atau tugas yang harus diselesaikan secara bebas dapat menyebabkan mereka stres, tetapi sebaliknya, mereka sangat terampil dalam menangani tugas yang sudah terstruktur sejak awal.', 'Teknik Biomedik', 'biomed.jpg'),
(53, 'ESFJ', 'Hangat, Tapi Banyak Mengoceh', 'ESFJ merupakan individu yang sangat menghargai interaksi sosial dan merasa energi terisi saat berkomunikasi dengan orang lain. Mereka memiliki sensitivitas emosional yang tinggi dan selalu siap membantu. Kesetiaan dan ketaatan terhadap nilai-nilai moral, hukum, dan etika sosial dianggap sangat penting, ESFJ tidak ragu untuk mengakhiri hubungan dengan individu yang dianggap tidak bertanggung jawab. ESFJ ahli dalam merencanakan dan menjalankan rencana, tanpa pernah melampaui batas yang ditetapkan. Ketika sesuatu tidak sesuai dengan rencana, mereka merasa tidak nyaman dan cenderung gelisah. Penuh perhatian terhadap perasaan orang lain, ESFJ lebih suka berbicara dengan lembut daripada secara langsung menyinggung masalah. Kehadiran tugas mendadak atau tugas yang harus diselesaikan secara bebas dapat menyebabkan mereka stres, tetapi sebaliknya, mereka sangat terampil dalam menangani tugas yang sudah terstruktur sejak awal.', 'Biologi', 'biologi.jpg'),
(54, 'ESFJ', 'Hangat, Tapi Banyak Mengoceh', 'ESFJ merupakan individu yang sangat menghargai interaksi sosial dan merasa energi terisi saat berkomunikasi dengan orang lain. Mereka memiliki sensitivitas emosional yang tinggi dan selalu siap membantu. Kesetiaan dan ketaatan terhadap nilai-nilai moral, hukum, dan etika sosial dianggap sangat penting, ESFJ tidak ragu untuk mengakhiri hubungan dengan individu yang dianggap tidak bertanggung jawab. ESFJ ahli dalam merencanakan dan menjalankan rencana, tanpa pernah melampaui batas yang ditetapkan. Ketika sesuatu tidak sesuai dengan rencana, mereka merasa tidak nyaman dan cenderung gelisah. Penuh perhatian terhadap perasaan orang lain, ESFJ lebih suka berbicara dengan lembut daripada secara langsung menyinggung masalah. Kehadiran tugas mendadak atau tugas yang harus diselesaikan secara bebas dapat menyebabkan mereka stres, tetapi sebaliknya, mereka sangat terampil dalam menangani tugas yang sudah terstruktur sejak awal.', 'Kesehatan', 'kesehatan.jpg'),
(55, 'ESFJ', 'Hangat, Tapi Banyak Mengoceh', 'ESFJ merupakan individu yang sangat menghargai interaksi sosial dan merasa energi terisi saat berkomunikasi dengan orang lain. Mereka memiliki sensitivitas emosional yang tinggi dan selalu siap membantu. Kesetiaan dan ketaatan terhadap nilai-nilai moral, hukum, dan etika sosial dianggap sangat penting, ESFJ tidak ragu untuk mengakhiri hubungan dengan individu yang dianggap tidak bertanggung jawab. ESFJ ahli dalam merencanakan dan menjalankan rencana, tanpa pernah melampaui batas yang ditetapkan. Ketika sesuatu tidak sesuai dengan rencana, mereka merasa tidak nyaman dan cenderung gelisah. Penuh perhatian terhadap perasaan orang lain, ESFJ lebih suka berbicara dengan lembut daripada secara langsung menyinggung masalah. Kehadiran tugas mendadak atau tugas yang harus diselesaikan secara bebas dapat menyebabkan mereka stres, tetapi sebaliknya, mereka sangat terampil dalam menangani tugas yang sudah terstruktur sejak awal.', 'Biokimia', 'biokimia.jpg'),
(56, 'ENFJ', 'Si Motivator dengan Pribadi yang Lembut', 'ENFJ adalah sosok yang lembut dan ekstrover, sering berperan sebagai motivator atau mentor bagi orang lain. Kemampuannya dalam merawat yang lebih lemah dan memperhatikan perasaan orang lain sangat kuat, namun ENFJ sulit dalam menganalisis pekerjaan secara tegas. ENFJ cenderung berbicara dengan tatapan mata yang intens dan memiliki kemampuan komunikasi yang baik. Meskipun pandai dalam merencanakan dan mengatur jadwal, ENFJ lebih tertarik dengan proses mencapai impian daripada menyelesaikan rencana secara berurutan. ENFJ tidak terpengaruh oleh pandangan orang lain saat melakukan hal yang disukainya dan sulit dalam membuat keputusan tegas. Lebih peka terhadap kritik dan cenderung merasa terluka. Meskipun mampu memperhitungkan segala kemungkinan dalam pekerjaan, ENFJ cepat merasa bosan/melakukan kesalahan saat bekerja dengan detail dan praktis. Lebih suka bekerja dalam tim daripada sendirian.', 'Biologi', 'biologi.jpg'),
(57, 'ENFJ', 'Si Motivator dengan Pribadi yang Lembut', 'ENFJ adalah sosok yang lembut dan ekstrover, sering berperan sebagai motivator atau mentor bagi orang lain. Kemampuannya dalam merawat yang lebih lemah dan memperhatikan perasaan orang lain sangat kuat, namun ENFJ sulit dalam menganalisis pekerjaan secara tegas. ENFJ cenderung berbicara dengan tatapan mata yang intens dan memiliki kemampuan komunikasi yang baik. Meskipun pandai dalam merencanakan dan mengatur jadwal, ENFJ lebih tertarik dengan proses mencapai impian daripada menyelesaikan rencana secara berurutan. ENFJ tidak terpengaruh oleh pandangan orang lain saat melakukan hal yang disukainya dan sulit dalam membuat keputusan tegas. Lebih peka terhadap kritik dan cenderung merasa terluka. Meskipun mampu memperhitungkan segala kemungkinan dalam pekerjaan, ENFJ cepat merasa bosan/melakukan kesalahan saat bekerja dengan detail dan praktis. Lebih suka bekerja dalam tim daripada sendirian.', 'Psikologi', 'psikolog.jpg'),
(58, 'ENFJ', 'Si Motivator dengan Pribadi yang Lembut', 'ENFJ adalah sosok yang lembut dan ekstrover, sering berperan sebagai motivator atau mentor bagi orang lain. Kemampuannya dalam merawat yang lebih lemah dan memperhatikan perasaan orang lain sangat kuat, namun ENFJ sulit dalam menganalisis pekerjaan secara tegas. ENFJ cenderung berbicara dengan tatapan mata yang intens dan memiliki kemampuan komunikasi yang baik. Meskipun pandai dalam merencanakan dan mengatur jadwal, ENFJ lebih tertarik dengan proses mencapai impian daripada menyelesaikan rencana secara berurutan. ENFJ tidak terpengaruh oleh pandangan orang lain saat melakukan hal yang disukainya dan sulit dalam membuat keputusan tegas. Lebih peka terhadap kritik dan cenderung merasa terluka. Meskipun mampu memperhitungkan segala kemungkinan dalam pekerjaan, ENFJ cepat merasa bosan/melakukan kesalahan saat bekerja dengan detail dan praktis. Lebih suka bekerja dalam tim daripada sendirian.', 'Humaniora Medis', 'human.jpg'),
(59, 'ENFJ', 'Si Motivator dengan Pribadi yang Lembut', 'ENFJ adalah sosok yang lembut dan ekstrover, sering berperan sebagai motivator atau mentor bagi orang lain. Kemampuannya dalam merawat yang lebih lemah dan memperhatikan perasaan orang lain sangat kuat, namun ENFJ sulit dalam menganalisis pekerjaan secara tegas. ENFJ cenderung berbicara dengan tatapan mata yang intens dan memiliki kemampuan komunikasi yang baik. Meskipun pandai dalam merencanakan dan mengatur jadwal, ENFJ lebih tertarik dengan proses mencapai impian daripada menyelesaikan rencana secara berurutan. ENFJ tidak terpengaruh oleh pandangan orang lain saat melakukan hal yang disukainya dan sulit dalam membuat keputusan tegas. Lebih peka terhadap kritik dan cenderung merasa terluka. Meskipun mampu memperhitungkan segala kemungkinan dalam pekerjaan, ENFJ cepat merasa bosan/melakukan kesalahan saat bekerja dengan detail dan praktis. Lebih suka bekerja dalam tim daripada sendirian.', 'Bahasa Inggris', 'inggris.jpg'),
(60, 'ENFJ', 'Si Motivator dengan Pribadi yang Lembut', 'ENFJ adalah sosok yang lembut dan ekstrover, sering berperan sebagai motivator atau mentor bagi orang lain. Kemampuannya dalam merawat yang lebih lemah dan memperhatikan perasaan orang lain sangat kuat, namun ENFJ sulit dalam menganalisis pekerjaan secara tegas. ENFJ cenderung berbicara dengan tatapan mata yang intens dan memiliki kemampuan komunikasi yang baik. Meskipun pandai dalam merencanakan dan mengatur jadwal, ENFJ lebih tertarik dengan proses mencapai impian daripada menyelesaikan rencana secara berurutan. ENFJ tidak terpengaruh oleh pandangan orang lain saat melakukan hal yang disukainya dan sulit dalam membuat keputusan tegas. Lebih peka terhadap kritik dan cenderung merasa terluka. Meskipun mampu memperhitungkan segala kemungkinan dalam pekerjaan, ENFJ cepat merasa bosan/melakukan kesalahan saat bekerja dengan detail dan praktis. Lebih suka bekerja dalam tim daripada sendirian.', 'Pendidikan Musik', 'musik.jpg'),
(61, 'ENTJ', 'Master Catur yang Selalu Menang', 'ENTJ, sang ahli strategi yang berani, mampu merencanakan langkah-langkahnya dengan cermat dan menanggapi perubahan dengan cepat. Seperti seorang pemain catur ulung, ENTJ menggunakan strategi untuk mengatur pion-pionnya dengan penuh perhitungan. Meskipun terlihat sebagai individu yang menantang dan kompetitif, ENTJ memiliki wawasan yang luas terhadap dunia. Menikmati mengatur dan mengelola proses secara sistematis, ENTJ cenderung individualistis dan tidak suka terganggu oleh interaksi sosial. Dengan sikap yang bebas dan menyenangkan, ENTJ memiliki kemampuan bahasa yang luar biasa dan selalu menepati janjinya. Meskipun suka menjaga jarak, ENTJ memberikan perhatian secara sadar kepada mereka yang dekat dengannya. ENTJ dapat mengidentifikasi kontradiksi dan kelemahan orang lain dengan baik, menetapkan tujuan dengan detail, dan menganalisis karya atau gaya yang disukainya secara mendalam. Meskipun memiliki harga diri yang kuat, ENTJ menerima kritik dengan baik. Entah menyukai atau tidak, ENTJ akan melakukan pekerjaan yang perlu dilakukan.', 'Sistem Informasi', 'sisfor.jpg'),
(62, 'ENTJ', 'Master Catur yang Selalu Menang', 'ENTJ, sang ahli strategi yang berani, mampu merencanakan langkah-langkahnya dengan cermat dan menanggapi perubahan dengan cepat. Seperti seorang pemain catur ulung, ENTJ menggunakan strategi untuk mengatur pion-pionnya dengan penuh perhitungan. Meskipun terlihat sebagai individu yang menantang dan kompetitif, ENTJ memiliki wawasan yang luas terhadap dunia. Menikmati mengatur dan mengelola proses secara sistematis, ENTJ cenderung individualistis dan tidak suka terganggu oleh interaksi sosial. Dengan sikap yang bebas dan menyenangkan, ENTJ memiliki kemampuan bahasa yang luar biasa dan selalu menepati janjinya. Meskipun suka menjaga jarak, ENTJ memberikan perhatian secara sadar kepada mereka yang dekat dengannya. ENTJ dapat mengidentifikasi kontradiksi dan kelemahan orang lain dengan baik, menetapkan tujuan dengan detail, dan menganalisis karya atau gaya yang disukainya secara mendalam. Meskipun memiliki harga diri yang kuat, ENTJ menerima kritik dengan baik. Entah menyukai atau tidak, ENTJ akan melakukan pekerjaan yang perlu dilakukan.', 'Pendidikan Bahasa', 'bahasa.jpg'),
(63, 'ENTJ', 'Master Catur yang Selalu Menang', 'ENTJ, sang ahli strategi yang berani, mampu merencanakan langkah-langkahnya dengan cermat dan menanggapi perubahan dengan cepat. Seperti seorang pemain catur ulung, ENTJ menggunakan strategi untuk mengatur pion-pionnya dengan penuh perhitungan. Meskipun terlihat sebagai individu yang menantang dan kompetitif, ENTJ memiliki wawasan yang luas terhadap dunia. Menikmati mengatur dan mengelola proses secara sistematis, ENTJ cenderung individualistis dan tidak suka terganggu oleh interaksi sosial. Dengan sikap yang bebas dan menyenangkan, ENTJ memiliki kemampuan bahasa yang luar biasa dan selalu menepati janjinya. Meskipun suka menjaga jarak, ENTJ memberikan perhatian secara sadar kepada mereka yang dekat dengannya. ENTJ dapat mengidentifikasi kontradiksi dan kelemahan orang lain dengan baik, menetapkan tujuan dengan detail, dan menganalisis karya atau gaya yang disukainya secara mendalam. Meskipun memiliki harga diri yang kuat, ENTJ menerima kritik dengan baik. Entah menyukai atau tidak, ENTJ akan melakukan pekerjaan yang perlu dilakukan.', 'Kinesiologi', 'kine.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2024-06-06 15:18:01', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekomendasi_jurusan`
--
ALTER TABLE `rekomendasi_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT untuk tabel `rekomendasi_jurusan`
--
ALTER TABLE `rekomendasi_jurusan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
