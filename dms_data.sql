-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 12:13 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('user', 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `readmanga`
--

CREATE TABLE `readmanga` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `readmanga`
--

INSERT INTO `readmanga` (`ID`, `Name`) VALUES
(1, 'Btooom!'),
(2, 'Domestic Girlfriend'),
(3, 'Ability'),
(4, 'Bastard'),
(5, 'A God\'s Ascension'),
(6, 'Bug Player'),
(7, 'Day 100 Of My Sister\'s Disappearance'),
(8, 'Dungeon Seeker'),
(9, 'The Quintessential Quintuplets'),
(10, 'Greatest Outcast'),
(11, 'Half And Half'),
(12, 'Alice In Borderland'),
(13, 'Miracle App Store'),
(14, 'My Dear Vampire Lord'),
(15, 'The Hero Is Dead'),
(16, 'Bloom Into You'),
(17, 'Pashiri na Boku to Koi suru Banchou-san'),
(18, 'Tensei Ouji wa Daraketai'),
(19, 'Yukionna to Kani wo Kuu'),
(20, 'Masamune-kun no Revenge');

-- --------------------------------------------------------

--
-- Table structure for table `toread`
--

CREATE TABLE `toread` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toread`
--

INSERT INTO `toread` (`ID`, `Name`) VALUES
(1, 'Horimiya'),
(2, 'Nidekoi'),
(3, 'Noblesse'),
(4, 'Sweet Home'),
(5, 'Jujutsu Kaisen'),
(6, 'Overgeared'),
(7, 'Stalker X Stalker'),
(8, 'A Returner\'s Magic Should Be Special'),
(9, 'Dice'),
(10, 'The Gamer'),
(11, 'Tower Of God'),
(12, 'We Never Learn'),
(13, 'Necromance'),
(14, 'Sweet Home'),
(15, 'Kaifuku Jutsushi No Yarinaoshi');

-- --------------------------------------------------------

--
-- Table structure for table `towatch`
--

CREATE TABLE `towatch` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `towatch`
--

INSERT INTO `towatch` (`ID`, `Name`) VALUES
(1, 'One Piece'),
(2, 'Bleach'),
(3, 'Fairy Tail'),
(4, 'Monogatari Series'),
(5, 'Tamako Market'),
(6, 'So I\'m a Spider, So What?'),
(7, 'Edens Zero'),
(8, 'K-ON'),
(9, 'Shaman King'),
(10, 'Mars Red'),
(11, '86'),
(12, 'Tokyo Revengers'),
(13, 'Combatants Will Be Dispatched!');

-- --------------------------------------------------------

--
-- Table structure for table `towatchmov`
--

CREATE TABLE `towatchmov` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `towatchmov`
--

INSERT INTO `towatchmov` (`ID`, `Name`) VALUES
(1, 'Free Guy');

-- --------------------------------------------------------

--
-- Table structure for table `watched`
--

CREATE TABLE `watched` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watched`
--

INSERT INTO `watched` (`ID`, `Name`) VALUES
(1, 'Death Note'),
(2, 'Attack On Titan'),
(3, 'The Future Diary'),
(4, 'Charlotte'),
(5, 'Parasyte'),
(6, 'Highschool dxd'),
(7, 'Elfen Lied'),
(8, 'Nisekoi'),
(9, 'Darker Than Black'),
(10, 'Full Metal Alchemist'),
(11, 'One Punch Man'),
(12, 'Mob Psycho 100'),
(13, 'Blue Exorcists'),
(14, 'Seven Deadly Sins'),
(15, 'Another'),
(16, 'Code Geass'),
(17, 'Tokyo ghoul'),
(18, 'Re: Zero Kara Hajimeru'),
(19, 'Guilty Crown'),
(20, 'No Game No Life'),
(21, 'My Hero Academia'),
(22, 'Sword Art Online'),
(23, 'Erased'),
(24, 'Ajin'),
(25, 'Zetman'),
(26, 'Akame Ga Kill'),
(27, 'Is This A Zombie'),
(28, 'Date A Live'),
(29, 'Chivalry of a Failed Knight'),
(30, 'Noragami'),
(31, 'Your Name (Movie)'),
(32, 'Death Parade'),
(33, 'Konosuba'),
(34, 'Devil Survivor '),
(35, 'A Silent Voice (Movie)'),
(36, 'Overlord'),
(37, 'Assassination Classroom'),
(38, 'Dragon Ball Super'),
(39, 'Rewrite'),
(40, 'Accel World'),
(41, 'Grimgar Of Fantasy And Ash'),
(42, 'Log Horizon'),
(43, 'Btooom'),
(44, 'Angel Beats'),
(45, 'Highschool of the Dead'),
(46, 'Phantasy Star Online '),
(47, 'C: Control'),
(48, 'World Break'),
(49, '18if'),
(50, 'Clockwork Planet'),
(51, 'Zero Kara Hajimeru Mahouno Sho'),
(52, 'Is It Wrong To Try To Pick Up Girls In A Dungeon?'),
(53, 'Hamatora'),
(54, 'When Supernatural Battles Became Commonplace'),
(55, 'In Another World With My Smartphone'),
(56, 'Steins Gate'),
(57, 'Fate/Stay Night'),
(58, 'Fate Zero'),
(59, 'The Devil Is A Part-Timer'),
(60, 'Black Bullet'),
(61, 'Re: Creators'),
(62, 'Outbreak Company'),
(63, 'Seraph Of The End'),
(64, 'QuanZhi GaoShou'),
(65, 'Psycho Pass'),
(66, 'Danganronpa'),
(67, 'Persona '),
(68, 'Deadman Wonderland'),
(69, 'Koutetsujou no Kabaneri'),
(70, 'God Eater'),
(71, 'Ranpo Kittan'),
(72, 'Ergo Proxy'),
(73, 'Plastic Memories'),
(74, 'Shiki'),
(75, 'The Silver Guardian'),
(76, 'Absolute Duo'),
(77, 'Towa no Quon'),
(78, 'Black Blood Brothers'),
(79, 'Chrome Shelled Regios'),
(80, 'Hand Shakers'),
(81, 'Tales of Zestiria The X'),
(82, 'Trinity Seven'),
(83, 'The Asterisk War'),
(84, 'UQ Holder'),
(85, 'Twin Star Exorcist'),
(86, 'Fate Apocrypha'),
(87, 'Drifters'),
(88, 'Servamp'),
(89, 'Strike The Blood'),
(90, 'Juuni Taisen'),
(91, 'King\'s Game'),
(92, 'Psychic Detective Yakumo'),
(93, 'Un-Go'),
(94, 'The Lost Village'),
(95, 'Bungou Stray Dogs'),
(96, 'Mahouka Koukou no Rettousei'),
(97, 'Blood Lad'),
(98, 'Death March To The Parallel World'),
(99, 'Divine Gate'),
(100, 'Goblin Slayer'),
(101, 'Haven\'t You Heard? I\'m Sakamoto'),
(102, 'Endride'),
(103, 'Evil Or Live'),
(104, 'Inuyashiki'),
(105, 'Classroom Of The Elite'),
(106, 'Fate/Extra Last Encore'),
(107, 'Doreiku'),
(108, 'SAO: Alternative - Gun Gale Online'),
(109, 'Devil\'s Line'),
(110, 'Problem Children Are Coming From Another World, Aren\'t They?'),
(111, 'Akashic Records of Bastard Magical Instructor'),
(112, 'Corpse Party'),
(113, 'How Not To Summon A Demon Lord'),
(114, 'Master Ragnarok & Blesser of Enherjar'),
(115, 'Seven Senses of the Re\'Union'),
(116, 'Steins Gate '),
(117, 'Sagrada Reset'),
(118, 'Beyond The Boundary'),
(119, 'Sky Wizards Academy'),
(120, 'Baka And Test'),
(121, 'Tsuredure Children'),
(122, 'My Neighbor Seki'),
(123, 'Aho-Girl'),
(124, 'Bunny Girl Senpai'),
(125, 'That Time I Got Reincarnated as a Slime'),
(126, 'The Promised Neverland'),
(127, 'Daily Lives of High School Boys'),
(128, 'The Quintessential Quintuplets'),
(129, 'Made In Abyss'),
(130, 'Conception'),
(131, 'Cells At Work'),
(132, 'Yuragi-sou no Yuuna-san'),
(133, 'Araiya-san!: Ore to Aitsu ga Onnayu de!?'),
(134, 'Kakuriyo: Bed & Breakfast for Spirits'),
(135, 'Sword Art Online: Alicization'),
(136, 'Zombieland Saga'),
(137, 'Blade Dance of Elementalers'),
(138, 'Dororo'),
(139, 'Isekai Quartet'),
(140, 'Wise Man\'s Grandchild'),
(141, 'The Rising of the Shield Hero'),
(142, 'Fate/Grand Order '),
(143, 'Rokka - Braves of the Six Flowers'),
(144, 'Alderamin on the Sky'),
(145, 'Undefeated Bahamut Chronicle'),
(146, 'Blast of Tempest'),
(147, 'Yamada-kun And The Seven Witches'),
(148, 'Myriad Colors Phantom World'),
(149, 'Island!'),
(150, 'Isekai Cheat Magician'),
(151, 'The Ones Within'),
(152, 'Demon Slayer - Kimetsu No Yaiba'),
(153, 'Do You Like Your Mom'),
(154, 'GATE'),
(155, 'Demon Lord, Retry'),
(156, 'Astra Lost In Space'),
(157, 'Beatless'),
(158, 'Kaguya-sama - Love is War'),
(159, 'A Certain Scientific Accelerator'),
(160, 'If it\'s for my Daughter, I\'d even defeat a Demon Lord'),
(161, 'Hensuki: Are You Willing to Fall in Love with a Pervert, as Long as She\'s a Cutie?'),
(162, 'Expelled From Paradise (Movie)'),
(163, 'Hellsing Ultimate'),
(164, 'Tokyo Ravens'),
(165, 'ReLIFE'),
(166, 'My First Girlfriend is a Gal'),
(167, 'Weathering With You (Movie)'),
(168, 'Masamune-kun\'s Revenge'),
(169, 'Arifureta - From Common Place to World\'s Strongest'),
(170, 'Haikyuu!!'),
(171, 'Hundred'),
(172, 'Hyouka'),
(173, 'YU-NO'),
(174, 'Bem'),
(175, 'Saga of Tanya The Evil'),
(176, 'Kokkoku'),
(177, 'The Hentai Prince and the Stony Cat'),
(178, 'Miss Kobayashi\'s Dragon Maid'),
(179, 'The Ancient Magus\' Bride'),
(180, 'Grand Blue'),
(181, 'Ao Haru Ride'),
(182, ' Seeds'),
(183, 'Maoyuu Maou Yuusha'),
(184, 'Mayo Chiki!'),
(185, 'Million Arthur'),
(186, 'Dr Stone'),
(187, 'Miss Caretaker of Sunohara-sou'),
(188, 'The Helpful Fox Senko-san'),
(189, 'The Pet Girl of Sakurasou'),
(190, 'Barakamon'),
(191, 'Hunter x Hunter'),
(192, 'My Youth Romantic Comedy SNAFU'),
(193, 'My Mental Choices are Completely Interfering with my School Romantic Comedy'),
(194, 'Are You Lost?'),
(195, 'Boarding School Juliet'),
(196, 'Magi - Aladin and Alibaba'),
(197, 'Magi - The Adventure of Sinbad'),
(198, 'We Never Learn'),
(199, 'Cautious Hero - The Hero Is Overpowered but Overly Cautious'),
(200, 'Another World'),
(201, 'Why the Hell are you here, Teacher!'),
(202, 'Vinland Saga'),
(203, 'Val x Love'),
(204, 'Granblue Fantasy'),
(205, 'Ascendance of a Bookworm'),
(206, 'Eromanga-sensei'),
(207, 'The Island of Giant Insects (Movie)'),
(208, 'Prison School'),
(209, 'Oresuki: Are You The Only One Who Loves Me?'),
(210, 'Kemono Michi - Rise Up'),
(211, 'Grisaia no Kajitsu'),
(212, 'Kill La Kill'),
(213, 'Assassins Pride'),
(214, 'Fire Force'),
(215, 'Magical Sempai'),
(216, 'Kakegurui - Compulsive Gambler'),
(217, 'WataMote - No Matter How I Look At It, Its You Guy\'s Fault I\'m Unpopular'),
(218, 'Haganai - I Don\'t Have Many Friends'),
(219, 'Senyuu'),
(220, 'How Heavy Are The Dumbbells You Lift?'),
(221, 'Toradora!'),
(222, 'Didn\'t I Say to Make My Abilities Average in the Next Life?'),
(223, 'No Guns Life'),
(224, 'To the Abandoned Sacred Beasts'),
(225, 'The Demon Girl Next Door'),
(226, 'Fairy Gone'),
(227, 'Kiznaiver'),
(228, 'Dragon Quest - Your Story (Movie)'),
(229, 'Cagaster Of An Insect Cage'),
(230, 'Special Crime Investigation - Special '),
(231, 'Knights of the Zodiac - Saint Seiya'),
(232, 'AICO - Incarnation'),
(233, 'Sword Gai - The Animation'),
(234, 'Akuma no Riddle'),
(235, 'Mairimashita! Iruma-kun'),
(236, 'Sirius The Jaeger'),
(237, 'Magmel of the Sea Blue'),
(238, 'Heaven\'s Memo Pad'),
(239, 'Last Hope'),
(240, 'Hatena Illusion'),
(241, 'Darwin\'s Game'),
(242, 'I Want to Eat Your Pancreas (Movie)'),
(243, 'Black Butler'),
(244, 'Blade Of The Immortal'),
(245, 'Radiant'),
(246, 'Uzamaid'),
(247, 'A Destructive God Sits Next To Me'),
(248, 'Spirited Away (Movie)'),
(249, 'Hello World (Movie)'),
(250, 'Today\'s Asuka Show'),
(251, 'Saekano-How to raise a Boring Girlfriend'),
(252, 'Somali And The Forest Spirit'),
(253, 'Science Fell in Love, so I Tried To Prove It'),
(254, 'Gleipnir'),
(255, 'Darling in the FranXX'),
(256, 'Dorohedoro'),
(257, 'ID-Invaded'),
(258, 'Kyokou Suiri'),
(259, 'Nekopara'),
(260, 'Tale Of The Princess Kaguya (Movie)'),
(261, 'Gantz:O (Movie)'),
(262, 'Princess Connect- ReDive'),
(263, 'A Whisker Away (Movie)'),
(264, 'Shironeko Project- Zero Chronicle'),
(265, 'The 8th Son? Are You Kidding Me?'),
(266, 'O Maidens in Your Savage Season'),
(267, 'Girl Who Leapt Through Time (Movie)'),
(268, 'Tower Of God'),
(269, 'Kiki\'s Delivery Service (Movie)'),
(270, 'My Next Life as a Villainess: All Routes Lead to Doom!'),
(271, 'Into the Forest of Fireflies\' Light (Movie)'),
(272, 'Bofuri - I Didn\'t Want to Get Hurt, So I\'ll Max Out My Defence'),
(273, ' Centimeters Per Second (Movie)'),
(274, 'Hal (Movie)'),
(275, 'The Garden of Words (Movie)'),
(276, 'Ao-chan Can\'t Study!'),
(277, 'Patema Inverted (Movie)'),
(278, 'Summer Wars(Movie)'),
(279, 'Ride Your Wave (Movie)'),
(280, 'The Empire of Corpses (Movie)'),
(281, 'Infinite Dendrogram'),
(282, 'Nanbaka'),
(283, 'Flavors Of Youth (Movie)'),
(284, 'The Anthem Of The Heart (Movie)'),
(285, 'Toilet Bound Hanako-kun'),
(286, 'MekakuCity Actors'),
(287, 'Kokoro Connect'),
(288, 'Violet Evergarden'),
(289, 'Tanaka-kun is Always Listless'),
(290, 'Smile Down The Runway'),
(291, 'Big Order'),
(292, 'Everyday Life With Monster Girls'),
(293, 'Domestic Girlfriend'),
(294, 'Happy Sugar Life'),
(295, 'Watakoi - Love Is Hard For Otaku'),
(296, 'Orange'),
(297, 'And You Thought There Is Never A Girl Online?'),
(298, 'Dragon\'s Dogma'),
(299, 'Ni No Kuni (Movie)'),
(300, 'My Monster Secret'),
(301, 'Tawawa on Monday'),
(302, 'Golden Time'),
(303, 'Yosuga no Sora - In Solitude Where We Are Least Alone'),
(304, 'The Misfit Of Demon King Academy'),
(305, 'Peter Grill and the Philosopher\'s Time'),
(306, 'Uzaki-chan Wants To Hang Out'),
(307, 'Dokyuu Hentai HxEros'),
(308, 'The God Of High School'),
(309, 'Rent a Girlfriend'),
(310, 'Deca-Dence'),
(311, 'Gibiate'),
(312, 'Gamers!'),
(313, 'Aoi Bungaku Series'),
(314, 'Human Lost (Movie)'),
(315, 'Your Lie In April'),
(316, 'Sunday Without God'),
(317, 'Monster Girl Doctor'),
(318, 'Ninja Collection'),
(319, 'The World God Only Knows'),
(320, 'Plunderer'),
(321, 'Kakushigoto- My Dad\'s Secret Ambition'),
(322, 'Love, Chunibyo & Other Delusions!'),
(323, 'Kabukichou Sherlock'),
(324, 'Bungou To Alchemist'),
(325, 'I\'ve Always Liked You (Movie)'),
(326, 'The Moment You Fall In Love (Movie)'),
(327, 'Love Is Like A Cocktail'),
(328, 'Burn The Witch (Movie)'),
(329, 'Kuroko No Basuke'),
(330, 'Bloom Into You'),
(331, 'Food Wars!'),
(332, 'School-Live!'),
(333, 'Sankarea - Undying Love'),
(334, 'OreShura (My Girlfriend And Childhood Friend Fight Too Much)'),
(335, 'I Can\'t Understand What My Husband Is Saying'),
(336, 'As The Moon, So Beautiful'),
(337, 'My Girlfriend Is ShoBitch'),
(338, 'My Little Monster'),
(339, 'Tari Tari'),
(340, 'Waiting In The Summer'),
(341, 'Grimms Notes'),
(342, 'Fireworks, Should We See It From The Side or the Bottom? (Movie)'),
(343, 'Fly Me To The Moon'),
(344, 'I\'m Standing On A Million Lives'),
(345, 'By The Grace Of Gods'),
(346, 'Wandering Witch - Journey Of Elaina'),
(347, 'Our Last Crusade Or The Rise Of A New World'),
(348, 'Sleepy Princess In The Demon Castle'),
(349, 'The Day I Became A God'),
(350, 'Noblesse'),
(351, 'Akudama Drive'),
(352, 'Kuma Kuma Kuma Bear'),
(353, 'Closers - Side Blacklambs'),
(354, 'Pet'),
(355, 'The Millionaire Detective'),
(356, 'ShachibatoPresident It\'s Time for Battle'),
(357, 'Her Blue Sky (Movie)'),
(358, 'Liz And The Blue Bird (Movie)'),
(359, 'Dogeza: I tried asking while Kowtowing'),
(360, 'Love Tyrant'),
(361, 'Adachi And Shimamura'),
(362, 'Don\'t Call Us A JUNK GAME'),
(363, 'Ikebukuro West Gate Park'),
(364, 'Iwa-Kakeru! - Climbing Girls'),
(365, 'Talentless Nana'),
(366, 'One Room'),
(367, 'My Roommate Is A Cat'),
(368, 'The Testament of Sister New Devil'),
(369, 'Dusk Maiden Of Amnesia'),
(370, 'Castle Town Dandelion'),
(371, 'Seitokai Yakuinodomo'),
(372, 'Naruto'),
(373, 'Mushoku Tensei- Jobless Reincarnation'),
(374, 'Suppose A Kid From The Last Dungeon Boonies Moved to a Starter Town'),
(375, 'Urasekai Picnic'),
(376, 'Chain Chronicle'),
(377, '2.43 - Seiin Highschool Volleyball Team'),
(378, 'Hortensia Saga'),
(379, 'The Hidden Dungeon Only I Can Enter'),
(380, 'Jujutsu Kaisen'),
(381, 'Redo Of Healer'),
(382, 'King\'s Raid'),
(383, 'Bottom-tier Character Tomozaki'),
(384, 'Kemono Jihen'),
(385, 'Horimiya'),
(386, 'Dr Ramune - Mysterious Disease Specialist'),
(387, 'Beastars'),
(388, 'SK8 : The Infinity'),
(389, 'Kekkai Sensen'),
(390, 'Maid-Sama'),
(391, '3D Girlfriend - Real Girl'),
(392, 'High-Rise Invasion');

-- --------------------------------------------------------

--
-- Table structure for table `watchedmov`
--

CREATE TABLE `watchedmov` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watchedmov`
--

INSERT INTO `watchedmov` (`ID`, `Name`) VALUES
(1, 'Harry Potter (Series)'),
(2, 'The Fault in Our Stars');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `readmanga`
--
ALTER TABLE `readmanga`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `toread`
--
ALTER TABLE `toread`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `towatch`
--
ALTER TABLE `towatch`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `towatchmov`
--
ALTER TABLE `towatchmov`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `watched`
--
ALTER TABLE `watched`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `watchedmov`
--
ALTER TABLE `watchedmov`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `readmanga`
--
ALTER TABLE `readmanga`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `toread`
--
ALTER TABLE `toread`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `towatch`
--
ALTER TABLE `towatch`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `towatchmov`
--
ALTER TABLE `towatchmov`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watched`
--
ALTER TABLE `watched`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `watchedmov`
--
ALTER TABLE `watchedmov`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
