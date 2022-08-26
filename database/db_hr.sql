-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 08:11 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `alamat_lengkap` varchar(50) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `tgl_lahir` varchar(30) DEFAULT NULL,
  `bakery` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `nama_lengkap`, `alamat_lengkap`, `nohp`, `tgl_lahir`, `bakery`) VALUES
(2, 'Messa ', 'Jln Palasari no 5 rt 4 rw 6 sukakarya ', '08987772428', 'Garut, 3 September 1992 ', 'Sudirman'),
(3, 'Mawar Salwah', 'bogor kampung tipar ciawi 3', '085759444460', 'bogor, 18 oktober 1996', 'Sudirman'),
(4, 'Nina Marlina', 'Gunung Jaya rt 03 rw 01 cisaat', '085770971041', 'Sukabumi, 04 Juni 1976', 'Sudirman'),
(5, 'Kirey', 'Jl Sukabumi Cianjur , kp kedung desa titisan Rt 25', '081285950546', 'Sukabumi, 29 November 2006 ', 'Sudirman'),
(6, 'Siti Fatimah', 'Jalan Babakan Limbangan, No 145, Kecamatan Sukaraj', '085722860731', 'Sukabumi, 15 Mei 1997', 'Sudirman'),
(7, 'Yanti Suryanti ', 'Jln kolaberes salaeurih rt 4 rw 7 kec dayeuluhur k', '08165457693', 'Sukabumi, 13 maret 1990', 'Sudirman'),
(8, 'Lina Kusmiatun', 'Jl.Veteran gang ahmad juwaeni 1', '0895340997959', 'Kulon Progo, 16 Januari 1977', 'Sudirman'),
(9, 'Diana putri ', 'Perum kandara blok c 1 no 3 ', '085860207975', 'Sukabumi , 5 April 1996 ', 'Sudirman'),
(10, 'Teli aprilianti ', 'Perum bumi ci kembang asri ', '085899457027', 'Cianjur,25 April 1998', 'Sudirman'),
(11, 'Asri ', 'Kp padasuka rt 3 rw 06 kel kertaraharja kec cikemb', '085872726658', 'Sukabumi, 2 Desember 1999', 'Sudirman'),
(12, 'Linda ', 'Perum bumiraharja cikundul blok E6 No 03 kel ', '081563151668', 'Sukabumi, 24 Oktober 1989 ', 'Sudirman'),
(13, 'Ibu Yani', 'Kp.Babakan soka', '082320056100', 'Cianjur 12/01/90', 'Sudirman'),
(14, 'Bu Haji Yeyet', 'Royal Kabandungan blok d ', '081806679997', 'Banten, 18 Mei 1965', 'Sudirman'),
(15, 'Laisya Dinda Karina', 'Royal Kabandungan blok d', '081324992824', 'Banten, 14 September 1994', 'Sudirman'),
(16, 'Nabilla Vynka Fakhira', 'Pesona cibereum blok e no.3', '085838026566', 'Sukabumi 14 agustus 1999', 'Sudirman'),
(17, 'Indah Fajarwaty', 'Sidorejo pagar alam selatan', '082133844505', 'Palembang, 23 Desember 1990', 'Sudirman'),
(18, 'Yulianti Jaelani', 'J.Plabuhan 2 Cikujang', '081224165413', '19 Agustus 1985', 'Sudirman'),
(19, 'Nurul Fauziah', 'JL.Cemerlang', '081311217713', '24 Mei 1998', 'Sudirman'),
(20, 'Dudu Abdurahman', 'Jalan Pembangunan kampung selakaso', '087833378603', 'Sukabumk, 19 Januari 1981', 'Sudirman'),
(21, 'Dudu Abdurahman', 'Jalan Pembangunan kampung selakaso', '087833378603', 'Sukabumk, 19 Januari 1981', 'Sudirman'),
(22, 'Tia Septiani', 'Cibaregeg sagaranten', '085871191924', 'Sukabumi, 24 September 2001', 'Sudirman'),
(23, 'Hermawan Partadiredja', 'kp jaha bekasi', '081387011007', 'Sukabumi, 17 September 1967', 'Sudirman'),
(24, 'Eha Julaeha ', 'Jln Bhayangkara gg dewa rt 02 rw 12 kel . Gunung p', '0858-9218-0124', 'Sukabumi , 30 Juli 1982', 'Sudirman'),
(25, 'Nunuk wiharti', 'BTN Sekarwangi cibadak', '085659553958', 'Boyolali, 25 Mei 1965', 'Sudirman'),
(26, 'Silviani Hakim Nazili', 'Jalan kabandungan 05/06', '085795065825', 'Sukabumi, 16 Juli 2000', 'Sudirman'),
(27, 'Lutvia Nurul Mulki', 'Jalan kabandungan 05/06', '+62 896-5237-74', 'Sukabumk, 14 September 2003', 'Sudirman'),
(28, 'Dini Andriyani', 'Jalan warudoyong contong', '085880295840', 'Cimahi, 14 Agustus 1990', 'Sudirman'),
(29, 'Ai Dede Rusmana', 'Cijalingan rt 10 rw 03', '087873721922', 'Sukabumi, 10 Juni 1992', 'Sudirman'),
(30, 'Irfam setiawan ', 'Jl benteng babakan ', '087877202087', '19 oktober 1995', 'Sudirman'),
(31, 'Rosita ', 'Kampung gunung jaya 10/02', '083817537423', 'Sukabumi, 24 september 1990', 'Sudirman'),
(32, 'Della Wulandari', 'gunung karang residen blom c 4', '085720051804', 'Bekasi 04 Juli 1989', 'Sudirman'),
(33, 'Arika edy ', 'Jl taman vila edelwis sukarja ', '085227881424', '19 januari 1987', 'Sudirman'),
(34, 'Meti Rahmawati', 'Jalan Ciraden no 199 03/08', '081284414243', 'Sukabumi, 10 Desember 1964', 'Sudirman'),
(35, 'Irma', 'Gentong cisaat', '085603002606', 'Sukabumi 20 nov 1983', 'Sudirman'),
(36, 'Sinta', 'Kp selaawi jl. Kh sujai rt 14 rw 4', '085871611286', 'Cianjur 21 juni 1998', 'Sudirman'),
(37, 'Dian', 'Kp selaawi jl kh sujai rt 14 rw 4 desa warnasari ', '085892864273', 'Sukabumi 14 september 2004', 'Sudirman'),
(38, 'Sri wahyuni', 'Tipar', '085720364756', 'Sukabumi 18 juni 2002', 'Sudirman'),
(39, 'Ayu ', 'Cijalingan ', '085156009453', 'Jakarta 7 februaru 2022', 'Sudirman'),
(40, 'Desi', 'Pasar minggu  jakarta selatan', '089699645677', 'Jakarta 14 agustus 1992', 'Sudirman'),
(41, 'Citra', 'Kp batu nunggal', '085720836005', 'Sukabumi 20 mei 1999', 'Sudirman'),
(42, 'Enung lisnawati', 'Kp dangdeur', '085703870768', 'Sukabumi 13 april 2001', 'Sudirman'),
(43, 'Putri', 'Perum gunung jaya permai jl melati no 5 cisaat', '085722888878', 'Sukabumi 18 10 1992', 'Sudirman'),
(44, 'Neti indriani ', 'Genteng rt 01 rw 01', '082120096481', 'Sukabumi,20-06-1983', 'Sudirman'),
(45, 'Erna wati', 'Babakan pendey 115', '085721711966', 'Sukabumi,8 juni 1976', 'Sudirman'),
(46, 'Ria fitria ', 'Lebur pasir rt 03/5 kel sidangsari kec lenbursitu ', '085864964813', '3 meret 1995', 'Sudirman'),
(47, 'Ahmad sofyan ', 'Jl aminta azmali ', '085861474745', '13 maret 1976', 'Sudirman'),
(48, 'Putri lestari ', 'Jl tipar gk tresna rt01/03 ', '085862513901', '26 juli 1992', 'Sudirman'),
(49, 'Mujiawati', 'Kp nagrak benteng', '081573450531', 'Sukabumi 9 januari 1998', 'Sudirman'),
(50, 'Lisnawati', 'Desa Cibatu ', '085287300671', 'Sukabumi 9 agustus ', 'Sudirman'),
(51, 'Gina', 'Cibolang', '081380150350', '29 september 1998', 'Sudirman'),
(52, 'Neng Santi DY', 'kampung cijambu jalan cikiray 03/02', '085846719100', 'Sukabumi, 27 September 1996', 'Sudirman'),
(53, 'Heru Suhadi', 'Kp.Cibatu Legok 22/04', '085219874328', 'Sukabumi, 13 November 1963', 'Sudirman'),
(54, 'Iman Firmansyah', 'Parungkuda no 34', '082245977200', 'Sukabumi, 16 Febuary 1972', 'Sudirman'),
(55, 'Rina y', 'Jl pelabuan no 101 A', '085694546787', 'Sukabuki 4 mei 1966', 'Sudirman'),
(56, 'Anis Fauzi', 'Jl. telaga tujuh 03/04', '085765677273', 'Sukabumi, 21 September 1982', 'Sudirman'),
(57, 'Melan Maelani', 'Tipar 01/08', '087879625903', 'Sukabumi, 10 Maret 1988', 'Sudirman'),
(58, 'Setia jernih', 'Jl hj ahmad sanusi  rt 2 rw 10', '083894703678', 'Palembang 19 agustus 1986', 'Sudirman'),
(59, 'Restu', 'Selabintana', '085793907102', 'Sukabumi 17 agustus 1989', 'Sudirman'),
(60, 'Hendra', 'Kp dangdeur ', '085624140376', 'Sukabumi 07 januari 1990', 'Sudirman'),
(61, 'Apriani', 'Jl.selabintana wetan', '085215880688', 'Sukabumi 22 april 1990', 'Sudirman'),
(62, 'Rianti', 'Kp cimahi rt 30 rw 06 cisaat cibolang kaler', '081911827173', 'Sukabumi 11 april 1991', 'Sudirman'),
(63, 'Fajrian', 'benteng runei 01/09', '087816096318', 'Sukabumi, 31 Mei 1997', 'Sudirman'),
(64, 'Elis', 'Babakan garung rt 001 rw 006', '082132413545', 'Sukabumi,21 Desember 1990', 'Sudirman'),
(65, 'Nurma', 'Perum pesona limbangan', '085720089808', 'Sukabumi 13 januari 1992', 'Sudirman'),
(66, 'Zella fitri nurdiani', 'Kp. Suka warna 001/003', '081320006338', 'Bogor,26-06-1984', 'Sudirman'),
(67, 'Iyep saepudin ', 'Babakan sirna rt004 rw003', '085740348684', 'Sukabumi,14 Agustus 1971', 'Sudirman'),
(68, 'Rina ', 'Nagrak taman bahagia', '085218558802', 'Sukaharjo, 24 Juli 1987', 'Sudirman'),
(69, 'Desty Nurjanah ', 'Perum Gading Regency', '085723331992', 'Sukabumi, 16 Desember 1993', 'Sudirman'),
(70, 'Desi Siti Fatimah', 'Babakan Sirna 01/13 Cibadak', '085871177151', 'Sukabumi,  20 Desember 1981', 'Sudirman'),
(71, 'Siti muniroh alawiyah', 'Cisaat', '082312915044', 'Sukabumi,25 November 2002', 'Sudirman'),
(72, 'Maya yuliana', 'Jl lukman nurahakim perum gading kencana asri ', '085520772771', 'Sukabumi,18 Juli 1995', 'Sudirman'),
(73, 'Rismawati ', 'Kampung cimaja kecamatan cikakak kab sukabumi', '085846977201', 'Sukabumi,26-03-97', 'Sudirman'),
(74, 'Cici atiah', 'Kp cimaja rt01 rw01', '085846997723', 'Sukabumi,05-05-1996', 'Sudirman'),
(75, 'Dhea utami ', 'Jalan kopeng gang wargi no 17', '081460973204', 'Sukabumi 31 mei 1990', 'Sudirman'),
(76, 'Imas pujianti', 'Perum sindang palay asri', '088709634824', '1 juli 1980', 'Sudirman'),
(77, 'Nendi jaya priatna', 'Perum sindang palay', '085798762482', 'Sukabumi,17 agustus 1975', 'Sudirman'),
(78, 'Astri budiarti', 'Perum pesona mayanti', '081219402818', 'Sukabumi,6 agustus 1996', 'Sudirman'),
(79, 'Rihana ', 'Perum tanjung sari ', '087874983612', 'Jakarta,11-12-1978', 'Sudirman'),
(80, 'Siti nuraeni', 'Kp babakan jawa desa sukaresmi kec cisaat', '085319243982', 'Sukabumi,4 juni 1999', 'Sudirman'),
(81, 'Sylvia', 'Jl garuda caringin baros rt 01 rw 10', '085759363148', 'Sukabumi,1 juli 1995', 'Sudirman'),
(82, 'Supriati ', 'Kp bakti cibolang', '085711504833', 'Sukabumi 23 mei 1985', 'Sudirman'),
(83, 'Wulan ', 'Limusnunggal ', '081314471818', 'Sukabumi 17 maret 1991', 'Sudirman'),
(84, 'Nur azizah romadhonita', 'Jl cagak cibaraja ', '085216219127', 'Sukabumi,24 november 2022', 'Sudirman'),
(85, 'Wila Rayi riyanto', 'benteng jalan saniin 10/02', '081585791099', 'Jakarta, 15 November 1999', 'Sudirman'),
(86, 'Detti Sintawati', 'gang ajid 2 04/06', '085624956805', 'Sukabumi, 31 Mei 1982', 'Sudirman'),
(87, 'Tia Putriana', 'Jalan brawijaya no 556', '081313055713', 'Sukabumi, 27 Mei 1984', 'Sudirman'),
(88, 'Ai masripah', 'Kampung cisarua', '085862030456', 'Sukabumi,14 juli 2001', 'Sudirman'),
(89, 'Riris Nababan', 'Tanjung sari jalan dahlia no 60', '082114626233', 'Medan, 17 Januari 1986', 'Sudirman'),
(90, 'Syahbani ', 'Jl parungseah no 43 cipetir kadudampit', '085659107679', 'Sukabumi,1 februari 2000', 'Sudirman'),
(91, 'Erpina damayanti', 'Jl,parungseah,cipetir', '085728544960', 'Sukabumi,29 april 2001', 'Sudirman'),
(92, 'Siti aisyah', 'Jl parungseah,cipetir', '085793885706', 'Sukabumi,4 januari 2001', 'Sudirman'),
(93, 'Jasmin Harum', 'jalan pajajaran 2 no 72', '085863457693', 'Sukabumi, 30 september 1999', 'Sudirman'),
(94, 'Agi Rohmansyah', 'Jalan bhayangkara gang karya no 27', '085864779795', 'Sukabumi, 27 April 1990', 'Sudirman'),
(95, 'Inayah ulfa', 'Sindang palay rt01 rw06', '081219910658', 'Sukabumi,28 agustus 1993', 'Sudirman'),
(96, 'Asti Widia Astuti', 'Jalan taman bahagia benteng tengah 01/02', '085722688981', 'Sukabumi, 15 Oktober 1985', 'Sudirman'),
(97, 'Heliawati', 'Jalan titiran 51', '0818734240', 'Sukabumi, 05 Juli 1970', 'Sudirman'),
(98, 'Lina eliyawati', 'Kp cibaregbeg rt 02 rw02 sagaranten ', '085798005555', '05-05-1974', 'Sudirman'),
(99, 'Vini alviani', 'Kp padurenan rt 27 rw 09', '081222609728', 'Sukabumi,21 juni 2001', 'Sudirman'),
(100, 'Ida rosida', 'Jl citengkor', '081563444483', '12 juli 1962', 'Sudirman'),
(101, 'Sani', 'Benteng kidul perum emrol residen', '081281176060', 'Sukabumi,25 maren 1990', 'Sudirman'),
(102, 'Dilla', 'Gg rawasalak rt 01 rw 12 ', '085721528684', 'Sukabumi, 2 Oktober 2006', 'Sudirman'),
(103, 'Syahril ', 'Jln cemerlang rt 01 rw 03 ', '085659794446', 'Sukabumi, 21 Februari 2002', 'Sudirman'),
(104, 'Nia ', 'Jl sawahbera rt 01 rw 02 ', '081563657682', 'Sukabumi, 11 Oktober 1986', 'Sudirman'),
(105, 'Nia fitria', 'Gg Sriwijaya 4 no 14 ', '08586327771', 'Bogor , 24  September 1980', 'Sudirman'),
(106, 'Herlin septiani', 'Kp Sindang Kerta rt 1 rw 1 ', '085723188902', 'Sukabumi, 1 September 1995 ', 'Sudirman'),
(107, 'Parid Kusnadi', 'Perumahan samawa Sukaraja ', '085659852250', 'Cianjur, 8 Januari 1990', 'Sudirman'),
(108, 'Astri budiarti', 'Perum sonamayati blok H no 2 ', '085871322198', 'Sukabumi, 17 Agustus 1996', 'Sudirman'),
(109, 'Bambang herliyana', 'Jln Cibuntu rt 02 rw 05 ', '085721159212', 'Sukabumi, 01 Juli 1992', 'Sudirman'),
(110, 'Christina saragih', 'Jln gotong royong rt 11 rw 02 kel gunung puyuh kec', '082165555002', 'Medan , 31 Maret 1977', 'Sudirman'),
(111, 'Dian ', 'Kp babakan Bandung rt 06 rw 1 ', '083875286148', 'Sukabumi, 25 Juni 1993', 'Sudirman'),
(112, 'Bela pratiwi', 'Jl Ciseureuh rt 02 rw 05', '085722178576', 'Sukabumi, 5 Maret 2001', 'Sudirman'),
(113, 'Merry Febriani', 'Jl tipar gg pesantren ', '085722521391', 'Sukabumi, 13 Februari 1991 ', 'Sudirman'),
(114, 'Nurul Fitria Anisa ', 'Kp parungseah rt 2 rw 4 ', '085722184693', 'Sukabumi 22 Maret 1991', 'Sudirman'),
(115, 'Rosita Oci ', 'Jln pelabuhan 2 rt 2 rw 18 ', '085798687767', 'Sukabumi, 2 Januari 1988', 'Sudirman'),
(116, 'Santiara ', 'Perum gading kencana asri blok A8 no 9 ', '085691589649', 'Parbuluan, 21 April 1991 ', 'Sudirman'),
(117, 'Laras', 'Pangkalan RT 03 RW 05 Des situmekar kec lembursitu', '083819080006', 'Sukabumi 21 Juli 1990', 'Sudirman'),
(118, 'Ema herawati', 'Jl hj kokon komariah ', '085721146124', 'Sukabumi,22 februari 1986', 'Sudirman'),
(119, 'Ida Lestari', 'Jalan saniin benteng nyomplong', '082310900105', 'Sumedang, 23 November 1966', 'Sudirman'),
(120, 'Aisyah', 'Lebak siuk RT 19 RW 07 Des sukamaju kec.kadudampit', '081563663662', 'Sukabumi 10-10-1985', 'Sudirman'),
(121, 'Wulandari', 'Kp.babakan baru RT 3 Rw 7 des.citamiang kec, Citam', '085798546152', '30-april-1989', 'Sudirman'),
(122, 'Irma yulianti', 'Jl bhineka karya', '085861196934', '11 juli 1984', 'Sudirman'),
(123, 'Siti Aminah ', 'Nangeleng ', '085722595874', 'Sukabumi 1 july 1996', 'Sudirman'),
(124, 'Intan permatadely', 'Perum asyfa blok f no 11', '08164624375', 'Medan 28 agustus 1975', 'Sudirman'),
(125, 'Sri darsifah', 'Perum baros  jln jamrud 11 no 167 rt 5 rw 12', '081563739610', 'Jakarta 27 Desember 1963', 'Sudirman'),
(126, 'Nita herawati', 'Btn bukit randu asri blok f no 14 rt 06/022 cibada', '085287304226', 'Tangerang,1 september 1976', 'Sudirman'),
(127, 'Ratih nalawati .A.MD', 'Sukasari RT RW/003/008 des.dayehluhur kec.warudoyo', '08998133395', 'Sukabumi 18-12-1985', 'Sudirman'),
(128, 'Haya', 'Kp. Ciseureuh RT. 003/RW. 001 No. 133 Kota Sukabum', '081389109949/08', 'Jakarta,11 April 2008', 'Sudirman'),
(129, 'Dewi sulastri', 'Nagrak taman bahagia', '0895334193742', 'Sukabumi 12 Agustus 1989', 'Sudirman'),
(130, 'Erna dwirianti', 'Perum tanjungsari permay', '081383180005', 'Kelaten 22-10-1978', 'Sudirman'),
(131, 'Shelni', 'Kp pamoyanan pentas ', '08562227598', '22 mei 1996', 'Sudirman'),
(132, 'Yola', 'Pelabuhan 2 km 11', '081312261181', 'Cirebon,30 mei 1982', 'Sudirman'),
(133, 'Yanti', 'Jl pelabuhan 2 no 2038 rt 1 rw 9', '081911777599', '19-09-1975', 'Sudirman'),
(134, 'Siti nuryati', 'Kp cisereuh talang 003/0013', '089517054037', 'Sukabumi,15 maret 1989', 'Sudirman'),
(135, 'Santi muslihat', 'Perum pesona pada asih regency', '085703480882', '07-05-1971', 'Sudirman'),
(136, 'WIDIYA YULIAWATI', 'Perum taman asri blok b7 no 21', '085723211966', '13 juli 1976', 'Sudirman'),
(137, 'Nenti Widianti', 'Kp. Garung rt 47/20 desa sukaresmi kec. Cisaat', '081563416211', 'Sukabumi 27 06 1985', 'Sudirman'),
(138, 'Elis Rosdiana', 'Jl. Pemuda 01 gg. Hikmat 01 rt 2/2 kec. Citamiang', '082113140404', 'Sukabumi 28 08 1993', 'Sudirman'),
(139, 'Devi susanti', 'Desa sukajaya kab sukabumi', '085283915699', 'Lampung 27 desesmber 1983', 'Sudirman'),
(140, 'Dwi ratna komalasari ', 'Jl babakan rt 01 rw 012 sukakarya', '0895337280789', '16 juli 2000', 'Sudirman'),
(141, 'Riska oktaviani', 'Jl cijangkar rt 5 rw 9 ', '083892192899', '02 oktober 2000', 'Sudirman'),
(142, 'Neng yuli', 'Benteng gg mesjid rt 9 rw 2', '089527694100', 'Sukabumi 04 agustus 1994', 'Sudirman'),
(143, 'WIWIT ASTRI WIJAYANTI', 'Jl parungseah kp nyangsang rt 1 rw 1 desa parungse', '085723815849', 'Sukabumi 15 september 1995', 'Sudirman'),
(144, 'Nia Diankania', 'Perumahan, gunung jaya permai rt 33 rw 05', '085314478596', 'Sukabumi, 01 april 1968', 'Sudirman'),
(145, 'Wati aprilianti', 'Tanjung sari', '085697488788', 'Smi 1 April 1984', 'Sudirman'),
(146, 'Eka', 'Perum jayden residance desa sudajaya girang kec su', '08815439003', 'Sukabumi 16 oktober 1991', 'Sudirman'),
(147, 'Vina', 'Jl pajajaran 2 no 36', '085691097882', 'Sukabumi 12 mei 1988', 'Sudirman'),
(148, 'Sri ulfah', 'kampung cisarua girang 04/01', '085648005464', 'Sukabumi, 12 Mei 1998', 'Sudirman'),
(149, 'Dewi lestari', 'Perum bumi raharja', '085603274565', 'Sukabumi 02 06 1984', 'Sudirman'),
(150, 'Tika', 'Jl ra kosasih', '081572750134', 'Sukabumi 20 januari 1984', 'Sudirman'),
(151, 'Novi Suci Astiani', 'Jalan bhineka karya', '082258536037', 'Sukabumi, 16 November 1988', 'Sudirman'),
(152, 'Nining Daningsih ', 'Perum taman asri blok b 16', '08995351370', 'Sukabumi, 21 Desember 1972', 'Sudirman'),
(153, 'Titin Rohayati', 'jalan cikaroya no 14 046/010', '085794724616', 'Sukabumi, 18 Desember 1952', 'Sudirman'),
(154, 'Riska', 'Jl tipar no 8 rt 2 rw 4', '081287787090', 'Sukabumi 11 11 1981', 'Sudirman'),
(155, 'Salmah cindra iriani', 'Kp. Gn jaya rt 15/03 desa gn. Jaya kec. Cisaat', '085798684078', 'Sukabumi 27 05 1997', 'Sudirman'),
(156, 'Nuke', 'Perum baros kencana jl. Shapir 8 kec. Baros', '081381911876', 'Bandung. 28 november 1976', 'Sudirman'),
(157, 'Ai latifah', 'Parungkuda rt 44/19 no 33', '085720990844', 'Sukabumi 17 09 1977', 'Sudirman'),
(158, 'Dina sulastri', 'Bekasi ', '089513471143', '36 maret 2002', 'Sudirman'),
(159, 'Ibu nina', 'Rambay', '085871547275', 'Sukabumi 11 april 1982', 'Sudirman'),
(160, 'Supriati ', 'Kp bakti cibolang ', '085711504833', '7 mei 1985', 'Sudirman'),
(161, 'wulan', 'jalan limus nunggal', '081311471818', '19 juni 1992', 'Sudirman'),
(162, 'rahma', 'perum tanjung sari', '081219988313', 'sukabumi 25 februari 1981', 'Sudirman'),
(163, 'Eka ', 'Ci jambe girang ', '082122851642', 'sukabumi 21 juni 1993', 'Sudirman'),
(164, 'Riva', 'Nangeleng', '085871322198', NULL, 'Sudirman'),
(165, 'Feby ,', 'Gank suberjaya citamiang ', '085759667191', '1989-09-23', 'Sudirman'),
(166, 'Sonia', 'Balandongan ', '085788850976', 'sukabumi 14 nov 1995', 'Sudirman'),
(167, 'Caca', 'Karamat ', '085759225851', 'sukabumi 14 nov 1995', 'Sudirman'),
(168, 'Ajeng', 'Ciaul ', '085863692080', '8 mei 1999', 'Sudirman'),
(169, 'Sukamto', 'perumahan karang kencana', '085281895634', '1982-04-27', 'Sudirman'),
(170, 'Iswarinda', 'veteran', '081213790732', NULL, 'Sudirman'),
(171, 'wiluje', 'jawa tengah', '081133165165', NULL, 'Sudirman'),
(172, 'neneng', 'cibatu', '085846558935', NULL, 'Sudirman'),
(173, 'Resti', 'Cirumput', '083806258087', NULL, 'Sudirman'),
(174, 'Meimi', 'Kadudampit', '081563197131', NULL, 'Sudirman'),
(175, 'rani', 'cibolang', '085794530102', NULL, 'Sudirman'),
(176, 'Ika ganefianti', 'Jl tegal wangi, cemerlang ', '085659500632', NULL, 'Sudirman'),
(177, 'Marni', 'babakan garung', '08572335947', NULL, 'Sudirman'),
(178, 'afni', 'nyomplong', '0895622007066', NULL, 'Sudirman'),
(179, 'heti', 'babakan jalur', '081460949800', NULL, 'Sudirman'),
(180, 'lia', 'cicurug', '081311500886', NULL, 'Sudirman'),
(181, 'risma', 'cicurug', '087720919666', NULL, 'Sudirman'),
(182, 'ida', 'bumi cilang indah', '089664408607', NULL, 'Sudirman'),
(183, 'Frisca', 'Yaspida', '081383571250', NULL, 'Sudirman'),
(184, 'Pak bambang', 'Gentong sukaraja', '085704121884', NULL, 'Sudirman'),
(185, 'Tamara putri', 'Kp.cibolang kidul RT 33 RW 8', '08111778972', NULL, 'Sudirman'),
(186, 'Neli lasmarita ', 'Perum gading kencana', '081214058603', NULL, 'Sudirman'),
(187, 'Loes supriati', 'Jl brawijaya ', '085863554155', NULL, 'Sudirman'),
(188, 'Linda', 'Cisaat', '085676413158', NULL, 'Sudirman'),
(189, 'Ica', 'Jl veteran ', '089671065291', NULL, 'Sudirman'),
(190, 'Riri', 'Jl. Olahraga 2 no 54 rt 07/05', '085647705040', NULL, 'Sudirman'),
(191, 'Siska', 'Dayeuh luhur', '081572752909', NULL, 'Sudirman'),
(192, 'Syahrani', 'Pesona cibereum permai', '085798438343', NULL, 'Sudirman'),
(193, 'Dede ruswandi', 'Balandongan', '085863262172', NULL, 'Sudirman'),
(194, 'Sharah haenila', 'Jl. Gotong royong', '082311467794', NULL, 'Sudirman'),
(195, 'Fadila ', 'Cibaraja ', '08562214229', NULL, 'Sudirman'),
(196, 'Reni', 'Perum kharisma', '081293166360', NULL, 'Sudirman'),
(197, 'Ranti', 'Karang tengah', '089685072060', NULL, 'Sudirman'),
(198, 'Ida', 'Skip ', '085603855160', NULL, 'Sudirman'),
(199, 'Finsa af ', 'Lbir situ', '085759019441', NULL, 'Sudirman'),
(200, 'Nita rahmawati', 'Cikukulu caringin', '08586034183', NULL, 'Sudirman'),
(201, 'Aika ', 'J siiwangi', '085214051779', NULL, 'Sudirman'),
(202, 'Lia', 'Jl veteran', '085798419503', NULL, 'Sudirman'),
(203, 'Sri ', 'Perum telapa ', '085659498004', NULL, 'Sudirman'),
(204, 'Leli nurliana ', 'Jl prana cisarua', '081573926362', NULL, 'Sudirman'),
(205, 'Fina', 'Babakan sirna', '081212253465', NULL, 'Sudirman'),
(206, 'Yuli', 'Cipanengah', '08139015088', NULL, 'Sudirman'),
(207, 'Wahidah', 'Cikaroya ', '081282801088', NULL, 'Sudirman'),
(208, 'Diana ', 'Baros', '088211311216', NULL, 'Sudirman'),
(209, 'Rica', 'Kabandungan ', '085724926624', NULL, 'Sudirman'),
(210, 'Ai rikawati', 'Salabintana ', '081546939707', NULL, 'Sudirman'),
(211, 'Rini ', 'Cisaat', '085624858950', NULL, 'Sudirman');

-- --------------------------------------------------------

--
-- Table structure for table `training_record`
--

CREATE TABLE `training_record` (
  `id` int(100) NOT NULL,
  `nama_training` varchar(30) NOT NULL,
  `tanggal_training` date NOT NULL,
  `trainer` varchar(30) NOT NULL,
  `status` varchar(4) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_record`
--

INSERT INTO `training_record` (`id`, `nama_training`, `tanggal_training`, `trainer`, `status`, `nilai`) VALUES
(2, 'Seven Habits', '2022-08-23', 'Isan', '1', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` char(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(30) NOT NULL,
  `kode_cabang` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `no_hp`, `username`, `password`, `level`, `kode_cabang`) VALUES
('USR001', 'isan', '085157079913', 'isan', 'isan', 'administrator', 'PST');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_record`
--
ALTER TABLE `training_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `training_record`
--
ALTER TABLE `training_record`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
