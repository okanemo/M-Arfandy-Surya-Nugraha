-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 09:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `okanemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `perm_add` int(1) NOT NULL,
  `perm_edit` int(1) NOT NULL,
  `perm_delete` int(1) NOT NULL,
  `password` varchar(300) NOT NULL,
  `salt` varchar(300) NOT NULL,
  `token` varchar(255) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_delete` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `perm_add`, `perm_edit`, `perm_delete`, `password`, `salt`, `token`, `is_admin`, `is_delete`) VALUES
(1, 'asd', 'admin@mail.com', 1, 1, 1, 'b6226824e35d3c613a341b8faa94624837dc925b34deca6c5e85116c062801b394ea43c3a9df9a9971a2ae189a7003618dc6a2b43d2bffef55e213786cb9dd71', '7d0022c386ea0e9252', 'slur', 1, 0),
(2, 'asd12', 'asd12@asd.asd', 1, 0, 1, 'f78e09dfea2da9fd3243da44aeb062252302486e23da5cb8e211c5a9394e1fd3f3eeffdab2fdded8bad5a26f11de4d6f8f0fbf44d9c98f096950decb48787fb1', '102abe6d0e9a971e72', 'slur', 0, 1),
(4, 'asd12', 'kuku@asd.asd', 1, 0, 0, 'c50b18530d9c29954a4b19d05629ebb1b78621a1be3c5a702452fae6f46128c423a8fc0020950a17717d20f5dd5a36df959e032f0e94895d43f09c62b95e1184', '3cede0598c62b17cb2', 'slur', 0, 1),
(5, 'asd12', 'kuku@asd.asd', 0, 0, 0, '928d73f0e1ee4ae5488b81f73689252eceaac63b3adcfb9deea3573b17fbcd55ca25c0413818af434d102ae809b641464ebd5f9d8ca838530586deb30f5ee490', '65d0a9833e7ba10b75', 'slur', 0, 1),
(6, 'asd12', 'kuku@asd.asd', 0, 0, 0, '9bb880e3c870a706454055520bd4c5c1a0d2cdf2abb90b5b77e82f42d396d0a89928199cbe854af510ddd2d26b6839a9e7a323a705beeb382718635fac41f372', '4e31fed878a73ed77e', 'slur', 0, 1),
(7, 'asd12', 'kuku@asd.asd', 0, 0, 0, '8729b4cb2dd9358901dca506f357b47467d29d83efce2d3126409879b4f332b95e99bc011fee050aba661572515bda923de5926ae6ef7364f920ee7e0c35ddcf', '358842bb9b2377a363', 'slur', 0, 1),
(8, 'asd12', 'kuku@asd.asd', 0, 0, 0, 'b7845281785d71653d3614bff7de60852b21a6f61fcac97f097a8eee17d8921390087a8bf2beadd25eb6d735f291ed196d72040b9655d6e7e9262624c0743975', 'c53b15db89f10e6bfe', 'slur', 0, 1),
(9, 'asd12', 'kuku@asd.asd', 0, 0, 0, '78b9cacf4f44261ffdfad88e7337aec82aff30bc56c8fdad1e6709e2d26cb332aa2cbc8a8104aa760bb823e8406afdbc32a6142a49757d244eb090eb75742721', 'dca29cd3154d723d69', 'slur', 0, 1),
(10, 'asd12', 'kuku@asd.asd', 0, 0, 0, '33ab193db3dfef6656dbe94e607708c54fb2c41487a3b2088c32518cc32ef60870fdc4a47e05f7720374d8abefa09c881f1480d12d2bd1bbfa838b7ce2053922', 'fd371d962f1616c3ce', 'slur', 0, 1),
(11, 'asd12', 'kuku@asd.asd', 0, 0, 0, '4bd2802bdaed8e504699b1fd05112227d902472080b144ea290e24e7a3307c5fe89dbb9d74436f7edb1925ee21c5ca715bd8745bcdc6aa59872cc6f6b66838eb', '0242d6315e2f1d8b02', 'slur', 0, 1),
(12, 'asd12', 'kuku@asd.asd', 0, 0, 0, 'e61158a2d33e25ea95e1807043219509ce65e2c2a1bed084004c268c82c5cf798a106a1125182617698a52db2092f3b4fa2263ee14635468afc72a10aeb39148', 'cda1dc1f5de1f97f04', 'slur', 0, 1),
(13, 'asd12', 'kuku@asd.asd', 0, 0, 0, '2df8535bb444531c57f63597b815633990b12d3b6ebb7945f49607e0c13be2aec98a2f6e55037bbc04bda86309618db44ce61f20ceac14ca065028c85b26c242', '2f2484ef5ce77821c6', 'slur', 0, 1),
(14, 'asd12', 'kuku@asd.asd', 1, 1, 0, '5ef0bc69bacdf624387b5dce9effbc2fde450f921455c3fabb27cccb3b70c34b0ca0a4a2a83100a8f48f7acaed08850411d908a005d0d5e2b7bee3ca96a7d566', '30dd923eecc0d05d3c', 'slur', 0, 1),
(15, 'asd12', 'kuku12@asd.asd', 0, 0, 1, 'bf818677cb494a43c18fde45d12145b6f56a745ebdda0757298d15afff6a03344ddc217d951c579ae2d509fbbec1ae4986f6eb669dfdbc7d41c4568c65658382', 'decb1397747d32dbf7', 'slur', 0, 1),
(16, 'asd12', 'kuku123@asd.asd', 1, 0, 1, '828e7fb45f1bfb1a6d4343705e45d6c298e59e3a617338ad680828e66723128e80a151004e8261078847bf27e492b160d5a8aa7dafba173d3fe57052c2f4f44b', '72de6fe75747a44de3', 'slur', 0, 1),
(17, 'asd12', 'kuku123@asd.asd', 0, 0, 0, '3ce9d9cbf2a8713dc1efebcdc713a447a31b0cc1b3d94ba3e35948e54316dcda47bcfd02af54256749b64b8f01a724f53ea3a6a43c0aa2ecb3aa941879af789f', '3da382f4e35d730228', 'slur', 0, 1),
(18, 'mam', 'qwe@asd.asd', 1, 0, 1, '00cdbb7dddbb8bdc8b8eb6ecc0c34bdb7a4d9837194dc002f15402af52e773c8adda61a9bce4fb7085d8d8c0f16139e8db61bb4e084be59bb45bb55ef27884de', '84e813e228f2673abf', 'slur', 0, 1),
(19, 'Mantap', 'ter@asd.asd', 0, 0, 0, 'c05d873afd6dd1be4def9f03ce189f07458bd2f429a00961f56f8dea5f2f35131f134022b0d5b437b820ad75146079b50693e0d921d4f22147ac80079a6977ea', 'f94102dbc7c8478fb3', 'slur', 0, 1),
(20, 'tes lagi', 're@kl.asd', 0, 0, 0, '9ee3510decf6b01ce9f8c6b87dfcef86fd8f059afe175ea2eb2164c5e16220c5386ee5e5adbf81705da61842d7f5e9890c0b19f2b7edb48635f0085d26e84ecc', 'b3f4558241bdd20d91', 'slur', 0, 1),
(21, 'asdw', 'rewwq@asd.asd', 0, 0, 0, 'df810ea2cf774482d5ccc1ace1687f6c58286d8550df6e2f553b8b1e7cc2d203817d5aa2598635a2d567ba17aad5c94891be3d549ca0fd4ca510cf384cfeb96c', '9000702d67f98866f4', 'slur', 0, 1),
(22, 'low', 'ewq@asd.dsa', 0, 0, 0, 'f37fa6fa5119b0ed6498604cdaa25592475ae0d54713d7f33483485db140cef3a0bf65d1b2f681cd8cc62737c2559250112a8d166e79d3f34895f315f694e14d', '44bdeaec4a017ad124', 'slur', 0, 1),
(23, 'asdqw', 'eewq@asd.asd', 0, 0, 0, 'a630e4231886776fd2a03b44184ddb392c63dcfe44365a807dd957ed791a8a37001af2ef770c41cdd8eecfbcb7b232bac3e77bb4ae5aabdb596689fc03bc532f', '7e91ecf525489e4692', 'slur', 0, 1),
(24, 'ii', 'iei@asd.asd', 0, 0, 0, 'af07d3b3c1828a1740e3f1d70ab860795616e5edbb9c11ecd9476742309c46921e4424ca3212cecb55c92dc0bfa4a3c11a92724462011f012f2a978bfbf4c394', '8182134a322b2d5eff', 'slur', 0, 1),
(25, 'tes', 'tes@asd.asd', 1, 1, 1, '20a973a9ef29fbf6cf2952d43965fae1114d9f7168455ba0cd371d83dd19e8a69f0461901c368a6b300fb6456c0a6e9a0ed7286ae2a9c02b7c144425ef03b3e1', 'e63c9a2f81776fa088', 'slur', 0, 0),
(26, 'Kuy', 'kuy@mail.com', 1, 0, 0, '1a92e12ce0a6caa7f3064364ec7f51254abec83097f5a18be1166f77ba2095e1193cc71b4cdc8abfcf9899400279da09cc453e71b6f86be544afc89ac7927437', 'db7a8bdbe195879f2f', 'slur', 0, 1),
(27, 'tes', 'tes@mail.com', 0, 0, 0, '4b7edf471be904fdb4b9b1c61470a8479813230c585b866a14b69005ae401ac7049b210c471943aa187b227a8c4510e233587f169731265ba6c1cd4ba15badf4', 'aaf00c5b7925ad833c', 'slur', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
