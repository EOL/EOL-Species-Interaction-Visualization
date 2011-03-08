-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2011 at 02:40 PM
-- Server version: 5.0.74
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ed_interactions`
--

-- --------------------------------------------------------

--
-- Table structure for table `bridge_eco`
--

CREATE TABLE IF NOT EXISTS `bridge_eco` (
  `id_eco` int(10) unsigned default NULL,
  `id_tax` int(10) unsigned default NULL,
  `id` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bridge_eco`
--

INSERT INTO `bridge_eco` (`id_eco`, `id_tax`, `id`) VALUES
(1, 274, 1),
(1, 375, 2),
(1, 376, 3),
(1, 377, 4),
(1, 378, 5),
(1, 379, 6),
(1, 380, 7),
(1, 381, 8),
(1, 382, 9),
(2, 386, 10),
(2, 385, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ecosystems`
--

CREATE TABLE IF NOT EXISTS `ecosystems` (
  `description` text,
  `name` varchar(500) default NULL,
  `id` int(10) unsigned NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecosystems`
--

INSERT INTO `ecosystems` (`description`, `name`, `id`) VALUES
('Selected species from a threatened ecosystem in Florida.', 'Florida Everglades', 1),
('Selected pollinators of US crops.', 'Economically Important Pollinators', 2);

-- --------------------------------------------------------

--
-- Table structure for table `interactions`
--

CREATE TABLE IF NOT EXISTS `interactions` (
  `id` int(11) NOT NULL auto_increment,
  `category` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `interactions`
--

INSERT INTO `interactions` (`id`, `category`, `title`) VALUES
(1, 'Habitat', 'provides a nesting site for'),
(2, 'Habitat', 'provides a nursery site for'),
(3, 'Habitat', 'competes for habitat with'),
(4, 'Habitat', 'creates a habitat for'),
(5, 'Habitat', 'provides shelter for'),
(6, 'Habitat', 'visits'),
(7, 'Habitat', 'is found near'),
(8, 'Trophism', 'is a predator of'),
(9, 'Trophism', 'supports the scavenger '),
(10, 'Trophism', 'competes for food with'),
(11, 'Trophism', 'provides nutrients for'),
(12, 'Reproduction', 'disperses seeds for'),
(13, 'Reproduction', 'pollinates '),
(14, 'Parasitism and Disease', 'is a disease vector to'),
(15, 'Parasitism and Disease', 'is a parasite of'),
(16, 'Other', 'unspecified'),
(17, 'Trophism', 'eats the fruit of'),
(18, 'Trophism', 'eats the seeds of'),
(19, 'Habitat', 'grows on'),
(20, 'Trophism', 'take nectar from'),
(21, 'Trophism', 'forage on');

-- --------------------------------------------------------

--
-- Table structure for table `observations`
--

CREATE TABLE IF NOT EXISTS `observations` (
  `id` int(11) NOT NULL auto_increment,
  `sp1_id` int(11) default NULL,
  `sp2_id` int(11) default NULL,
  `inter_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `observations`
--

INSERT INTO `observations` (`id`, `sp1_id`, `sp2_id`, `inter_id`) VALUES
(10, 395, 416, 8),
(11, 408, 459, 8),
(12, 408, 436, 8),
(13, 408, 418, 8),
(14, 408, 398, 8),
(15, 408, 460, 18),
(16, 408, 417, 8),
(17, 408, 450, 8),
(18, 408, 463, 8),
(19, 401, 394, 7),
(20, 401, 447, 7),
(21, 422, 440, 13),
(22, 386, 403, 6),
(23, 386, 412, 6),
(24, 386, 468, 6),
(25, 386, 396, 6),
(26, 458, 421, 13),
(27, 388, 411, 12),
(28, 411, 394, 7),
(29, 385, 413, 13),
(30, 385, 449, 13),
(31, 433, 429, 12),
(32, 409, 394, 7),
(33, 438, 431, 7),
(34, 438, 396, 7),
(35, 387, 410, 13),
(36, 451, 445, 7),
(37, 377, 429, 17),
(38, 376, 400, 8),
(39, 376, 467, 8),
(40, 382, 409, 7),
(41, 434, 375, 7),
(42, 434, 406, 19),
(43, 457, 421, 13),
(44, 384, 447, 7),
(45, 456, 421, 7),
(46, 456, 445, 7),
(47, 391, 459, 8),
(48, 391, 402, 8),
(49, 379, 431, 12),
(50, 379, 462, 12),
(51, 454, 447, 7),
(52, 420, 383, 6),
(53, 420, 466, 13),
(54, 420, 446, 13),
(55, 448, 419, 20),
(56, 448, 465, 8),
(57, 453, 432, 13),
(58, 424, 430, 13),
(59, 424, 456, 13),
(60, 383, 394, 7),
(61, 405, 381, 4),
(62, 397, 454, 13),
(63, 444, 459, 8),
(64, 428, 427, 4),
(65, 426, 374, 21),
(66, 426, 389, 21),
(67, 426, 440, 18),
(68, 426, 452, 21),
(69, 426, 392, 21),
(70, 426, 464, 21),
(71, 426, 423, 21),
(72, 426, 429, 21),
(73, 426, 390, 21),
(74, 426, 415, 21),
(75, 426, 442, 21),
(76, 426, 437, 21),
(77, 435, 409, 7),
(78, 435, 421, 7),
(79, 427, 428, 7),
(80, 381, 443, 8),
(81, 404, 408, 5),
(82, 466, 421, 7),
(83, 414, 449, 8),
(84, 404, 408, 5),
(85, 455, 407, 8),
(86, 394, 381, 4),
(87, 399, 455, 4),
(88, 447, 430, 3),
(89, 378, 429, 17),
(90, 441, 461, 8),
(91, 380, 401, 11),
(92, 380, 383, 11),
(93, 375, 374, 10),
(94, 375, 374, 3);

-- --------------------------------------------------------

--
-- Table structure for table `organisms`
--

CREATE TABLE IF NOT EXISTS `organisms` (
  `id` int(11) NOT NULL auto_increment,
  `com_name` varchar(150) default NULL,
  `sci_name` varchar(150) default NULL,
  `rank` varchar(50) default NULL,
  `group` varchar(50) default NULL,
  `class` varchar(200) default NULL,
  `order` varchar(200) default NULL,
  `super-family` varchar(200) default NULL,
  `family` varchar(200) default NULL,
  `sub-family` varchar(200) default NULL,
  `tribe` varchar(200) default NULL,
  `genus` varchar(200) default NULL,
  `species` varchar(200) default NULL,
  `sub-species` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=469 ;

--
-- Dumping data for table `organisms`
--

INSERT INTO `organisms` (`id`, `com_name`, `sci_name`, `rank`, `group`, `class`, `order`, `super-family`, `family`, `sub-family`, `tribe`, `genus`, `species`, `sub-species`) VALUES
(374, 'Acacia', 'Acacia', 'Genus', '5', NULL, NULL, NULL, 'Fabaceae', 'Mimosoideae', 'Acacieae', 'Acacia', NULL, NULL),
(375, 'American alligator', 'Alligator mississippiensis', 'species', '3', NULL, NULL, NULL, 'Alligatoridae', NULL, NULL, 'Alligator', 'mississippiensis', NULL),
(376, 'American crocodile', 'Crocodylus acutus', 'species', '4', NULL, NULL, NULL, 'Crocodylidae', 'Crocodylinae', NULL, 'Crocodylus', 'acutus', NULL),
(377, 'Ant', 'Crematogaster ashmeadi', 'species', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, 'Crematogaster', 'ashmeadi', NULL),
(378, 'Ant', 'Solenopsis abdita', 'species', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, 'Solenopsis', 'abdita', NULL),
(379, 'Ants', 'Formicidae', 'Family', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, NULL, NULL, NULL),
(380, 'Arbuscular mycorrhiza', 'Entomophthoraceae', 'Family', '6', NULL, NULL, NULL, 'Entomophthoraceae', NULL, NULL, NULL, NULL, NULL),
(381, 'Audubon''s crested caracara', 'Caracara cheriway', 'sub-species', '0', NULL, NULL, NULL, 'Falconidae', 'Polyborinae', NULL, 'Caracara', 'cheriway', NULL),
(382, 'Avon Park harebells', 'Crotalaria avonensis', 'species', '5', NULL, NULL, NULL, 'Fabaceae', 'Faboideae', NULL, 'Crotalaria', 'avonensis', NULL),
(383, 'Beach jacquemontia', 'Jacquemontia reclinata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'Beautiful pawpaw', 'Deeringothamnus pulchellus', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'Bee-flies', 'Bombyliidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'Bees', 'Apoidea', 'Super-family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Beetles', 'Coleoptera', 'Order', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'Birds', 'Aves', 'Class', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'Black mangrove', 'Avicennia', 'Genus', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'Blackbead', 'Pithecellobium', 'Genus', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'Bluetail (blue-tailed) mole skink', 'Eumeces egregius lividus', 'sub-species', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'Brittle Thatch Palm fruit', 'Leucothrinax morrisii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'Burmese python', 'Python molurus bivittatus', 'sub-species', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'Cabbage palm', 'Sabal palmetto', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'Cape Sable seaside sparrow', 'Ammodramus maritimus mirabilis', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'Carter''s mustard', 'Warea carteri', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'Cassius blue butterfly', 'Leptotes cassius theonus', 'sub-species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'Click beetles', 'Elateridae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'Coastal plain willow', 'Salix caroliniana', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'Crabs', 'Callinectes', 'Genus', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'Crenulate lead-plant', 'Amorpha crenulata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'Crickets', 'Gryllidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'Deltoid spurge', 'Chamaesyce deltoidea', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'Drawf live oak', 'Quercus minima', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'Eastern Red Ceder', 'Juniperus virginiana', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'Elderberry', 'Sambucus canadensis', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'Florida apple snail', 'Pomacea paludosa', 'species', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'Florida grasshopper sparrow', 'Ammodramus savannarum floridanus', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'Florida perforate reindeer lichen', 'Cladonia perforata', 'species', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'Four-petal pawpaw', 'Asimina tetramera', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'Fragrant prickly-apple', 'Cereus eriophorus var. fragrans', 'sub-species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'Garber''s spurge', 'Chamaesyce garberi', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'Garrett''s mint', 'Dicerandra christmanii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'Grass moths', 'Pyralidae', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'Grasses', 'Poaceae', 'Family', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'Grasshoppers', 'Acrididae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'Grasshoppers', 'Melanoplus', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'Ground beetles', 'Carabidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'Guava', 'Psidium guajava', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'Halictid bees', 'Halictidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'Highlands scrub hypericum', 'Hypericum cumulicola', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'Honey bees', 'Apis mellifera', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'Indian Mulberry', 'Morinda citrifolia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'Insects', 'Insecta', 'Class', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'Katydids', 'Orchelimum', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'Key deer', 'Odocoileus virginianus clavium', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'Key Largo cotton mouse', 'Peromyscus gossypinus allapaticola', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'Key Largo woodrat', 'Neotoma fl oridana smalli', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'Key tree-cactus', 'Pilosocereus robinii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'Lakela''s mint', 'Dicerandra immaculata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'Lewton''s polygala', 'Polygala lewtonii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'Scrub blazing star', 'Liatris ohlingerae', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'Northern Cardinal', 'Cardinalis cardinalis', 'species', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'Okeechobee gourd', 'Cucurbita okeechobeensis okeechobeensis', 'sub-species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'Papery whitlow-wort', 'Paronychia chartacea', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'Parasitic wasp', 'Braconidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'Pencil Flower', 'Stylosanthes biflora', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'Pigeon wings', 'Clitoria fragrans', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'Pygmy fringe-tree', 'Chionanthus pygmaeus', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'Red imported fire ant', 'Solenopsis invicta', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'Red mangrove', 'Rhizophora', 'Genus', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'Rodents', 'Rodentia', 'Order', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'Sand skink', 'Neoseps reynoldsi', 'species', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'Sandhill oak', 'Quercus inopina', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'Sandlace', 'Polygonella myriophylla', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'Saw palmetto', 'Serenoa repens', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'Schaus swallowtail butterfly', 'Heraclides aristodemus ponceanus', 'sub-species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'Scrub mint', 'Dicerandra frutescens', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'Scudder''s mantis', 'Oligonicella scudderi', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'Short-leaved rosemary', 'Conradina brevifolia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'Silver Thatch Palm fruit', 'Coccothrinax argentata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'Skippers', 'Hesperiidae', 'Family', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'Small''s milkpea', 'Galactia smallii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'Snail kite', 'Rostrhamus sociabilis plumbeus', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'Snakeroot', 'Eryngium cuneifolium', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'Solitary bees', 'Dialictus', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'Solitary bees', 'Augochloropsis', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'Spiders', 'Araneae', 'Family', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'Stargrass', 'Hypoxis', 'Genus', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'Stock Island tree snail', 'Orthalicus reses', 'species', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'Tiny polygala', 'Polygala smallii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'Two-lined spittlebug', 'Prosapia bicincta', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'Wild Dilly fruits', 'Manilkara bahamensis', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'Wild Lime', 'Xanthoxylum fagara', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'Wireweed', 'Polygonella basiramia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'Yellowfin mojarras', 'Gerres', 'species', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'Ziziphus celata', 'Florida ziziphus', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organisms_new`
--

CREATE TABLE IF NOT EXISTS `organisms_new` (
  `id` int(11) NOT NULL auto_increment,
  `com_name` varchar(150) default NULL,
  `sci_name` varchar(150) default NULL,
  `rank` varchar(50) default NULL,
  `group` varchar(50) default NULL,
  `class` varchar(200) default NULL,
  `order` varchar(200) default NULL,
  `super-family` varchar(200) default NULL,
  `family` varchar(200) default NULL,
  `sub-family` varchar(200) default NULL,
  `tribe` varchar(200) default NULL,
  `genus` varchar(200) default NULL,
  `species` varchar(200) default NULL,
  `sub-species` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=469 ;

--
-- Dumping data for table `organisms_new`
--

INSERT INTO `organisms_new` (`id`, `com_name`, `sci_name`, `rank`, `group`, `class`, `order`, `super-family`, `family`, `sub-family`, `tribe`, `genus`, `species`, `sub-species`) VALUES
(374, 'Acacia', 'Acacia', 'Genus', '5', NULL, NULL, NULL, 'Fabaceae', 'Mimosoideae', 'Acacieae', 'Acacia', NULL, NULL),
(375, 'American alligator', 'Alligator mississippiensis', 'species', '3', NULL, NULL, NULL, 'Alligatoridae', NULL, NULL, 'Alligator', 'mississippiensis', NULL),
(376, 'American crocodile', 'Crocodylus acutus', 'species', '4', NULL, NULL, NULL, 'Crocodylidae', 'Crocodylinae', NULL, 'Crocodylus', 'acutus', NULL),
(377, 'Ant', 'Crematogaster ashmeadi', 'species', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, 'Crematogaster', 'ashmeadi', NULL),
(378, 'Ant', 'Solenopsis abdita', 'species', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, 'Solenopsis', 'abdita', NULL),
(379, 'Ants', 'Formicidae', 'Family', '1', NULL, NULL, NULL, 'Formicidae', NULL, NULL, NULL, NULL, NULL),
(380, 'Arbuscular mycorrhiza', 'Entomophthoraceae', 'Family', '6', NULL, NULL, NULL, 'Entomophthoraceae', NULL, NULL, NULL, NULL, NULL),
(381, 'Audubon''s crested caracara', 'Caracara cheriway', 'sub-species', '0', NULL, NULL, NULL, 'Falconidae', 'Polyborinae', NULL, 'Caracara', 'cheriway', NULL),
(382, 'Avon Park harebells', 'Crotalaria avonensis', 'species', '5', NULL, NULL, NULL, 'Fabaceae', 'Faboideae', NULL, 'Crotalaria', 'avonensis', NULL),
(383, 'Beach jacquemontia', 'Jacquemontia reclinata', 'species', '5', NULL, NULL, NULL, 'Convolvulaceae', NULL, NULL, 'Jacquemontia', 'reclinata', NULL),
(384, 'Beautiful pawpaw', 'Deeringothamnus pulchellus', 'species', '5', NULL, NULL, NULL, 'Annonaceae', NULL, NULL, 'Deeringothamnus', 'pulchellus', NULL),
(385, 'Bee-flies', 'Bombyliidae', 'Family', '1', NULL, NULL, NULL, 'Bombyliidae', NULL, NULL, NULL, NULL, NULL),
(386, 'Bees', 'Apoidea', 'Super-family', '1', NULL, NULL, 'Apoidea', NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'Beetles', 'Coleoptera', 'Order', '1', NULL, 'Coleoptera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'Birds', 'Aves', 'Class', '0', 'Aves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'Black mangrove', 'Avicennia', 'Genus', '5', NULL, NULL, NULL, 'Acanthaceae', NULL, NULL, 'Avicennia', NULL, NULL),
(390, 'Blackbead', 'Pithecellobium', 'Genus', '6', NULL, NULL, NULL, 'Fabaceae', NULL, NULL, 'Pithecellobium', NULL, NULL),
(391, 'Bluetail (blue-tailed) mole skink', 'Eumeces egregius lividus', 'sub-species', '4', NULL, NULL, NULL, 'Scincidae', NULL, NULL, 'Eumeces', 'egregius', 'lividus'),
(392, 'Brittle Thatch Palm fruit', 'Leucothrinax morrisii', 'species', '5', NULL, NULL, NULL, 'Arecaceae', 'Coryphoideae', 'Cryosophileae', 'Leucothrinax', 'morrisii', NULL),
(393, 'Burmese python', 'Python molurus bivittatus', 'sub-species', '4', NULL, NULL, NULL, 'Pythonidae', NULL, NULL, 'Python', 'molurus', 'bivittatus'),
(394, 'Cabbage palm', 'Sabal palmetto', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Sabal', 'palmetto', NULL),
(395, 'Cape Sable seaside sparrow', 'Ammodramus maritimus mirabilis', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Ammodramus', 'maritimus', 'mirabilis'),
(396, 'Carter''s mustard', 'Warea carteri', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Warea', 'carteri', NULL),
(397, 'Cassius blue butterfly', 'Leptotes cassius theonus', 'sub-species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Leptotes', 'cassius', 'theonus'),
(398, 'Click beetles', 'Elateridae', 'Family', '1', NULL, NULL, NULL, 'Elateridae', NULL, NULL, NULL, NULL, NULL),
(399, 'Coastal plain willow', 'Salix caroliniana', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'Crabs', 'Callinectes', 'Genus', '6', NULL, NULL, NULL, NULL, NULL, NULL, 'Salix', 'caroliniana', NULL),
(401, 'Crenulate lead-plant', 'Amorpha crenulata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Amorpha', 'crenulata', NULL),
(402, 'Crickets', 'Gryllidae', 'Family', '1', NULL, NULL, NULL, 'Gryllidae', NULL, NULL, NULL, NULL, NULL),
(403, 'Deltoid spurge', 'Chamaesyce deltoidea', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Chamaesyce', 'deltoidea', NULL),
(404, 'Drawf live oak', 'Quercus minima', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Quercus', 'minima', NULL),
(405, 'Eastern Red Ceder', 'Juniperus virginiana', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Juniperus', 'virginiana', NULL),
(406, 'Elderberry', 'Sambucus canadensis', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Sambucus', 'canadensis', NULL),
(407, 'Florida apple snail', 'Pomacea paludosa', 'species', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Pomacea', 'paludosa', NULL),
(408, 'Florida grasshopper sparrow', 'Ammodramus savannarum floridanus', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Ammodramus', 'savannarum', 'floridanus'),
(409, 'Florida perforate reindeer lichen', 'Cladonia perforata', 'species', '6', NULL, NULL, NULL, NULL, NULL, NULL, 'Cladonia', 'perforata', NULL),
(410, 'Four-petal pawpaw', 'Asimina tetramera', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Asimina', 'tetramera', NULL),
(411, 'Fragrant prickly-apple', 'Cereus eriophorus var. fragrans', 'sub-species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Cereus', 'eriophorus', 'fragrans'),
(412, 'Garber''s spurge', 'Chamaesyce garberi', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Chamaesyce', 'garberi', NULL),
(413, 'Garrett''s mint', 'Dicerandra christmanii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Dicerandra', 'christmanii', NULL),
(414, 'Grass moths', 'Pyralidae', 'Family', '1', NULL, NULL, NULL, 'Pyralidae', NULL, NULL, NULL, NULL, NULL),
(415, 'Grasses', 'Poaceae', 'Family', '6', NULL, NULL, NULL, 'Poaceae', NULL, NULL, NULL, NULL, NULL),
(416, 'Grasshoppers', 'Acrididae', 'Family', '1', NULL, NULL, NULL, 'Acrididae', NULL, NULL, NULL, NULL, NULL),
(417, 'Grasshoppers', 'Melanoplus', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Melanoplus', NULL, NULL),
(418, 'Ground beetles', 'Carabidae', 'Family', '1', NULL, NULL, NULL, 'Carabidae', NULL, NULL, NULL, NULL, NULL),
(419, 'Guava', 'Psidium guajava', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Psidium', 'guajava', NULL),
(420, 'Halictid bees', 'Halictidae', 'Family', '1', NULL, NULL, NULL, 'Halictidae', NULL, NULL, NULL, NULL, NULL),
(421, 'Highlands scrub hypericum', 'Hypericum cumulicola', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Hypericum', 'cumulicola', NULL),
(422, 'Honey bees', 'Apis mellifera', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Apis', 'mellifera', NULL),
(423, 'Indian Mulberry', 'Morinda citrifolia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Morinda', 'citrifolia', NULL),
(424, 'Insects', 'Insecta', 'Class', '1', 'Insecta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'Katydids', 'Orchelimum', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Orchelimum', NULL, NULL),
(426, 'Key deer', 'Odocoileus virginianus clavium', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Odocoileus', 'virginianus', 'clavium'),
(427, 'Key Largo cotton mouse', 'Peromyscus gossypinus allapaticola', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Peromyscus', 'gossypinus', 'allapaticola'),
(428, 'Key Largo woodrat', 'Neotoma floridana smalli', 'sub-species', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'Neotoma', 'floridana', 'smalli'),
(429, 'Key tree-cactus', 'Pilosocereus robinii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Pilosocereus', 'robinii', NULL),
(430, 'Lakela''s mint', 'Dicerandra immaculata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Dicerandra', 'immaculata', NULL),
(431, 'Lewton''s polygala', 'Polygala lewtonii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Polygala', 'lewtonii', NULL),
(432, 'Scrub blazing star', 'Liatris ohlingerae', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Liatris', 'ohlingerae', NULL),
(433, 'Northern Cardinal', 'Cardinalis cardinalis', 'species', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Cardinalis', 'cardinalis', NULL),
(434, 'Okeechobee gourd', 'Cucurbita okeechobeensis okeechobeensis', 'sub-species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Cucurbita', 'okeechobeensis', 'okeechobeensis'),
(435, 'Papery whitlow-wort', 'Paronychia chartacea', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Paronychia', 'chartacea', NULL),
(436, 'Parasitic wasp', 'Braconidae', 'Family', '1', NULL, NULL, NULL, 'Braconidae', NULL, NULL, NULL, NULL, NULL),
(437, 'Pencil Flower', 'Stylosanthes biflora', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Stylosanthes', 'biflora', NULL),
(438, 'Pigeon wings', 'Clitoria fragrans', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Clitoria', 'fragrans', NULL),
(440, 'Pygmy fringe-tree', 'Chionanthus pygmaeus', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Chionanthus', 'pygmaeus', NULL),
(441, 'Red imported fire ant', 'Solenopsis invicta', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Solenopsis', 'invicta', NULL),
(442, 'Red mangrove', 'Rhizophora', 'Genus', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'Rodents', 'Rodentia', 'Order', '2', NULL, 'Rodentia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'Sand skink', 'Neoseps reynoldsi', 'species', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'Neoseps', 'reynoldsi', NULL),
(445, 'Sandhill oak', 'Quercus inopina', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Quercus', 'inopina', NULL),
(446, 'Sandlace', 'Polygonella myriophylla', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Polygonella', 'myriophylla', NULL),
(447, 'Saw palmetto', 'Serenoa repens', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Serenoa', 'repens', NULL),
(448, 'Schaus swallowtail butterfly', 'Heraclides aristodemus ponceanus', 'sub-species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Heraclides', 'aristodemus', 'ponceanus'),
(449, 'Scrub mint', 'Dicerandra frutescens', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Dicerandra', 'frutescens', NULL),
(450, 'Scudder''s mantis', 'Oligonicella scudderi', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Oligonicella', 'scudderi', NULL),
(451, 'Short-leaved rosemary', 'Conradina brevifolia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Conradina', 'brevifolia', NULL),
(452, 'Silver Thatch Palm fruit', 'Coccothrinax argentata', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Coccothrinax', 'argentata', NULL),
(453, 'Skippers', 'Hesperiidae', 'Family', '1', NULL, NULL, NULL, 'Hesperiidae', NULL, NULL, NULL, NULL, NULL),
(454, 'Small''s milkpea', 'Galactia smallii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Galactia', 'smallii', NULL),
(455, 'Snail kite', 'Rostrhamus sociabilis plumbeus', 'sub-species', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Rostrhamus', 'sociabilis', 'plumbeus'),
(456, 'Snakeroot', 'Eryngium cuneifolium', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Eryngium', 'cuneifolium', NULL),
(457, 'Solitary bees', 'Dialictus', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Dialictus', NULL, NULL),
(458, 'Solitary bees', 'Augochloropsis', 'Genus', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Augochloropsis', NULL, NULL),
(459, 'Spiders', 'Araneae', 'Family', '6', NULL, NULL, NULL, 'Araneae', NULL, NULL, NULL, NULL, NULL),
(460, 'Stargrass', 'Hypoxis', 'Genus', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Hypoxis', NULL, NULL),
(461, 'Stock Island tree snail', 'Orthalicus reses', 'species', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'Orthalicus', 'reses', NULL),
(462, 'Tiny polygala', 'Polygala smallii', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Polygala', 'smallii', NULL),
(463, 'Two-lined spittlebug', 'Prosapia bicincta', 'species', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'Prosapia', 'bicincta', NULL),
(464, 'Wild Dilly fruits', 'Manilkara bahamensis', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Manilkara', 'bahamensis', NULL),
(465, 'Wild Lime', 'Xanthoxylum fagara', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Xanthoxylum', 'fagara', NULL),
(466, 'Wireweed', 'Polygonella basiramia', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Polygonella', 'basiramia', NULL),
(467, 'Yellowfin mojarras', 'Gerres', 'species', '6', NULL, NULL, NULL, NULL, NULL, NULL, 'Gerres', NULL, NULL),
(468, 'Ziziphus celata', 'Florida ziziphus', 'species', '5', NULL, NULL, NULL, NULL, NULL, NULL, 'Florida', 'ziziphus', NULL);
