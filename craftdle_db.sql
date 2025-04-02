-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 02. 16:57
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `craftdle_db`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `goal` int(11) NOT NULL,
  `is_secret` tinyint(1) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `description`, `icon`, `goal`, `is_secret`, `parent`, `event`, `target`) VALUES
(1, 'Welcome to the Database!', 'Create a Craftdle account', 'Welcome.png', 1, 0, NULL, 'regist', 'regist'),
(2, 'The Collector', 'Collect 100 items', 'The_Collector.png', 100, 0, NULL, 'collect', 'any'),
(3, 'Here\'s Johnny!!!', 'Collect all axes', 'Johnny.png', 6, 0, NULL, 'collect', 'axe'),
(4, 'The First of All', 'Be the first to solve the daily riddle', 'First_of_All.png', 1, 0, NULL, 'solve', 'number1'),
(5, 'Still a Beginner?', 'Play 25 tutorial game', 'Beginner.png', 25, 0, NULL, 'solve', 'Tutorial'),
(6, 'The Master Chef', 'Solve a food riddle in resource mode', 'Cook.png', 1, 0, NULL, 'solve', 'food'),
(7, 'Cheater?!', 'Solve a riddle with only one guess', 'Cheat.png', 1, 0, NULL, 'solve', 'zero'),
(8, 'Wish I Had an Angel', 'Craft the Guideian Angel logo', 'GA.png', 1, 0, NULL, 'guess', 'ga'),
(9, 'Casual Player I', 'Solve 5 Classic games', 'Classic.png', 5, 0, NULL, 'solve', 'Classic'),
(10, 'Casual Player II', 'Solve 10 Classic games', 'Classic.png', 10, 0, 9, 'solve', 'Classic'),
(11, 'Casual Player III', 'Solve 25 Classic games', 'Classic.png', 25, 0, 10, 'solve', 'Classic'),
(12, 'Casual Player IV', 'Solve 50 Classic games', 'Classic.png', 50, 0, 11, 'solve', 'Classic'),
(13, 'Casual Player V', 'Solve 100 Classic games', 'Classic.png', 100, 0, 12, 'solve', 'Classic'),
(14, 'Daily Challenger I', 'Complete 5 Daily games', 'Daily.png', 5, 0, NULL, 'solve', 'Daily'),
(15, 'Daily Challenger II', 'Complete 10 Daily games', 'Daily.png', 10, 0, 14, 'solve', 'Daily'),
(16, 'Daily Challenger III', 'Complete 25 Daily games', 'Daily.png', 25, 0, 15, 'solve', 'Daily'),
(17, 'Daily Challenger IV', 'Complete 50 Daily games', 'Daily.png', 50, 0, 16, 'solve', 'Daily'),
(18, 'Daily Challenger V', 'Complete 100 Daily games', 'Daily.png', 100, 0, 17, 'solve', 'Daily'),
(19, 'Master of All I', 'Solve 5 All in One games', 'All_in_One.png', 5, 0, NULL, 'solve', 'All in One'),
(20, 'Master of All II', 'Solve 10 All in One games', 'All_in_One.png', 10, 0, 19, 'solve', 'All in One'),
(21, 'Master of All III', 'Solve 25 All in One games', 'All_in_One.png', 25, 0, 20, 'solve', 'All in One'),
(22, 'Master of All IV', 'Solve 50 All in One games', 'All_in_One.png', 50, 0, 21, 'solve', 'All in One'),
(23, 'Master of All V', 'Solve 100 All in One games', 'All_in_One.png', 100, 0, 22, 'solve', 'All in One'),
(24, 'Pocket Crafter I', 'Solve 5 Pocket games', 'Pocket.png', 5, 0, NULL, 'solve', 'Pocket'),
(25, 'Pocket Crafter II', 'Solve 10 Pocket games', 'Pocket.png', 10, 0, 24, 'solve', 'Pocket'),
(26, 'Pocket Crafter III', 'Solve 25 Pocket games', 'Pocket.png', 25, 0, 25, 'solve', 'Pocket'),
(27, 'Pocket Crafter IV', 'Solve 50 Pocket games', 'Pocket.png', 50, 0, 26, 'solve', 'Pocket'),
(28, 'Pocket Crafter V', 'Solve 100 Pocket games', 'Pocket.png', 100, 0, 27, 'solve', 'Pocket'),
(29, 'Resourceful I', 'Solve 5 Resource games', 'Resource.png', 5, 0, NULL, 'solve', 'Resource'),
(30, 'Resourceful II', 'Solve 10 Resource games', 'Resource.png', 10, 0, 29, 'solve', 'Resource'),
(31, 'Resourceful III', 'Solve 25 Resource games', 'Resource.png', 25, 0, 30, 'solve', 'Resource'),
(32, 'Resourceful IV', 'Solve 50 Resource games', 'Resource.png', 50, 0, 31, 'solve', 'Resource'),
(33, 'Resourceful V', 'Solve 100 Resource games', 'Resource.png', 100, 0, 32, 'solve', 'Resource'),
(34, 'Survivor I', 'Solve 5 Hardcore games', 'Hardcore.png', 5, 0, NULL, 'solve', 'Hardcore'),
(35, 'Survivor II', 'Solve 10 Hardcore games', 'Hardcore.png', 10, 0, 34, 'solve', 'Hardcore'),
(36, 'Survivor III', 'Solve 25 Hardcore games', 'Hardcore.png', 25, 0, 35, 'solve', 'Hardcore'),
(37, 'Survivor IV', 'Solve 50 Hardcore games', 'Hardcore.png', 50, 0, 36, 'solve', 'Hardcore'),
(38, 'Survivor V', 'Solve 100 Hardcore games', 'Hardcore.png', 100, 0, 37, 'solve', 'Hardcore'),
(39, 'The Armorer', 'Solve a Blast Furnace riddle', 'Blast_Furnace.png', 1, 0, NULL, 'craft', 'blast_furnace'),
(40, 'The Butcher', 'Solve a Smoker riddle', 'Smoker.png', 1, 0, NULL, 'craft', 'smoker'),
(41, 'The Cartographer', 'Solve a Cartography Table riddle', 'Cartography_Table.png', 1, 0, NULL, 'craft', 'cartography_table'),
(42, 'The Cleric', 'Solve a Brewing Stand riddle', 'Brewing_Stand.png', 1, 0, NULL, 'craft', 'brewing_stand'),
(43, 'The Farmer', 'Solve a Composter riddle', 'Composter.png', 1, 0, NULL, 'craft', 'composter'),
(44, 'The Fisherman', 'Solve a Barrel riddle', 'Barrel.png', 1, 0, NULL, 'craft', 'barrel'),
(45, 'The Fletcher', 'Solve a Fletching Table riddle', 'Fletching_Table.png', 1, 0, NULL, 'craft', 'fletching_table'),
(46, 'The Leatherworker', 'Solve a Cauldron riddle', 'Cauldron.png', 1, 0, NULL, 'craft', 'cauldron'),
(47, 'The Librarian', 'Solve a Lectern riddle', 'Lectern.png', 1, 0, NULL, 'craft', 'lectern'),
(48, 'The Mason', 'Solve a Stonecutter riddle', 'Stonecutter.png', 1, 0, NULL, 'craft', 'stonecutter'),
(49, 'The Shepherd', 'Solve a Loom riddle', 'Loom.png', 1, 0, NULL, 'craft', 'loom'),
(50, 'The Toolsmith', 'Solve a Smithing Table riddle', 'Smithing_Table.png', 1, 0, NULL, 'craft', 'smithing_table'),
(51, 'The Weaponsmith', 'Solve a Grindstone riddle', 'Grindstone.png', 1, 0, NULL, 'craft', 'grindstone'),
(52, 'Birds of a Feather Flock Together', 'Solve a riddle where you guessed 5 items that made of chicken', 'Feather.png', 1, 0, NULL, 'solve', 'chicken'),
(53, 'End of the Line', 'Watch the credits', 'Eye.png', 1, 0, NULL, 'credits', 'watched'),
(54, 'A Whole Year', 'Have a 365 day streak', 'Fire.png', 1, 0, NULL, 'solve', '365'),
(55, 'The First Riddle of the Year', 'Solve a riddle in the first hour of the year!', 'Firework.png', 1, 0, NULL, 'solve', 'first'),
(56, 'Wax That Copper', 'Solve a riddle with only waxed copper guesses except one', 'Wax.png', 1, 0, NULL, 'solve', 'copper');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `collections`
--

INSERT INTO `collections` (`id`, `item_id`, `name`, `src`) VALUES
(1, 'oak_wood', 'Oak Wood', 'Oak_Wood.png'),
(2, 'stripped_oak_wood', 'Stripped Oak Wood', 'Stripped_Oak_Wood.png'),
(3, 'oak_planks', 'Oak Planks', 'Oak_Planks.png'),
(4, 'oak_stairs', 'Oak Stairs', 'Oak_Stairs.png'),
(5, 'oak_slab', 'Oak Slab', 'Oak_Slab.png'),
(6, 'oak_fence', 'Oak Fence', 'Oak_Fence.png'),
(7, 'oak_fence_gate', 'Oak Fence Gate', 'Oak_Fence_Gate.png'),
(8, 'oak_door', 'Oak Door', 'Oak_Door.png'),
(9, 'oak_trapdoor', 'Oak Trapdoor', 'Oak_Trapdoor.png'),
(10, 'oak_pressure_plate', 'Oak Pressure Plate', 'Oak_Pressure_Plate.png'),
(11, 'oak_button', 'Oak Button', 'Oak_Button.png'),
(12, 'spruce_wood', 'Spruce Wood', 'Spruce_Wood.png'),
(13, 'stripped_spruce_wood', 'Stripped Spruce Wood', 'Stripped_Spruce_Wood.png'),
(14, 'spruce_planks', 'Spruce Planks', 'Spruce_Planks.png'),
(15, 'spruce_stairs', 'Spruce Stairs', 'Spruce_Stairs.png'),
(16, 'spruce_slab', 'Spruce Slab', 'Spruce_Slab.png'),
(17, 'spruce_fence', 'Spruce Fence', 'Spruce_Fence.png'),
(18, 'spruce_fence_gate', 'Spruce Fence Gate', 'Spruce_Fence_Gate.png'),
(19, 'spruce_door', 'Spruce Door', 'Spruce_Door.png'),
(20, 'spruce_trapdoor', 'Spruce Trapdoor', 'Spruce_Trapdoor.png'),
(21, 'spruce_pressure_plate', 'Spruce Pressure Plate', 'Spruce_Pressure_Plate.png'),
(22, 'spruce_button', 'Spruce Button', 'Spruce_Button.png'),
(23, 'birch_wood', 'Birch Wood', 'Birch_Wood.png'),
(24, 'stripped_birch_wood', 'Stripped Birch Wood', 'Stripped_Birch_Wood.png'),
(25, 'birch_planks', 'Birch Planks', 'Birch_Planks.png'),
(26, 'birch_stairs', 'Birch Stairs', 'Birch_Stairs.png'),
(27, 'birch_slab', 'Birch Slab', 'Birch_Slab.png'),
(28, 'birch_fence', 'Birch Fence', 'Birch_Fence.png'),
(29, 'birch_fence_gate', 'Birch Fence Gate', 'Birch_Fence_Gate.png'),
(30, 'birch_door', 'Birch Door', 'Birch_Door.png'),
(31, 'birch_trapdoor', 'Birch Trapdoor', 'Birch_Trapdoor.png'),
(32, 'birch_pressure_plate', 'Birch Pressure Plate', 'Birch_Pressure_Plate.png'),
(33, 'birch_button', 'Birch Button', 'Birch_Button.png'),
(34, 'jungle_wood', 'Jungle Wood', 'Jungle_Wood.png'),
(35, 'stripped_jungle_wood', 'Stripped Jungle Wood', 'Stripped_Jungle_Wood.png'),
(36, 'jungle_planks', 'Jungle Planks', 'Jungle_Planks.png'),
(37, 'jungle_stairs', 'Jungle Stairs', 'Jungle_Stairs.png'),
(38, 'jungle_slab', 'Jungle Slab', 'Jungle_Slab.png'),
(39, 'jungle_fence', 'Jungle Fence', 'Jungle_Fence.png'),
(40, 'jungle_fence_gate', 'Jungle Fence Gate', 'Jungle_Fence_Gate.png'),
(41, 'jungle_door', 'Jungle Door', 'Jungle_Door.png'),
(42, 'jungle_trapdoor', 'Jungle Trapdoor', 'Jungle_Trapdoor.png'),
(43, 'jungle_pressure_plate', 'Jungle Pressure Plate', 'Jungle_Pressure_Plate.png'),
(44, 'jungle_button', 'Jungle Button', 'Jungle_Button.png'),
(45, 'acacia_wood', 'Acacia Wood', 'Acacia_Wood.png'),
(46, 'stripped_acacia_wood', 'Stripped Acacia Wood', 'Stripped_Acacia_Wood.png'),
(47, 'acacia_planks', 'Acacia Planks', 'Acacia_Planks.png'),
(48, 'acacia_stairs', 'Acacia Stairs', 'Acacia_Stairs.png'),
(49, 'acacia_slab', 'Acacia Slab', 'Acacia_Slab.png'),
(50, 'acacia_fence', 'Acacia Fence', 'Acacia_Fence.png'),
(51, 'acacia_fence_gate', 'Acacia Fence Gate', 'Acacia_Fence_Gate.png'),
(52, 'acacia_door', 'Acacia Door', 'Acacia_Door.png'),
(53, 'acacia_trapdoor', 'Acacia Trapdoor', 'Acacia_Trapdoor.png'),
(54, 'acacia_pressure_plate', 'Acacia Pressure Plate', 'Acacia_Pressure_Plate.png'),
(55, 'acacia_button', 'Acacia Button', 'Acacia_Button.png'),
(56, 'dark_oak_wood', 'Dark Oak Wood', 'Dark_Oak_Wood.png'),
(57, 'stripped_dark_oak_wood', 'Stripped Dark Oak Wood', 'Stripped_Dark_Oak_Wood.png'),
(58, 'dark_oak_planks', 'Dark Oak Planks', 'Dark_Oak_Planks.png'),
(59, 'dark_oak_stairs', 'Dark Oak Stairs', 'Dark_Oak_Stairs.png'),
(60, 'dark_oak_slab', 'Dark Oak Slab', 'Dark_Oak_Slab.png'),
(61, 'dark_oak_fence', 'Dark Oak Fence', 'Dark_Oak_Fence.png'),
(62, 'dark_oak_fence_gate', 'Dark Oak Fence Gate', 'Dark_Oak_Fence_Gate.png'),
(63, 'dark_oak_door', 'Dark Oak Door', 'Dark_Oak_Door.png'),
(64, 'dark_oak_trapdoor', 'Dark Oak Trapdoor', 'Dark_Oak_Trapdoor.png'),
(65, 'dark_oak_pressure_plate', 'Dark Oak Pressure Plate', 'Dark_Oak_Pressure_Plate.png'),
(66, 'dark_oak_button', 'Dark Oak Button', 'Dark_Oak_Button.png'),
(67, 'mangrove_wood', 'Mangrove Wood', 'Mangrove_Wood.png'),
(68, 'stripped_mangrove_wood', 'Stripped Mangrove Wood', 'Stripped_Mangrove_Wood.png'),
(69, 'mangrove_planks', 'Mangrove Planks', 'Mangrove_Planks.png'),
(70, 'mangrove_stairs', 'Mangrove Stairs', 'Mangrove_Stairs.png'),
(71, 'mangrove_slab', 'Mangrove Slab', 'Mangrove_Slab.png'),
(72, 'mangrove_fence', 'Mangrove Fence', 'Mangrove_Fence.png'),
(73, 'mangrove_fence_gate', 'Mangrove Fence Gate', 'Mangrove_Fence_Gate.png'),
(74, 'mangrove_door', 'Mangrove Door', 'Mangrove_Door.png'),
(75, 'mangrove_trapdoor', 'Mangrove Trapdoor', 'Mangrove_Trapdoor.png'),
(76, 'mangrove_pressure_plate', 'Mangrove Pressure Plate', 'Mangrove_Pressure_Plate.png'),
(77, 'mangrove_button', 'Mangrove Button', 'Mangrove_Button.png'),
(78, 'cherry_wood', 'Cherry Wood', 'Cherry_Wood.png'),
(79, 'stripped_cherry_wood', 'Stripped Cherry Wood', 'Stripped_Cherry_Wood.png'),
(80, 'cherry_planks', 'Cherry Planks', 'Cherry_Planks.png'),
(81, 'cherry_stairs', 'Cherry Stairs', 'Cherry_Stairs.png'),
(82, 'cherry_slab', 'Cherry Slab', 'Cherry_Slab.png'),
(83, 'cherry_fence', 'Cherry Fence', 'Cherry_Fence.png'),
(84, 'cherry_fence_gate', 'Cherry Fence Gate', 'Cherry_Fence_Gate.png'),
(85, 'cherry_door', 'Cherry Door', 'Cherry_Door.png'),
(86, 'cherry_trapdoor', 'Cherry Trapdoor', 'Cherry_Trapdoor.png'),
(87, 'cherry_pressure_plate', 'Cherry Pressure Plate', 'Cherry_Pressure_Plate.png'),
(88, 'cherry_button', 'Cherry Button', 'Cherry_Button.png'),
(89, 'pale_oak_wood', 'Pale Oak Wood', 'Pale_Oak_Wood.png'),
(90, 'stripped_pale_oak_wood', 'Stripped Pale Oak Wood', 'Stripped_Pale_Oak_Wood.png'),
(91, 'pale_oak_planks', 'Pale Oak Planks', 'Pale_Oak_Planks.png'),
(92, 'pale_oak_stairs', 'Pale Oak Stairs', 'Pale_Oak_Stairs.png'),
(93, 'pale_oak_slab', 'Pale Oak Slab', 'Pale_Oak_Slab.png'),
(94, 'pale_oak_fence', 'Pale Oak Fence', 'Pale_Oak_Fence.png'),
(95, 'pale_oak_fence_gate', 'Pale Oak Fence Gate', 'Pale_Oak_Fence_Gate.png'),
(96, 'pale_oak_door', 'Pale Oak Door', 'Pale_Oak_Door.png'),
(97, 'pale_oak_trapdoor', 'Pale Oak Trapdoor', 'Pale_Oak_Trapdoor.png'),
(98, 'pale_oak_pressure_plate', 'Pale Oak Pressure Plate', 'Pale_Oak_Pressure_Plate.png'),
(99, 'pale_oak_button', 'Pale Oak Button', 'Pale_Oak_Button.png'),
(100, 'block_of_bamboo', 'Block of Bamboo', 'Block_of_Bamboo.png'),
(101, 'bamboo_planks', 'Bamboo Planks', 'Bamboo_Planks.png'),
(102, 'bamboo_mosaic', 'Bamboo Mosaic', 'Bamboo_Mosaic.png'),
(103, 'bamboo_stairs', 'Bamboo Stairs', 'Bamboo_Stairs.png'),
(104, 'bamboo_mosaic_stairs', 'Bamboo Mosaic Stairs', 'Bamboo_Mosaic_Stairs.png'),
(105, 'bamboo_slab', 'Bamboo Slab', 'Bamboo_Slab.png'),
(106, 'bamboo_mosaic_slab', 'Bamboo Mosaic Slab', 'Bamboo_Mosaic_Slab.png'),
(107, 'bamboo_fence', 'Bamboo Fence', 'Bamboo_Fence.png'),
(108, 'bamboo_fence_gate', 'Bamboo Fence Gate', 'Bamboo_Fence_Gate.png'),
(109, 'bamboo_door', 'Bamboo Door', 'Bamboo_Door.png'),
(110, 'bamboo_trapdoor', 'Bamboo Trapdoor', 'Bamboo_Trapdoor.png'),
(111, 'bamboo_pressure_plate', 'Bamboo Pressure Plate', 'Bamboo_Pressure_Plate.png'),
(112, 'bamboo_button', 'Bamboo Button', 'Bamboo_Button.png'),
(113, 'crimson_hyphae', 'Crimson Hyphae', 'Crimson_Hyphae.png'),
(114, 'stripped_crimson_hyphae', 'Stripped Crimson Hyphae', 'Stripped_Crimson_Hyphae.png'),
(115, 'crimson_planks', 'Crimson Planks', 'Crimson_Planks.png'),
(116, 'crimson_stairs', 'Crimson Stairs', 'Crimson_Stairs.png'),
(117, 'crimson_slab', 'Crimson Slab', 'Crimson_Slab.png'),
(118, 'crimson_fence', 'Crimson Fence', 'Crimson_Fence.png'),
(119, 'crimson_fence_gate', 'Crimson Fence Gate', 'Crimson_Fence_Gate.png'),
(120, 'crimson_door', 'Crimson Door', 'Crimson_Door.png'),
(121, 'crimson_trapdoor', 'Crimson Trapdoor', 'Crimson_Trapdoor.png'),
(122, 'crimson_pressure_plate', 'Crimson Pressure Plate', 'Crimson_Pressure_Plate.png'),
(123, 'crimson_button', 'Crimson Button', 'Crimson_Button.png'),
(124, 'warped_hyphae', 'Warped Hyphae', 'Warped_Hyphae.png'),
(125, 'stripped_warped_hyphae', 'Stripped Warped Hyphae', 'Stripped_Warped_Hyphae.png'),
(126, 'warped_planks', 'Warped Planks', 'Warped_Planks.png'),
(127, 'warped_stairs', 'Warped Stairs', 'Warped_Stairs.png'),
(128, 'warped_slab', 'Warped Slab', 'Warped_Slab.png'),
(129, 'warped_fence', 'Warped Fence', 'Warped_Fence.png'),
(130, 'warped_fence_gate', 'Warped Fence Gate', 'Warped_Fence_Gate.png'),
(131, 'warped_door', 'Warped Door', 'Warped_Door.png'),
(132, 'warped_trapdoor', 'Warped Trapdoor', 'Warped_Trapdoor.png'),
(133, 'warped_pressure_plate', 'Warped Pressure Plate', 'Warped_Pressure_Plate.png'),
(134, 'warped_button', 'Warped Button', 'Warped_Button.png'),
(135, 'stone_stairs', 'Stone Stairs', 'Stone_Stairs.png'),
(136, 'stone_slab', 'Stone Slab', 'Stone_Slab.png'),
(137, 'stone_pressure_plate', 'Stone Pressure Plate', 'Stone_Pressure_Plate.png'),
(138, 'stone_button', 'Stone Button', 'Stone_Button.png'),
(139, 'cobblestone_stairs', 'Cobblestone Stairs', 'Cobblestone_Stairs.png'),
(140, 'cobblestone_slab', 'Cobblestone Slab', 'Cobblestone_Slab.png'),
(141, 'cobblestone_wall', 'Cobblestone Wall', 'Cobblestone_Wall.png'),
(142, 'mossy_cobblestone', 'Mossy Cobblestone', 'Mossy_Cobblestone.png'),
(143, 'mossy_cobblestone_stairs', 'Mossy Cobblestone Stairs', 'Mossy_Cobblestone_Stairs.png'),
(144, 'mossy_cobblestone_slab', 'Mossy Cobblestone Slab', 'Mossy_Cobblestone_Slab.png'),
(145, 'mossy_cobblestone_wall', 'Mossy Cobblestone Wall', 'Mossy_Cobblestone_Wall.png'),
(146, 'smooth_stone_slab', 'Smooth Stone Slab', 'Smooth_Stone_Slab.png'),
(147, 'stone_bricks', 'Stone Bricks', 'Stone_Bricks.png'),
(148, 'stone_brick_stairs', 'Stone Brick Stairs', 'Stone_Brick_Stairs.png'),
(149, 'stone_brick_slab', 'Stone Brick Slab', 'Stone_Brick_Slab.png'),
(150, 'stone_brick_wall', 'Stone Brick Wall', 'Stone_Brick_Wall.png'),
(151, 'chiseled_stone_bricks', 'Chiseled Stone Bricks', 'Chiseled_Stone_Bricks.png'),
(152, 'mossy_stone_bricks', 'Mossy Stone Bricks', 'Mossy_Stone_Bricks.png'),
(153, 'mossy_stone_brick_stairs', 'Mossy Stone Brick Stairs', 'Mossy_Stone_Brick_Stairs.png'),
(154, 'mossy_stone_brick_slab', 'Mossy Stone Brick Slab', 'Mossy_Stone_Brick_Slab.png'),
(155, 'mossy_stone_brick_wall', 'Mossy Stone Brick Wall', 'Mossy_Stone_Brick_Wall.png'),
(156, 'granite', 'Granite', 'Granite.png'),
(157, 'granite_stairs', 'Granite Stairs', 'Granite_Stairs.png'),
(158, 'granite_slab', 'Granite Slab', 'Granite_Slab.png'),
(159, 'granite_wall', 'Granite Wall', 'Granite_Wall.png'),
(160, 'polished_granite', 'Polished Granite', 'Polished_Granite.png'),
(161, 'polished_granite_stairs', 'Polished Granite Stairs', 'Polished_Granite_Stairs.png'),
(162, 'polished_granite_slab', 'Polished Granite Slab', 'Polished_Granite_Slab.png'),
(163, 'diorite', 'Diorite', 'Diorite.png'),
(164, 'diorite_stairs', 'Diorite Stairs', 'Diorite_Stairs.png'),
(165, 'diorite_slab', 'Diorite Slab', 'Diorite_Slab.png'),
(166, 'diorite_wall', 'Diorite Wall', 'Diorite_Wall.png'),
(167, 'polished_diorite', 'Polished Diorite', 'Polished_Diorite.png'),
(168, 'polished_diorite_stairs', 'Polished Diorite Stairs', 'Polished_Diorite_Stairs.png'),
(169, 'polished_diorite_slab', 'Polished Diorite Slab', 'Polished_Diorite_Slab.png'),
(170, 'andesite', 'Andesite', 'Andesite.png'),
(171, 'andesite_slab', 'Andesite Slab', 'Andesite_Slab.png'),
(172, 'andesite_stairs', 'Andesite Stairs', 'Andesite_Stairs.png'),
(173, 'andesite_wall', 'Andesite Wall', 'Andesite_Wall.png'),
(174, 'polished_andesite', 'Polished Andesite', 'Polished_Andesite.png'),
(175, 'polished_andesite_stairs', 'Polished Andesite Stairs', 'Polished_Andesite_Stairs.png'),
(176, 'polished_andesite_slab', 'Polished Andesite Slab', 'Polished_Andesite_Slab.png'),
(177, 'cobbled_deepslate_stairs', 'Cobbled Deepslate Stairs', 'Cobbled_Deepslate_Stairs.png'),
(178, 'cobbled_deepslate_slab', 'Cobbled Deepslate Slab', 'Cobbled_Deepslate_Slab.png'),
(179, 'cobbled_deepslate_wall', 'Cobbled Deepslate Wall', 'Cobbled_Deepslate_Wall.png'),
(180, 'chiseled_deepslate', 'Chiseled Deepslate', 'Chiseled_Deepslate.png'),
(181, 'polished_deepslate', 'Polished Deepslate', 'Polished_Deepslate.png'),
(182, 'polished_deepslate_stairs', 'Polished Deepslate Stairs', 'Polished_Deepslate_Stairs.png'),
(183, 'polished_deepslate_slab', 'Polished Deepslate Slab', 'Polished_Deepslate_Slab.png'),
(184, 'polished_deepslate_wall', 'Polished Deepslate Wall', 'Polished_Deepslate_Wall.png'),
(185, 'deepslate_bricks', 'Deepslate Bricks', 'Deepslate_Bricks.png'),
(186, 'deepslate_brick_stairs', 'Deepslate Brick Stairs', 'Deepslate_Brick_Stairs.png'),
(187, 'deepslate_brick_slab', 'Deepslate Brick Slab', 'Deepslate_Brick_Slab.png'),
(188, 'deepslate_brick_wall', 'Deepslate Brick Wall', 'Deepslate_Brick_Wall.png'),
(189, 'deepslate_tiles', 'Deepslate Tiles', 'Deepslate_Tiles.png'),
(190, 'deepslate_tile_stairs', 'Deepslate Tile Stairs', 'Deepslate_Tile_Stairs.png'),
(191, 'deepslate_tile_slab', 'Deepslate Tile Slab', 'Deepslate_Tile_Slab.png'),
(192, 'deepslate_tile_wall', 'Deepslate Tile Wall', 'Deepslate_Tile_Wall.png'),
(193, 'tuff_stairs', 'Tuff Stairs', 'Tuff_Stairs.png'),
(194, 'tuff_slab', 'Tuff Slab', 'Tuff_Slab.png'),
(195, 'tuff_wall', 'Tuff Wall', 'Tuff_Wall.png'),
(196, 'chiseled_tuff', 'Chiseled Tuff', 'Chiseled_Tuff.png'),
(197, 'polished_tuff', 'Polished Tuff', 'Polished_Tuff.png'),
(198, 'polished_tuff_stairs', 'Polished Tuff Stairs', 'Polished_Tuff_Stairs.png'),
(199, 'polished_tuff_slab', 'Polished Tuff Slab', 'Polished_Tuff_Slab.png'),
(200, 'polished_tuff_wall', 'Polished Tuff Wall', 'Polished_Tuff_Wall.png'),
(201, 'tuff_brick_slab', 'Tuff Brick Slab', 'Tuff_Brick_Slab.png'),
(202, 'tuff_brick_stairs', 'Tuff Brick Stairs', 'Tuff_Brick_Stairs.png'),
(203, 'tuff_brick_wall', 'Tuff Brick Wall', 'Tuff_Brick_Wall.png'),
(204, 'tuff_bricks', 'Tuff Bricks', 'Tuff_Bricks.png'),
(205, 'chiseled_tuff_bricks', 'Chiseled Tuff Bricks', 'Chiseled_Tuff_Bricks.png'),
(206, 'bricks', 'Bricks', 'Bricks.png'),
(207, 'brick_stairs', 'Brick Stairs', 'Brick_Stairs.png'),
(208, 'brick_slab', 'Brick Slab', 'Brick_Slab.png'),
(209, 'brick_wall', 'Brick Wall', 'Brick_Wall.png'),
(210, 'packed_mud', 'Packed Mud', 'Packed_Mud.png'),
(211, 'mud_bricks', 'Mud Bricks', 'Mud_Bricks.png'),
(212, 'mud_brick_stairs', 'Mud Brick Stairs', 'Mud_Brick_Stairs.png'),
(213, 'mud_brick_slab', 'Mud Brick Slab', 'Mud_Brick_Slab.png'),
(214, 'mud_brick_wall', 'Mud Brick Wall', 'Mud_Brick_Wall.png'),
(215, 'resin_bricks', 'Resin Bricks', 'Resin_Bricks.png'),
(216, 'resin_brick_stairs', 'Resin Brick Stairs', 'Resin_Brick_Stairs.png'),
(217, 'resin_brick_slab', 'Resin Brick Slab', 'Resin_Brick_Slab.png'),
(218, 'resin_brick_wall', 'Resin Brick Wall', 'Resin_Brick_Wall.png'),
(219, 'chiseled_resin_bricks', 'Chiseled Resin Bricks', 'Chiseled_Resin_Bricks.png'),
(220, 'sandstone', 'Sandstone', 'Sandstone.png'),
(221, 'sandstone_stairs', 'Sandstone Stairs', 'Sandstone_Stairs.png'),
(222, 'sandstone_slab', 'Sandstone Slab', 'Sandstone_Slab.png'),
(223, 'sandstone_wall', 'Sandstone Wall', 'Sandstone_Wall.png'),
(224, 'chiseled_sandstone', 'Chiseled Sandstone', 'Chiseled_Sandstone.png'),
(225, 'smooth_sandstone_stairs', 'Smooth Sandstone Stairs', 'Smooth_Sandstone_Stairs.png'),
(226, 'smooth_sandstone_slab', 'Smooth Sandstone Slab', 'Smooth_Sandstone_Slab.png'),
(227, 'cut_sandstone', 'Cut Sandstone', 'Cut_Sandstone.png'),
(228, 'cut_sandstone_slab', 'Cut Sandstone Slab', 'Cut_Sandstone_Slab.png'),
(229, 'red_sandstone', 'Red Sandstone', 'Red_Sandstone.png'),
(230, 'red_sandstone_stairs', 'Red Sandstone Stairs', 'Red_Sandstone_Stairs.png'),
(231, 'red_sandstone_slab', 'Red Sandstone Slab', 'Red_Sandstone_Slab.png'),
(232, 'red_sandstone_wall', 'Red Sandstone Wall', 'Red_Sandstone_Wall.png'),
(233, 'chiseled_red_sandstone', 'Chiseled Red Sandstone', 'Chiseled_Red_Sandstone.png'),
(234, 'smooth_red_sandstone_stairs', 'Smooth Red Sandstone Stairs', 'Smooth_Red_Sandstone_Stairs.png'),
(235, 'smooth_red_sandstone_slab', 'Smooth Red Sandstone Slab', 'Smooth_Red_Sandstone_Slab.png'),
(236, 'cut_red_sandstone', 'Cut Red Sandstone', 'Cut_Red_Sandstone.png'),
(237, 'cut_red_sandstone_slab', 'Cut Red Sandstone Slab', 'Cut_Red_Sandstone_Slab.png'),
(238, 'sea_lantern', 'Sea Lantern', 'Sea_Lantern.png'),
(239, 'prismarine', 'Prismarine', 'Prismarine.png'),
(240, 'prismarine_stairs', 'Prismarine Stairs', 'Prismarine_Stairs.png'),
(241, 'prismarine_slab', 'Prismarine Slab', 'Prismarine_Slab.png'),
(242, 'prismarine_wall', 'Prismarine Wall', 'Prismarine_Wall.png'),
(243, 'prismarine_bricks', 'Prismarine Bricks', 'Prismarine_Bricks.png'),
(244, 'prismarine_brick_stairs', 'Prismarine Brick Stairs', 'Prismarine_Brick_Stairs.png'),
(245, 'prismarine_brick_slab', 'Prismarine Brick Slab', 'Prismarine_Brick_Slab.png'),
(246, 'dark_prismarine', 'Dark Prismarine', 'Dark_Prismarine.png'),
(247, 'dark_prismarine_stairs', 'Dark Prismarine Stairs', 'Dark_Prismarine_Stairs.png'),
(248, 'dark_prismarine_slab', 'Dark Prismarine Slab', 'Dark_Prismarine_Slab.png'),
(249, 'nether_bricks', 'Nether Bricks', 'Nether_Bricks.png'),
(250, 'nether_brick_stairs', 'Nether Brick Stairs', 'Nether_Brick_Stairs.png'),
(251, 'nether_brick_slab', 'Nether Brick Slab', 'Nether_Brick_Slab.png'),
(252, 'nether_brick_wall', 'Nether Brick Wall', 'Nether_Brick_Wall.png'),
(253, 'nether_brick_fence', 'Nether Brick Fence', 'Nether_Brick_Fence.png'),
(254, 'chiseled_nether_bricks', 'Chiseled Nether Bricks', 'Chiseled_Nether_Bricks.png'),
(255, 'red_nether_bricks', 'Red Nether Bricks', 'Red_Nether_Bricks.png'),
(256, 'red_nether_brick_stairs', 'Red Nether Brick Stairs', 'Red_Nether_Brick_Stairs.png'),
(257, 'red_nether_brick_slab', 'Red Nether Brick Slab', 'Red_Nether_Brick_Slab.png'),
(258, 'red_nether_brick_wall', 'Red Nether Brick Wall', 'Red_Nether_Brick_Wall.png'),
(259, 'polished_basalt', 'Polished Basalt', 'Polished_Basalt.png'),
(260, 'blackstone_stairs', 'Blackstone Stairs', 'Blackstone_Stairs.png'),
(261, 'blackstone_slab', 'Blackstone Slab', 'Blackstone_Slab.png'),
(262, 'blackstone_wall', 'Blackstone Wall', 'Blackstone_Wall.png'),
(263, 'chiseled_polished_blackstone', 'Chiseled Polished Blackstone', 'Chiseled_Polished_Blackstone.png'),
(264, 'polished_blackstone', 'Polished Blackstone', 'Polished_Blackstone.png'),
(265, 'polished_blackstone_brick_stairs', 'Polished Blackstone Brick Stairs', 'Polished_Blackstone_Brick_Stairs.png'),
(266, 'polished_blackstone_brick_slab', 'Polished Blackstone Brick Slab', 'Polished_Blackstone_Brick_Slab.png'),
(267, 'polished_blackstone_brick_wall', 'Polished Blackstone Brick Wall', 'Polished_Blackstone_Brick_Wall.png'),
(268, 'polished_blackstone_pressure_plate', 'Polished Blackstone Pressure Plate', 'Polished_Blackstone_Pressure_Plate.png'),
(269, 'polished_blackstone_button', 'Polished Blackstone Button', 'Polished_Blackstone_Button.png'),
(270, 'polished_blackstone_bricks', 'Polished Blackstone Bricks', 'Polished_Blackstone_Bricks.png'),
(271, 'polished_blackstone_stairs', 'Polished Blackstone Stairs', 'Blackstone_Stairs.png'),
(272, 'polished_blackstone_slab', 'Polished Blackstone Slab', 'Polished_Blackstone_Slab.png'),
(273, 'polished_blackstone_wall', 'Polished Blackstone Wall', 'Polished_Blackstone_Wall.png'),
(274, 'end_stone_bricks', 'End Stone Bricks', 'End_Stone_Bricks.png'),
(275, 'end_stone_brick_stairs', 'End Stone Brick Stairs', 'End_Stone_Brick_Stairs.png'),
(276, 'end_stone_brick_slab', 'End Stone Brick Slab', 'End_Stone_Brick_Slab.png'),
(277, 'end_stone_brick_wall', 'End Stone Brick Wall', 'End_Stone_Brick_Wall.png'),
(278, 'purpur_block', 'Purpur Block', 'Purpur_Block.png'),
(279, 'purpur_pillar', 'Purpur Pillar', 'Purpur_Pillar.png'),
(280, 'purpur_slab', 'Purpur Slab', 'Purpur_Slab.png'),
(281, 'purpur_stairs', 'Purpur Stairs', 'Purpur_Stairs.png'),
(282, 'block_of_coal', 'Block of Coal', 'Block_of_Coal.png'),
(283, 'block_of_iron', 'Block of Iron', 'Block_of_Iron.png'),
(284, 'iron_bars', 'Iron Bars', 'Iron_Bars.png'),
(285, 'iron_door', 'Iron Door', 'Iron_Door.png'),
(286, 'iron_trapdoor', 'Iron Trapdoor', 'Iron_Trapdoor.png'),
(287, 'heavy_weighted_pressure_plate', 'Heavy Weighted Pressure Plate', 'Heavy_Weighted_Pressure_Plate.png'),
(288, 'chain', 'Chain', 'Chain.png'),
(289, 'block_of_gold', 'Block of Gold', 'Block_of_Gold.png'),
(290, 'light_weighted_pressure_plate', 'Light Weighted Pressure Plate', 'Light_Weighted_Pressure_Plate.png'),
(291, 'block_of_redstone', 'Block of Redstone', 'Block_of_Redstone.png'),
(292, 'block_of_emerald', 'Block of Emerald', 'Block_of_Emerald.png'),
(293, 'block_of_lapis_lazuli', 'Block of Lapis Lazuli', 'Block_of_Lapis_Lazuli.png'),
(294, 'block_of_diamond', 'Block of Diamond', 'Block_of_Diamond.png'),
(295, 'block_of_netherite', 'Block of Netherite', 'Block_of_Netherite.png'),
(296, 'block_of_quartz', 'Block of Quartz', 'Block_of_Quartz.png'),
(297, 'quartz_stairs', 'Quartz Stairs', 'Quartz_Stairs.png'),
(298, 'quartz_slab', 'Quartz Slab', 'Quartz_Slab.png'),
(299, 'chiseled_quartz_block', 'Chiseled Quartz Block', 'Chiseled_Quartz_Block.png'),
(300, 'quartz_pillar', 'Quartz Pillar', 'Quartz_Pillar.png'),
(301, 'quartz_bricks', 'Quartz Bricks', 'Quartz_Bricks.png'),
(302, 'smooth_quartz_stairs', 'Smooth Quartz Stairs', 'Smooth_Quartz_Stairs.png'),
(303, 'smooth_quartz_slab', 'Smooth Quartz Slab', 'Smooth_Quartz_Slab.png'),
(304, 'block_of_amethyst', 'Block of Amethyst', 'Block_of_Amethyst.png'),
(305, 'block_of_copper', 'Block of Copper', 'Block_of_Copper.png'),
(306, 'chiseled_copper', 'Chiseled Copper', 'Chiseled_Copper.png'),
(307, 'copper_grate', 'Copper Grate', 'Copper_Grate.png'),
(308, 'cut_copper', 'Cut Copper', 'Cut_Copper.png'),
(309, 'cut_copper_stairs', 'Cut Copper Stairs', 'Cut_Copper_Stairs.png'),
(310, 'cut_copper_slab', 'Cut Copper Slab', 'Cut_Copper_Slab.png'),
(311, 'copper_door', 'Copper Door', 'Copper_Door.png'),
(312, 'copper_trapdoor', 'Copper Trapdoor', 'Copper_Trapdoor.png'),
(313, 'copper_bulb', 'Copper Bulb', 'Copper_Bulb.png'),
(314, 'exposed_chiseled_copper', 'Exposed Chiseled Copper', 'Exposed_Chiseled_Copper.png'),
(315, 'exposed_copper_grate', 'Exposed Copper Grate', 'Exposed_Copper_Grate.png'),
(316, 'exposed_cut_copper', 'Exposed Cut Copper', 'Exposed_Cut_Copper.png'),
(317, 'exposed_cut_copper_stairs', 'Exposed Cut Copper Stairs', 'Exposed_Cut_Copper_Stairs.png'),
(318, 'exposed_cut_copper_slab', 'Exposed Cut Copper Slab', 'Exposed_Cut_Copper_Slab.png'),
(319, 'exposed_copper_bulb', 'Exposed Copper Bulb', 'Exposed_Copper_Bulb.png'),
(320, 'weathered_chiseled_copper', 'Weathered Chiseled Copper', 'Weathered_Chiseled_Copper.png'),
(321, 'weathered_copper_grate', 'Weathered Copper Grate', 'Weathered_Copper_Grate.png'),
(322, 'weathered_cut_copper', 'Weathered Cut Copper', 'Weathered_Cut_Copper.png'),
(323, 'weathered_cut_copper_stairs', 'Weathered Cut Copper Stairs', 'Weathered_Cut_Copper_Stairs.png'),
(324, 'weathered_cut_copper_slab', 'Weathered Cut Copper Slab', 'Weathered_Cut_Copper_Slab.png'),
(325, 'weathered_copper_bulb', 'Weathered Copper Bulb', 'Weathered_Copper_Bulb.png'),
(326, 'oxidized_chiseled_copper', 'Oxidized Chiseled Copper', 'Oxidized_Chiseled_Copper.png'),
(327, 'oxidized_copper_grate', 'Oxidized Copper Grate', 'Oxidized_Copper_Grate.png'),
(328, 'oxidized_cut_copper', 'Oxidized Cut Copper', 'Oxidized_Cut_Copper.png'),
(329, 'oxidized_cut_copper_stairs', 'Oxidized Cut Copper Stairs', 'Oxidized_Cut_Copper_Stairs.png'),
(330, 'oxidized_cut_copper_slab', 'Oxidized Cut Copper Slab', 'Oxidized_Cut_Copper_Slab.png'),
(331, 'oxidized_copper_bulb', 'Oxidized Copper Bulb', 'Oxidized_Copper_Bulb.png'),
(332, 'waxed_block_of_copper', 'Waxed Block of Copper', 'Block_of_Copper.png'),
(333, 'waxed_chiseled_copper', 'Waxed Chiseled Copper', 'Chiseled_Copper.png'),
(334, 'waxed_copper_grate', 'Waxed Copper Grate', 'Copper_Grate.png'),
(335, 'waxed_cut_copper', 'Waxed Cut Copper', 'Cut_Copper.png'),
(336, 'waxed_cut_copper_stairs', 'Waxed Cut Copper Stairs', 'Cut_Copper_Stairs.png'),
(337, 'waxed_cut_copper_slab', 'Waxed Cut Copper Slab', 'Cut_Copper_Slab.png'),
(338, 'waxed_copper_door', 'Waxed Copper Door', 'Copper_Door.png'),
(339, 'waxed_copper_trapdoor', 'Waxed Copper Trapdoor', 'Copper_Trapdoor.png'),
(340, 'waxed_copper_bulb', 'Waxed Copper Bulb', 'Copper_Bulb.png'),
(341, 'waxed_exposed_copper', 'Waxed Exposed Copper', 'Exposed_Copper.png'),
(342, 'waxed_exposed_chiseled_copper', 'Waxed Exposed Chiseled Copper', 'Exposed_Chiseled_Copper.png'),
(343, 'waxed_exposed_copper_grate', 'Waxed Exposed Copper Grate', 'Exposed_Copper_Grate.png'),
(344, 'waxed_exposed_cut_copper', 'Waxed Exposed Cut Copper', 'Exposed_Cut_Copper.png'),
(345, 'waxed_exposed_cut_copper_stairs', 'Waxed Exposed Cut Copper Stairs', 'Exposed_Cut_Copper_Stairs.png'),
(346, 'waxed_exposed_cut_copper_slab', 'Waxed Exposed Cut Copper Slab', 'Exposed_Cut_Copper_Slab.png'),
(347, 'waxed_exposed_copper_door', 'Waxed Exposed Copper Door', 'Exposed_Copper_Door.png'),
(348, 'waxed_exposed_copper_trapdoor', 'Waxed Exposed Copper Trapdoor', 'Exposed_Copper_Trapdoor.png'),
(349, 'waxed_exposed_copper_bulb', 'Waxed Exposed Copper Bulb', 'Exposed_Copper_Bulb.png'),
(350, 'waxed_weathered_copper', 'Waxed Weathered Copper', 'Weathered_Copper.png'),
(351, 'waxed_weathered_chiseled_copper', 'Waxed Weathered Chiseled Copper', 'Weathered_Chiseled_Copper.png'),
(352, 'waxed_weathered_copper_grate', 'Waxed Weathered Copper Grate', 'Weathered_Copper_Grate.png'),
(353, 'waxed_weathered_cut_copper', 'Waxed Weathered Cut Copper', 'Weathered_Cut_Copper.png'),
(354, 'waxed_weathered_cut_copper_stairs', 'Waxed Weathered Cut Copper Stairs', 'Weathered_Cut_Copper_Stairs.png'),
(355, 'waxed_weathered_cut_copper_slab', 'Waxed Weathered Cut Copper Slab', 'Weathered_Cut_Copper_Slab.png'),
(356, 'waxed_weathered_copper_door', 'Waxed Weathered Copper Door', 'Weathered_Copper_Door.png'),
(357, 'waxed_weathered_copper_trapdoor', 'Waxed Weathered Copper Trapdoor', 'Weathered_Copper_Trapdoor.png'),
(358, 'waxed_weathered_copper_bulb', 'Waxed Weathered Copper Bulb', 'Weathered_Copper_Bulb.png'),
(359, 'waxed_oxidized_copper', 'Waxed Oxidized Copper', 'Oxidized_Copper.png'),
(360, 'waxed_oxidized_chiseled_copper', 'Waxed Oxidized Chiseled Copper', 'Oxidized_Chiseled_Copper.png'),
(361, 'waxed_oxidized_copper_grate', 'Waxed Oxidized Copper Grate', 'Oxidized_Copper_Grate.png'),
(362, 'waxed_oxidized_cut_copper', 'Waxed Oxidized Cut Copper', 'Oxidized_Cut_Copper.png'),
(363, 'waxed_oxidized_cut_copper_stairs', 'Waxed Oxidized Cut Copper Stairs', 'Oxidized_Cut_Copper_Stairs.png'),
(364, 'waxed_oxidized_cut_copper_slab', 'Waxed Oxidized Cut Copper Slab', 'Oxidized_Cut_Copper_Slab.png'),
(365, 'waxed_oxidized_copper_door', 'Waxed Oxidized Copper Door', 'Oxidized_Copper_Door.png'),
(366, 'waxed_oxidized_copper_trapdoor', 'Waxed Oxidized Copper Trapdoor', 'Oxidized_Copper_Trapdoor.png'),
(367, 'waxed_oxidized_copper_bulb', 'Waxed Oxidized Copper Bulb', 'Oxidized_Copper_Bulb.png'),
(368, 'white_wool', 'White Wool', 'White_Wool.png'),
(369, 'light_gray_wool', 'Light Gray Wool', 'Light_Gray_Wool.png'),
(370, 'gray_wool', 'Gray Wool', 'Gray_Wool.png'),
(371, 'black_wool', 'Black Wool', 'Black_Wool.png'),
(372, 'brown_wool', 'Brown Wool', 'Brown_Wool.png'),
(373, 'red_wool', 'Red Wool', 'Red_Wool.png'),
(374, 'orange_wool', 'Orange Wool', 'Orange_Wool.png'),
(375, 'yellow_wool', 'Yellow Wool', 'Yellow_Wool.png'),
(376, 'lime_wool', 'Lime Wool', 'Lime_Wool.png'),
(377, 'green_wool', 'Green Wool', 'Green_Wool.png'),
(378, 'cyan_wool', 'Cyan Wool', 'Cyan_Wool.png'),
(379, 'light_blue_wool', 'Light Blue Wool', 'Light_Blue_Wool.png'),
(380, 'blue_wool', 'Blue Wool', 'Blue_Wool.png'),
(381, 'purple_wool', 'Purple Wool', 'Purple_Wool.png'),
(382, 'magenta_wool', 'Magenta Wool', 'Magenta_Wool.png'),
(383, 'pink_wool', 'Pink Wool', 'Pink_Wool.png'),
(384, 'white_carpet', 'White Carpet', 'White_Carpet.png'),
(385, 'light_gray_carpet', 'Light Gray Carpet', 'Light_Gray_Carpet.png'),
(386, 'gray_carpet', 'Gray Carpet', 'Gray_Carpet.png'),
(387, 'black_carpet', 'Black Carpet', 'Black_Carpet.png'),
(388, 'brown_carpet', 'Brown Carpet', 'Brown_Carpet.png'),
(389, 'red_carpet', 'Red Carpet', 'Red_Carpet.png'),
(390, 'orange_carpet', 'Orange Carpet', 'Orange_Carpet.png'),
(391, 'yellow_carpet', 'Yellow Carpet', 'Yellow_Carpet.png'),
(392, 'lime_carpet', 'Lime Carpet', 'Lime_Carpet.png'),
(393, 'green_carpet', 'Green Carpet', 'Green_Carpet.png'),
(394, 'cyan_carpet', 'Cyan Carpet', 'Cyan_Carpet.png'),
(395, 'light_blue_carpet', 'Light Blue Carpet', 'Light_Blue_Carpet.png'),
(396, 'blue_carpet', 'Blue Carpet', 'Blue_Carpet.png'),
(397, 'purple_carpet', 'Purple Carpet', 'Purple_Carpet.png'),
(398, 'magenta_carpet', 'Magenta Carpet', 'Magenta_Carpet.png'),
(399, 'pink_carpet', 'Pink Carpet', 'Pink_Carpet.png'),
(400, 'white_terracotta', 'White Terracotta', 'White_Terracotta.png'),
(401, 'light_gray_terracotta', 'Light Gray Terracotta', 'Light_Gray_Terracotta.png'),
(402, 'gray_terracotta', 'Gray Terracotta', 'Gray_Terracotta.png'),
(403, 'black_terracotta', 'Black Terracotta', 'Black_Terracotta.png'),
(404, 'brown_terracotta', 'Brown Terracotta', 'Brown_Terracotta.png'),
(405, 'red_terracotta', 'Red Terracotta', 'Red_Terracotta.png'),
(406, 'orange_terracotta', 'Orange Terracotta', 'Orange_Terracotta.png'),
(407, 'yellow_terracotta', 'Yellow Terracotta', 'Yellow_Terracotta.png'),
(408, 'lime_terracotta', 'Lime Terracotta', 'Lime_Terracotta.png'),
(409, 'green_terracotta', 'Green Terracotta', 'Green_Terracotta.png'),
(410, 'cyan_terracotta', 'Cyan Terracotta', 'Cyan_Terracotta.png'),
(411, 'light_blue_terracotta', 'Light Blue Terracotta', 'Light_Blue_Terracotta.png'),
(412, 'blue_terracotta', 'Blue Terracotta', 'Blue_Terracotta.png'),
(413, 'purple_terracotta', 'Purple Terracotta', 'Purple_Terracotta.png'),
(414, 'magenta_terracotta', 'Magenta Terracotta', 'Magenta_Terracotta.png'),
(415, 'pink_terracotta', 'Pink Terracotta', 'Pink_Terracotta.png'),
(416, 'white_concrete_powder', 'White Concrete Powder', 'White_Concrete_Powder.png'),
(417, 'light_gray_concrete_powder', 'Light Gray Concrete Powder', 'Light_Gray_Concrete_Powder.png'),
(418, 'gray_concrete_powder', 'Gray Concrete Powder', 'Gray_Concrete_Powder.png'),
(419, 'black_concrete_powder', 'Black Concrete Powder', 'Black_Concrete_Powder.png'),
(420, 'brown_concrete_powder', 'Brown Concrete Powder', 'Brown_Concrete_Powder.png'),
(421, 'red_concrete_powder', 'Red Concrete Powder', 'Red_Concrete_Powder.png'),
(422, 'orange_concrete_powder', 'Orange Concrete Powder', 'Orange_Concrete_Powder.png'),
(423, 'yellow_concrete_powder', 'Yellow Concrete Powder', 'Yellow_Concrete_Powder.png'),
(424, 'lime_concrete_powder', 'Lime Concrete Powder', 'Lime_Concrete_Powder.png'),
(425, 'green_concrete_powder', 'Green Concrete Powder', 'Green_Concrete_Powder.png'),
(426, 'cyan_concrete_powder', 'Cyan Concrete Powder', 'Cyan_Concrete_Powder.png'),
(427, 'light_blue_concrete_powder', 'Light Blue Concrete Powder', 'Light_Blue_Concrete_Powder.png'),
(428, 'blue_concrete_powder', 'Blue Concrete Powder', 'Blue_Concrete_Powder.png'),
(429, 'purple_concrete_powder', 'Purple Concrete Powder', 'Purple_Concrete_Powder.png'),
(430, 'magenta_concrete_powder', 'Magenta Concrete Powder', 'Magenta_Concrete_Powder.png'),
(431, 'pink_concrete_powder', 'Pink Concrete Powder', 'Pink_Concrete_Powder.png'),
(432, 'tinted_glass', 'Tinted Glass', 'Tinted_Glass.png'),
(433, 'white_stained_glass', 'White Stained Glass', 'White_Stained_Glass.png'),
(434, 'light_gray_stained_glass', 'Light Gray Stained Glass', 'Light_Gray_Stained_Glass.png'),
(435, 'gray_stained_glass', 'Gray Stained Glass', 'Gray_Stained_Glass.png'),
(436, 'black_stained_glass', 'Black Stained Glass', 'Black_Stained_Glass.png'),
(437, 'brown_stained_glass', 'Brown Stained Glass', 'Brown_Stained_Glass.png'),
(438, 'red_stained_glass', 'Red Stained Glass', 'Red_Stained_Glass.png'),
(439, 'orange_stained_glass', 'Orange Stained Glass', 'Orange_Stained_Glass.png'),
(440, 'yellow_stained_glass', 'Yellow Stained Glass', 'Yellow_Stained_Glass.png'),
(441, 'lime_stained_glass', 'Lime Stained Glass', 'Lime_Stained_Glass.png'),
(442, 'green_stained_glass', 'Green Stained Glass', 'Green_Stained_Glass.png'),
(443, 'cyan_stained_glass', 'Cyan Stained Glass', 'Cyan_Stained_Glass.png'),
(444, 'light_blue_stained_glass', 'Light Blue Stained Glass', 'Light_Blue_Stained_Glass.png'),
(445, 'blue_stained_glass', 'Blue Stained Glass', 'Blue_Stained_Glass.png'),
(446, 'purple_stained_glass', 'Purple Stained Glass', 'Purple_Stained_Glass.png'),
(447, 'magenta_stained_glass', 'Magenta Stained Glass', 'Magenta_Stained_Glass.png'),
(448, 'pink_stained_glass', 'Pink Stained Glass', 'Pink_Stained_Glass.png'),
(449, 'glass_pane', 'Glass Pane', 'Glass_Pane.png'),
(450, 'white_stained_glass_pane', 'White Stained Glass Pane', 'White_Stained_Glass_Pane.png'),
(451, 'light_gray_stained_glass_pane', 'Light Gray Stained Glass Pane', 'Light_Gray_Stained_Glass_Pane.png'),
(452, 'gray_stained_glass_pane', 'Gray Stained Glass Pane', 'Gray_Stained_Glass_Pane.png'),
(453, 'black_stained_glass_pane', 'Black Stained Glass Pane', 'Black_Stained_Glass_Pane.png'),
(454, 'brown_stained_glass_pane', 'Brown Stained Glass Pane', 'Brown_Stained_Glass_Pane.png'),
(455, 'red_stained_glass_pane', 'Red Stained Glass Pane', 'Red_Stained_Glass_Pane.png'),
(456, 'orange_stained_glass_pane', 'Orange Stained Glass Pane', 'Orange_Stained_Glass_Pane.png'),
(457, 'yellow_stained_glass_pane', 'Yellow Stained Glass Pane', 'Yellow_Stained_Glass_Pane.png'),
(458, 'lime_stained_glass_pane', 'Lime Stained Glass Pane', 'Lime_Stained_Glass_Pane.png'),
(459, 'green_stained_glass_pane', 'Green Stained Glass Pane', 'Green_Stained_Glass_Pane.png'),
(460, 'cyan_stained_glass_pane', 'Cyan Stained Glass Pane', 'Cyan_Stained_Glass_Pane.png'),
(461, 'light_blue_stained_glass_pane', 'Light Blue Stained Glass Pane', 'Light_Blue_Stained_Glass_Pane.png'),
(462, 'blue_stained_glass_pane', 'Blue Stained Glass Pane', 'Blue_Stained_Glass_Pane.png'),
(463, 'purple_stained_glass_pane', 'Purple Stained Glass Pane', 'Purple_Stained_Glass_Pane.png'),
(464, 'magenta_stained_glass_pane', 'Magenta Stained Glass Pane', 'Magenta_Stained_Glass_Pane.png'),
(465, 'pink_stained_glass_pane', 'Pink Stained Glass Pane', 'Pink_Stained_Glass_Pane.png'),
(466, 'shulker_box', 'Shulker Box', 'Shulker_Box.png'),
(467, 'white_shulker_box', 'White Shulker Box', 'White_Shulker_Box.png'),
(468, 'light_gray_shulker_box', 'Light Gray Shulker Box', 'Light_Gray_Shulker_Box.png'),
(469, 'gray_shulker_box', 'Gray Shulker Box', 'Gray_Shulker_Box.png'),
(470, 'black_shulker_box', 'Black Shulker Box', 'Black_Shulker_Box.png'),
(471, 'brown_shulker_box', 'Brown Shulker Box', 'Brown_Shulker_Box.png'),
(472, 'red_shulker_box', 'Red Shulker Box', 'Red_Shulker_Box.png'),
(473, 'orange_shulker_box', 'Orange Shulker Box', 'Orange_Shulker_Box.png'),
(474, 'yellow_shulker_box', 'Yellow Shulker Box', 'Yellow_Shulker_Box.png'),
(475, 'lime_shulker_box', 'Lime Shulker Box', 'Lime_Shulker_Box.png'),
(476, 'green_shulker_box', 'Green Shulker Box', 'Green_Shulker_Box.png'),
(477, 'cyan_shulker_box', 'Cyan Shulker Box', 'Cyan_Shulker_Box.png'),
(478, 'light_blue_shulker_box', 'Light Blue Shulker Box', 'Light_Blue_Shulker_Box.png'),
(479, 'blue_shulker_box', 'Blue Shulker Box', 'Blue_Shulker_Box.png'),
(480, 'purple_shulker_box', 'Purple Shulker Box', 'Purple_Shulker_Box.png'),
(481, 'magenta_shulker_box', 'Magenta Shulker Box', 'Magenta_Shulker_Box.png'),
(482, 'pink_shulker_box', 'Pink Shulker Box', 'Pink_Shulker_Box.png'),
(483, 'white_bed', 'White Bed', 'White_Bed.png'),
(484, 'light_gray_bed', 'Light Gray Bed', 'Light_Gray_Bed.png'),
(485, 'gray_bed', 'Gray Bed', 'Gray_Bed.png'),
(486, 'black_bed', 'Black Bed', 'Black_Bed.png'),
(487, 'brown_bed', 'Brown Bed', 'Brown_Bed.png'),
(488, 'red_bed', 'Red Bed', 'Red_Bed.png'),
(489, 'orange_bed', 'Orange Bed', 'Orange_Bed.png'),
(490, 'yellow_bed', 'Yellow Bed', 'Yellow_Bed.png'),
(491, 'lime_bed', 'Lime Bed', 'Lime_Bed.png'),
(492, 'green_bed', 'Green Bed', 'Green_Bed.png'),
(493, 'cyan_bed', 'Cyan Bed', 'Cyan_Bed.png'),
(494, 'light_blue_bed', 'Light Blue Bed', 'Light_Blue_Bed.png'),
(495, 'blue_bed', 'Blue Bed', 'Blue_Bed.png'),
(496, 'purple_bed', 'Purple Bed', 'Purple_Bed.png'),
(497, 'magenta_bed', 'Magenta Bed', 'Magenta_Bed.png'),
(498, 'pink_bed', 'Pink Bed', 'Pink_Bed.png'),
(499, 'candle', 'Candle', 'Candle.png'),
(500, 'white_candle', 'White Candle', 'White_Candle.png'),
(501, 'light_gray_candle', 'Light Gray Candle', 'Light_Gray_Candle.png'),
(502, 'gray_candle', 'Gray Candle', 'Gray_Candle.png'),
(503, 'black_candle', 'Black Candle', 'Black_Candle.png'),
(504, 'brown_candle', 'Brown Candle', 'Brown_Candle.png'),
(505, 'red_candle', 'Red Candle', 'Red_Candle.png'),
(506, 'orange_candle', 'Orange Candle', 'Orange_Candle.png'),
(507, 'yellow_candle', 'Yellow Candle', 'Yellow_Candle.png'),
(508, 'lime_candle', 'Lime Candle', 'Lime_Candle.png'),
(509, 'green_candle', 'Green Candle', 'Green_Candle.png'),
(510, 'cyan_candle', 'Cyan Candle', 'Cyan_Candle.png'),
(511, 'light_blue_candle', 'Light Blue Candle', 'Light_Blue_Candle.png'),
(512, 'blue_candle', 'Blue Candle', 'Blue_Candle.png'),
(513, 'purple_candle', 'Purple Candle', 'Purple_Candle.png'),
(514, 'magenta_candle', 'Magenta Candle', 'Magenta_Candle.png'),
(515, 'pink_candle', 'Pink Candle', 'Pink_Candle.png'),
(516, 'white_banner', 'White Banner', 'White_Banner.png'),
(517, 'light_gray_banner', 'Light Gray Banner', 'Light_Gray_Banner.png'),
(518, 'gray_banner', 'Gray Banner', 'Gray_Banner.png'),
(519, 'black_banner', 'Black Banner', 'Black_Banner.png'),
(520, 'brown_banner', 'Brown Banner', 'Brown_Banner.png'),
(521, 'red_banner', 'Red Banner', 'Red_Banner.png'),
(522, 'orange_banner', 'Orange Banner', 'Orange_Banner.png'),
(523, 'yellow_banner', 'Yellow Banner', 'Yellow_Banner.png'),
(524, 'lime_banner', 'Lime Banner', 'Lime_Banner.png'),
(525, 'green_banner', 'Green Banner', 'Green_Banner.png'),
(526, 'cyan_banner', 'Cyan Banner', 'Cyan_Banner.png'),
(527, 'light_blue_banner', 'Light Blue Banner', 'Light_Blue_Banner.png'),
(528, 'blue_banner', 'Blue Banner', 'Blue_Banner.png'),
(529, 'purple_banner', 'Purple Banner', 'Purple_Banner.png'),
(530, 'magenta_banner', 'Magenta Banner', 'Magenta_Banner.png'),
(531, 'pink_banner', 'Pink Banner', 'Pink_Banner.png'),
(532, 'coarse_dirt', 'Coarse Dirt', 'Coarse_Dirt.png'),
(533, 'clay', 'Clay', 'Clay.png'),
(534, 'packed_ice', 'Packed Ice', 'Packed_Ice.png'),
(535, 'blue_ice', 'Blue Ice', 'Blue_Ice.png'),
(536, 'snow_block', 'Snow Block', 'Snow_Block.png'),
(537, 'snow', 'Snow', 'Snow.png'),
(538, 'moss_carpet', 'Moss Carpet', 'Moss_Carpet.png'),
(539, 'pale_moss_carpet', 'Pale Moss Carpet', 'Pale_Moss_Carpet.png'),
(540, 'dripstone_block', 'Dripstone Block', 'Dripstone_Block.png'),
(541, 'magma_block', 'Magma Block', 'Magma_Block.png'),
(542, 'bone_block', 'Bone Block', 'Bone_Block.png'),
(543, 'block_of_raw_iron', 'Block of Raw Iron', 'Block_of_Raw_Iron.png'),
(544, 'block_of_raw_copper', 'Block of Raw Copper', 'Block_of_Raw_Copper.png'),
(545, 'block_of_raw_gold', 'Block of Raw Gold', 'Block_of_Raw_Gold.png'),
(546, 'glowstone', 'Glowstone', 'Glowstone.png'),
(547, 'muddy_mangrove_roots', 'Muddy Mangrove Roots', 'Muddy_Mangrove_Roots.png'),
(548, 'nether_wart_block', 'Nether Wart Block', 'Nether_Wart_Block.png'),
(549, 'melon_seeds', 'Melon Seeds', 'Melon_Seeds.png'),
(550, 'pumpkin_seeds', 'Pumpkin Seeds', 'Pumpkin_Seeds.png'),
(551, 'dried_kelp_block', 'Dried Kelp Block', 'Dried_Kelp_Block.png'),
(552, 'melon', 'Melon', 'Melon.png'),
(553, 'jack_olantern', 'Jack o\' Lantern', 'Jack_oLantern.png'),
(554, 'hay_bale', 'Hay Bale', 'Hay_Bale.png'),
(555, 'honeycomb_block', 'Honeycomb Block', 'Honeycomb_Block.png'),
(556, 'slime_block', 'Slime Block', 'Slime_Block.png'),
(557, 'honey_block', 'Honey Block', 'Honey_Block.png'),
(558, 'block_of_resin', 'Block of Resin', 'Block_of_Resin.png'),
(559, 'torch', 'Torch', 'Torch.png'),
(560, 'soul_torch', 'Soul Torch', 'Soul_Torch.png'),
(561, 'redstone_torch', 'Redstone Torch', 'Redstone_Torch.png'),
(562, 'lantern', 'Lantern', 'Lantern.png'),
(563, 'soul_lantern', 'Soul Lantern', 'Soul_Lantern.png'),
(564, 'end_rod', 'End Rod', 'End_Rod.png'),
(565, 'redstone_lamp', 'Redstone Lamp', 'Redstone_Lamp.png'),
(566, 'crafting_table', 'Crafting Table', 'Crafting_Table.png'),
(567, 'stonecutter', 'Stonecutter', 'Stonecutter.png'),
(568, 'cartography_table', 'Cartography Table', 'Cartography_Table.png'),
(569, 'fletching_table', 'Fletching Table', 'Fletching_Table.png'),
(570, 'smithing_table', 'Smithing Table', 'Smithing_Table.png'),
(571, 'grindstone', 'Grindstone', 'Grindstone.png'),
(572, 'loom', 'Loom', 'Loom.png'),
(573, 'furnace', 'Furnace', 'Furnace.png'),
(574, 'smoker', 'Smoker', 'Smoker.png'),
(575, 'blast_furnace', 'Blast Furnace', 'Blast_Furnace.png'),
(576, 'campfire', 'Campfire', 'Campfire.png'),
(577, 'soul_campfire', 'Soul Campfire', 'Soul_Campfire.png'),
(578, 'anvil', 'Anvil', 'Anvil.png'),
(579, 'composter', 'Composter', 'Composter.png'),
(580, 'note_block', 'Note Block', 'Note_Block.png'),
(581, 'jukebox', 'Jukebox', 'Jukebox.png'),
(582, 'enchanting_table', 'Enchanting Table', 'Enchanting_Table.png'),
(583, 'end_crystal', 'End Crystal', 'End_Crystal.png'),
(584, 'brewing_stand', 'Brewing Stand', 'Brewing_Stand.png'),
(585, 'cauldron', 'Cauldron', 'Cauldron.png'),
(586, 'beacon', 'Beacon', 'Beacon.png'),
(587, 'conduit', 'Conduit', 'Conduit.png'),
(588, 'lodestone', 'Lodestone', 'Lodestone.png'),
(589, 'ladder', 'Ladder', 'Ladder.png'),
(590, 'scaffolding', 'Scaffolding', 'Scaffolding.png'),
(591, 'beehive', 'Beehive', 'Beehive.png'),
(592, 'lightning_rod', 'Lightning Rod', 'Lightning_Rod.png'),
(593, 'flower_pot', 'Flower Pot', 'Flower_Pot.png'),
(594, 'decorated_pot', 'Decorated Pot', 'Decorated_Pot.png'),
(595, 'armor_stand', 'Armor Stand', 'Armor_Stand.png'),
(596, 'item_frame', 'Item Frame', 'Item_Frame.png'),
(597, 'glow_item_frame', 'Glow Item Frame', 'Glow_Item_Frame.png'),
(598, 'painting', 'Painting', 'Painting.png'),
(599, 'bookshelf', 'Bookshelf', 'Bookshelf.png'),
(600, 'chiseled_bookshelf', 'Chiseled Bookshelf', 'Chiseled_Bookshelf.png'),
(601, 'lectern', 'Lectern', 'Lectern.png'),
(602, 'oak_sign', 'Oak Sign', 'Oak_Sign.png'),
(603, 'oak_hanging_sign', 'Oak Hanging Sign', 'Oak_Hanging_Sign.png'),
(604, 'spruce_sign', 'Spruce Sign', 'Spruce_Sign.png'),
(605, 'spruce_hanging_sign', 'Spruce Hanging Sign', 'Spruce_Hanging_Sign.png'),
(606, 'birch_sign', 'Birch Sign', 'Birch_Sign.png'),
(607, 'birch_hanging_sign', 'Birch Hanging Sign', 'Birch_Hanging_Sign.png'),
(608, 'jungle_sign', 'Jungle Sign', 'Jungle_Sign.png'),
(609, 'jungle_hanging_sign', 'Jungle Hanging Sign', 'Jungle_Hanging_Sign.png'),
(610, 'acacia_sign', 'Acacia Sign', 'Acacia_Sign.png'),
(611, 'acacia_hanging_sign', 'Acacia Hanging Sign', 'Acacia_Hanging_Sign.png'),
(612, 'dark_oak_sign', 'Dark Oak Sign', 'Dark_Oak_Sign.png'),
(613, 'dark_oak_hanging_sign', 'Dark Oak Hanging Sign', 'Dark_Oak_Hanging_Sign.png'),
(614, 'mangrove_sign', 'Mangrove Sign', 'Mangrove_Sign.png'),
(615, 'mangrove_hanging_sign', 'Mangrove Hanging Sign', 'Mangrove_Hanging_Sign.png'),
(616, 'cherry_sign', 'Cherry Sign', 'Cherry_Sign.png'),
(617, 'cherry_hanging_sign', 'Cherry Hanging Sign', 'Cherry_Hanging_Sign.png'),
(618, 'pale_oak_sign', 'Pale Oak Sign', 'Pale_Oak_Sign.png'),
(619, 'pale_oak_hanging_sign', 'Pale Oak Hanging Sign', 'Pale_Oak_Hanging_Sign.png'),
(620, 'bamboo_sign', 'Bamboo Sign', 'Bamboo_Sign.png'),
(621, 'bamboo_hanging_sign', 'Bamboo Hanging Sign', 'Bamboo_Hanging_Sign.png'),
(622, 'crimson_sign', 'Crimson Sign', 'Crimson_Sign.png'),
(623, 'crimson_hanging_sign', 'Crimson Hanging Sign', 'Crimson_Hanging_Sign.png'),
(624, 'warped_sign', 'Warped Sign', 'Warped_Sign.png'),
(625, 'warped_hanging_sign', 'Warped Hanging Sign', 'Warped_Hanging_Sign.png'),
(626, 'chest', 'Chest', 'Chest.png'),
(627, 'barrel', 'Barrel', 'Barrel.png'),
(628, 'ender_chest', 'Ender Chest', 'Ender_Chest.png'),
(629, 'respawn_anchor', 'Respawn Anchor', 'Respawn_Anchor.png'),
(630, 'eye_of_ender', 'Eye of Ender', 'Eye_of_Ender.png'),
(631, 'redstone_dust', 'Redstone Dust', 'Redstone_Dust.png'),
(632, 'redstone_repeater', 'Redstone Repeater', 'Redstone_Repeater.png'),
(633, 'redstone_comparator', 'Redstone Comparator', 'Redstone_Comparator.png'),
(634, 'target', 'Target', 'Target.png'),
(635, 'lever', 'Lever', 'Lever.png'),
(636, 'calibrated_sculk_sensor', 'Calibrated Sculk Sensor', 'Calibrated_Sculk_Sensor.png'),
(637, 'tripwire_hook', 'Tripwire Hook', 'Tripwire_Hook.png'),
(638, 'daylight_detector', 'Daylight Detector', 'Daylight_Detector.png'),
(639, 'piston', 'Piston', 'Piston.png'),
(640, 'sticky_piston', 'Sticky Piston', 'Sticky_Piston.png'),
(641, 'dispenser', 'Dispenser', 'Dispenser.png'),
(642, 'dropper', 'Dropper', 'Dropper.png'),
(643, 'crafter', 'Crafter', 'Crafter.png'),
(644, 'hopper', 'Hopper', 'Hopper.png'),
(645, 'trapped_chest', 'Trapped Chest', 'Trapped_Chest.png'),
(646, 'observer', 'Observer', 'Observer.png'),
(647, 'rail', 'Rail', 'Rail.png'),
(648, 'powered_rail', 'Powered Rail', 'Powered_Rail.png'),
(649, 'detector_rail', 'Detector Rail', 'Detector_Rail.png'),
(650, 'activator_rail', 'Activator Rail', 'Activator_Rail.png'),
(651, 'minecart', 'Minecart', 'Minecart.png'),
(652, 'minecart_with_hopper', 'Minecart with Hopper', 'Minecart_with_Hopper.png'),
(653, 'minecart_with_chest', 'Minecart with Chest', 'Minecart_with_Chest.png'),
(654, 'minecart_with_furnace', 'Minecart with Furnace', 'Minecart_with_Furnace.png'),
(655, 'minecart_with_tnt', 'Minecart with TNT', 'Minecart_with_TNT.png'),
(656, 'tnt', 'TNT', 'TNT.png'),
(657, 'wooden_shovel', 'Wooden Shovel', 'Wooden_Shovel.png'),
(658, 'wooden_pickaxe', 'Wooden Pickaxe', 'Wooden_Pickaxe.png'),
(659, 'wooden_axe', 'Wooden Axe', 'Wooden_Axe.png'),
(660, 'wooden_hoe', 'Wooden Hoe', 'Wooden_Hoe.png'),
(661, 'stone_shovel', 'Stone Shovel', 'Stone_Shovel.png'),
(662, 'stone_pickaxe', 'Stone Pickaxe', 'Stone_Pickaxe.png'),
(663, 'stone_axe', 'Stone Axe', 'Stone_Axe.png'),
(664, 'stone_hoe', 'Stone Hoe', 'Stone_Hoe.png'),
(665, 'iron_shovel', 'Iron Shovel', 'Iron_Shovel.png'),
(666, 'iron_pickaxe', 'Iron Pickaxe', 'Iron_Pickaxe.png'),
(667, 'iron_axe', 'Iron Axe', 'Iron_Axe.png'),
(668, 'iron_hoe', 'Iron Hoe', 'Iron_Hoe.png'),
(669, 'golden_shovel', 'Golden Shovel', 'Golden_Shovel.png'),
(670, 'golden_pickaxe', 'Golden Pickaxe', 'Golden_Pickaxe.png'),
(671, 'golden_axe', 'Golden Axe', 'Golden_Axe.png'),
(672, 'golden_hoe', 'Golden Hoe', 'Golden_Hoe.png'),
(673, 'diamond_shovel', 'Diamond Shovel', 'Diamond_Shovel.png'),
(674, 'diamond_pickaxe', 'Diamond Pickaxe', 'Diamond_Pickaxe.png'),
(675, 'diamond_axe', 'Diamond Axe', 'Diamond_Axe.png'),
(676, 'diamond_hoe', 'Diamond Hoe', 'Diamond_Hoe.png'),
(677, 'netherite_shovel', 'Netherite Shovel', 'Netherite_Shovel.png'),
(678, 'netherite_pickaxe', 'Netherite Pickaxe', 'Netherite_Pickaxe.png'),
(679, 'netherite_axe', 'Netherite Axe', 'Netherite_Axe.png'),
(680, 'netherite_hoe', 'Netherite Hoe', 'Netherite_Hoe.png'),
(681, 'bucket', 'Bucket', 'Bucket.png'),
(682, 'fishing_rod', 'Fishing Rod', 'Fishing_Rod.png'),
(683, 'flint_and_steel', 'Flint and Steel', 'Flint_and_Steel.png'),
(684, 'fire_charge', 'Fire Charge', 'Fire_Charge.png'),
(685, 'bone_meal', 'Bone Meal', 'Bone_Meal.png'),
(686, 'shears', 'Shears', 'Shears.png'),
(687, 'brush', 'Brush', 'Brush.png'),
(688, 'lead', 'Lead', 'Lead.png'),
(689, 'bundle', 'Bundle', 'Bundle.png'),
(690, 'white_bundle', 'White Bundle', 'White_Bundle.png'),
(691, 'light_gray_bundle', 'Light Gray Bundle', 'Light_Gray_Bundle.png'),
(692, 'gray_bundle', 'Gray Bundle', 'Gray_Bundle.png'),
(693, 'black_bundle', 'Black Bundle', 'Black_Bundle.png'),
(694, 'brown_bundle', 'Brown Bundle', 'Brown_Bundle.png'),
(695, 'red_bundle', 'Red Bundle', 'Red_Bundle.png'),
(696, 'orange_bundle', 'Orange Bundle', 'Orange_Bundle.png'),
(697, 'yellow_bundle', 'Yellow Bundle', 'Yellow_Bundle.png'),
(698, 'lime_bundle', 'Lime Bundle', 'Lime_Bundle.png'),
(699, 'green_bundle', 'Green Bundle', 'Green_Bundle.png'),
(700, 'cyan_bundle', 'Cyan Bundle', 'Cyan_Bundle.png'),
(701, 'light_blue_bundle', 'Light Blue Bundle', 'Light_Blue_Bundle.png'),
(702, 'blue_bundle', 'Blue Bundle', 'Blue_Bundle.png'),
(703, 'purple_bundle', 'Purple Bundle', 'Purple_Bundle.png'),
(704, 'magenta_bundle', 'Magenta Bundle', 'Magenta_Bundle.png'),
(705, 'pink_bundle', 'Pink Bundle', 'Pink_Bundle.png'),
(706, 'compass', 'Compass', 'Compass.png'),
(707, 'recovery_compass', 'Recovery Compass', 'Recovery_Compass.png'),
(708, 'clock', 'Clock', 'Clock.png'),
(709, 'spyglass', 'Spyglass', 'Spyglass.png'),
(710, 'empty_map', 'Empty Map', 'Empty_Map.png'),
(711, 'book_and_quill', 'Book and Quill', 'Book_and_Quill.png'),
(712, 'wind_charge', 'Wind Charge', 'Wind_Charge.png'),
(713, 'elytra', 'Elytra', 'Elytra.png'),
(714, 'firework_rocket', 'Firework Rocket', 'Firework_Rocket.png'),
(715, 'carrot_on_a_stick', 'Carrot on a Stick', 'Carrot_on_a_Stick.png'),
(716, 'warped_fungus_on_a_stick', 'Warped Fungus on a Stick', 'Warped_Fungus_on_a_Stick.png'),
(717, 'oak_boat', 'Oak Boat', 'Oak_Boat.png'),
(718, 'oak_boat_with_chest', 'Oak Boat with Chest', 'Oak_Boat_with_Chest.png'),
(719, 'spruce_boat', 'Spruce Boat', 'Spruce_Boat.png'),
(720, 'spruce_boat_with_chest', 'Spruce Boat with Chest', 'Spruce_Boat_with_Chest.png'),
(721, 'birch_boat', 'Birch Boat', 'Birch_Boat.png'),
(722, 'birch_boat_with_chest', 'Birch Boat with Chest', 'Birch_Boat_with_Chest.png'),
(723, 'jungle_boat', 'Jungle Boat', 'Jungle_Boat.png'),
(724, 'jungle_boat_with_chest', 'Jungle Boat with Chest', 'Jungle_Boat_with_Chest.png'),
(725, 'acacia_boat', 'Acacia Boat', 'Acacia_Boat.png'),
(726, 'acacia_boat_with_chest', 'Acacia Boat with Chest', 'Acacia_Boat_with_Chest.png'),
(727, 'dark_oak_boat', 'Dark Oak Boat', 'Dark_Oak_Boat.png'),
(728, 'dark_oak_boat_with_chest', 'Dark Oak Boat with Chest', 'Dark_Oak_Boat_with_Chest.png'),
(729, 'mangrove_boat', 'Mangrove Boat', 'Mangrove_Boat.png'),
(730, 'mangrove_boat_with_chest', 'Mangrove Boat with Chest', 'Mangrove_Boat_with_Chest.png'),
(731, 'cherry_boat', 'Cherry Boat', 'Cherry_Boat.png'),
(732, 'cherry_boat_with_chest', 'Cherry Boat with Chest', 'Cherry_Boat_with_Chest.png'),
(733, 'pale_oak_boat', 'Pale Oak Boat', 'Pale_Oak_Boat.png'),
(734, 'pale_oak_boat_with_chest', 'Pale Oak Boat with Chest', 'Pale_Oak_Boat_with_Chest.png'),
(735, 'bamboo_raft', 'Bamboo Raft', 'Bamboo_Raft.png'),
(736, 'bamboo_raft_with_chest', 'Bamboo Raft with Chest', 'Bamboo_Raft_with_Chest.png'),
(737, 'music_disc', 'Music Disc', 'Music_Disc.png'),
(738, 'wooden_sword', 'Wooden Sword', 'Wooden_Sword.png'),
(739, 'stone_sword', 'Stone Sword', 'Stone_Sword.png'),
(740, 'iron_sword', 'Iron Sword', 'Iron_Sword.png'),
(741, 'golden_sword', 'Golden Sword', 'Golden_Sword.png'),
(742, 'diamond_sword', 'Diamond Sword', 'Diamond_Sword.png'),
(743, 'netherite_sword', 'Netherite Sword', 'Netherite_Sword.png'),
(744, 'trident', 'Trident', 'Trident.png'),
(745, 'mace', 'Mace', 'Mace.png'),
(746, 'shield', 'Shield', 'Shield.png');
INSERT INTO `collections` (`id`, `item_id`, `name`, `src`) VALUES
(747, 'white_shield', 'White Shield', 'White_Shield.png'),
(748, 'light_gray_shield', 'Light Gray Shield', 'Light_Gray_Shield.png'),
(749, 'gray_shield', 'Gray Shield', 'Gray_Shield.png'),
(750, 'black_shield', 'Black Shield', 'Black_Shield.png'),
(751, 'brown_shield', 'Brown Shield', 'Brown_Shield.png'),
(752, 'red_shield', 'Red Shield', 'Red_Shield.png'),
(753, 'orange_shield', 'Orange Shield', 'Orange_Shield.png'),
(754, 'yellow_shield', 'Yellow Shield', 'Yellow_Shield.png'),
(755, 'lime_shield', 'Lime Shield', 'Lime_Shield.png'),
(756, 'green_shield', 'Green Shield', 'Green_Shield.png'),
(757, 'cyan_shield', 'Cyan Shield', 'Cyan_Shield.png'),
(758, 'light_blue_shield', 'Light Blue Shield', 'Light_Blue_Shield.png'),
(759, 'blue_shield', 'Blue Shield', 'Blue_Shield.png'),
(760, 'purple_shield', 'Purple Shield', 'Purple_Shield.png'),
(761, 'magenta_shield', 'Magenta Shield', 'Magenta_Shield.png'),
(762, 'pink_shield', 'Pink Shield', 'Pink_Shield.png'),
(763, 'leather_cap', 'Leather Cap', 'Leather_Cap.png'),
(764, 'leather_tunic', 'Leather Tunic', 'Leather_Tunic.png'),
(765, 'leather_pants', 'Leather Pants', 'Leather_Pants.png'),
(766, 'leather_boots', 'Leather Boots', 'Leather_Boots.png'),
(767, 'chainmail_helmet', 'Chainmail Helmet', 'Chainmail_Helmet.png'),
(768, 'chainmail_chestplate', 'Chainmail Chestplate', 'Chainmail_Chestplate.png'),
(769, 'chainmail_leggings', 'Chainmail Leggings', 'Chainmail_Leggings.png'),
(770, 'chainmail_boots', 'Chainmail Boots', 'Chainmail_Boots.png'),
(771, 'iron_helmet', 'Iron Helmet', 'Iron_Helmet.png'),
(772, 'iron_chestplate', 'Iron Chestplate', 'Iron_Chestplate.png'),
(773, 'iron_leggings', 'Iron Leggings', 'Iron_Leggings.png'),
(774, 'iron_boots', 'Iron Boots', 'Iron_Boots.png'),
(775, 'golden_helmet', 'Golden Helmet', 'Golden_Helmet.png'),
(776, 'golden_chestplate', 'Golden Chestplate', 'Golden_Chestplate.png'),
(777, 'golden_leggings', 'Golden Leggings', 'Golden_Leggings.png'),
(778, 'golden_boots', 'Golden Boots', 'Golden_Boots.png'),
(779, 'diamond_helmet', 'Diamond Helmet', 'Diamond_Helmet.png'),
(780, 'diamond_chestplate', 'Diamond Chestplate', 'Diamond_Chestplate.png'),
(781, 'diamond_leggings', 'Diamond Leggings', 'Diamond_Leggings.png'),
(782, 'diamond_boots', 'Diamond Boots', 'Diamond_Boots.png'),
(783, 'netherite_helmet', 'Netherite Helmet', 'Netherite_Helmet.png'),
(784, 'netherite_chestplate', 'Netherite Chestplate', 'Netherite_Chestplate.png'),
(785, 'netherite_leggings', 'Netherite Leggings', 'Netherite_Leggings.png'),
(786, 'netherite_boots', 'Netherite Boots', 'Netherite_Boots.png'),
(787, 'turtle_shell', 'Turtle Shell', 'Turtle_Shell.png'),
(788, 'leather_horse_armor', 'Leather Horse Armor', 'Leather_Horse_Armor.png'),
(789, 'iron_horse_armor', 'Iron Horse Armor', 'Iron_Horse_Armor.png'),
(790, 'golden_horse_armor', 'Golden Horse Armor', 'Golden_Horse_Armor.png'),
(791, 'diamond_horse_armor', 'Diamond Horse Armor', 'Diamond_Horse_Armor.png'),
(792, 'wolf_armor', 'Wolf Armor', 'Wolf_Armor.png'),
(793, 'bow', 'Bow', 'Bow.png'),
(794, 'crossbow', 'Crossbow', 'Crossbow.png'),
(795, 'arrow', 'Arrow', 'Arrow.png'),
(796, 'spectral_arrow', 'Spectral Arrow', 'Spectral_Arrow.png'),
(797, 'arrow_of_splashing', 'Arrow of Splashing', 'Arrow_of_Splashing.png'),
(798, 'tipped_arrow', 'Tipped Arrow', 'Arrow_of_Splashing.png'),
(799, 'arrow_of_night_vision', 'Arrow of Night Vision', 'Arrow_of_Night_Vision.png'),
(800, 'arrow_of_invisibility', 'Arrow of Invisibility', 'Arrow_of_Invisibility.png'),
(801, 'arrow_of_leaping', 'Arrow of Leaping', 'Arrow_of_Leaping.png'),
(802, 'arrow_of_fire_resistance', 'Arrow of Fire Resistance', 'Arrow_of_Fire_Resistance.png'),
(803, 'arrow_of_swiftness', 'Arrow of Swiftness', 'Arrow_of_Swiftness.png'),
(804, 'arrow_of_slowness', 'Arrow of Slowness', 'Arrow_of_Slowness.png'),
(805, 'arrow_of_the_turtle_master', 'Arrow of the Turtle Master', 'Arrow_of_the_Turtle_Master.png'),
(806, 'arrow_of_water_breathing', 'Arrow of Water Breathing', 'Arrow_of_Water_Breathing.png'),
(807, 'arrow_of_healing', 'Arrow of Healing', 'Arrow_of_Healing.png'),
(808, 'arrow_of_harming', 'Arrow of Harming', 'Arrow_of_Harming.png'),
(809, 'arrow_of_poison', 'Arrow of Poison', 'Arrow_of_Poison.png'),
(810, 'arrow_of_regeneration', 'Arrow of Regeneration', 'Arrow_of_Regeneration.png'),
(811, 'arrow_of_strength', 'Arrow of Strength', 'Arrow_of_Strength.png'),
(812, 'arrow_of_weakness', 'Arrow of Weakness', 'Arrow_of_Weakness.png'),
(813, 'arrow_of_luck', 'Arrow of Luck', 'Arrow_of_Luck.png'),
(814, 'arrow_of_slow_falling', 'Arrow of Slow Falling', 'Arrow_of_Slow_Falling.png'),
(815, 'arrow_of_wind_charging', 'Arrow of Wind Charging', 'Arrow_of_Wind_Charging.png'),
(816, 'arrow_of_weaving', 'Arrow of Weaving', 'Arrow_of_Weaving.png'),
(817, 'arrow_of_oozing', 'Arrow of Oozing', 'Arrow_of_Oozing.png'),
(818, 'arrow_of_infestation', 'Arrow of Infestation', 'Arrow_of_Infestation.png'),
(819, 'golden_apple', 'Golden Apple', 'Golden_Apple.png'),
(820, 'golden_carrot', 'Golden Carrot', 'Golden_Carrot.png'),
(821, 'dried_kelp', 'Dried Kelp', 'Dried_Kelp.png'),
(822, 'bread', 'Bread', 'Bread.png'),
(823, 'cookie', 'Cookie', 'Cookie.png'),
(824, 'cake', 'Cake', 'Cake.png'),
(825, 'pumpkin_pie', 'Pumpkin Pie', 'Pumpkin_Pie.png'),
(826, 'mushroom_stew', 'Mushroom Stew', 'Mushroom_Stew.png'),
(827, 'beetroot_soup', 'Beetroot Soup', 'Beetroot_Soup.png'),
(828, 'rabbit_stew', 'Rabbit Stew', 'Rabbit_Stew.png'),
(829, 'suspicious_stew', 'Suspicious Stew', 'Suspicious_Stew.png'),
(830, 'honey_bottle', 'Honey Bottle', 'Honey_Bottle.png'),
(831, 'coal', 'Coal', 'Coal.png'),
(832, 'raw_iron', 'Raw Iron', 'Raw_Iron.png'),
(833, 'raw_copper', 'Raw Copper', 'Raw_Copper.png'),
(834, 'raw_gold', 'Raw Gold', 'Raw_Gold.png'),
(835, 'emerald', 'Emerald', 'Emerald.png'),
(836, 'lapis_lazuli', 'Lapis Lazuli', 'Lapis_Lazuli.png'),
(837, 'diamond', 'Diamond', 'Diamond.png'),
(838, 'iron_nugget', 'Iron Nugget', 'Iron_Nugget.png'),
(839, 'gold_nugget', 'Gold Nugget', 'Gold_Nugget.png'),
(840, 'iron_ingot', 'Iron Ingot', 'Iron_Ingot.png'),
(841, 'copper_ingot', 'Copper Ingot', 'Copper_Ingot.png'),
(842, 'gold_ingot', 'Gold Ingot', 'Gold_Ingot.png'),
(843, 'netherite_ingot', 'Netherite Ingot', 'Netherite_Ingot.png'),
(844, 'stick', 'Stick', 'Stick.png'),
(845, 'wheat', 'Wheat', 'Wheat.png'),
(846, 'leather', 'Leather', 'Leather.png'),
(847, 'resin_clump', 'Resin Clump', 'Resin_Clump.png'),
(848, 'slimeball', 'Slimeball', 'Slimeball.png'),
(849, 'white_dye', 'White Dye', 'White_Dye.png'),
(850, 'light_gray_dye', 'Light Gray Dye', 'Light_Gray_Dye.png'),
(851, 'gray_dye', 'Gray Dye', 'Gray_Dye.png'),
(852, 'black_dye', 'Black Dye', 'Black_Dye.png'),
(853, 'brown_dye', 'Brown Dye', 'Brown_Dye.png'),
(854, 'red_dye', 'Red Dye', 'Red_Dye.png'),
(855, 'orange_dye', 'Orange Dye', 'Orange_Dye.png'),
(856, 'yellow_dye', 'Yellow Dye', 'Yellow_Dye.png'),
(857, 'lime_dye', 'Lime Dye', 'Lime_Dye.png'),
(858, 'cyan_dye', 'Cyan Dye', 'Cyan_Dye.png'),
(859, 'light_blue_dye', 'Light Blue Dye', 'Light_Blue_Dye.png'),
(860, 'blue_dye', 'Blue Dye', 'Blue_Dye.png'),
(861, 'magenta_dye', 'Magenta Dye', 'Magenta_Dye.png'),
(862, 'purple_dye', 'Purple Dye', 'Purple_Dye.png'),
(863, 'pink_dye', 'Pink Dye', 'Pink_Dye.png'),
(864, 'bowl', 'Bowl', 'Bowl.png'),
(865, 'paper', 'Paper', 'Paper.png'),
(866, 'book', 'Book', 'Book.png'),
(867, 'firework_star', 'Firework Star', 'Firework_Star.png'),
(868, 'glass_bottle', 'Glass Bottle', 'Glass_Bottle.png'),
(869, 'fermented_spider_eye', 'Fermented Spider Eye', 'Fermented_Spider_Eye.png'),
(870, 'blaze_powder', 'Blaze Powder', 'Blaze_Powder.png'),
(871, 'sugar', 'Sugar', 'Sugar.png'),
(872, 'glistering_melon_slice', 'Glistering Melon Slice', 'Glistering_Melon_Slice.png'),
(873, 'magma_cream', 'Magma Cream', 'Magma_Cream.png'),
(874, 'field_masoned_banner_pattern', 'Field Masoned Banner Pattern', 'Field_Masoned_Banner_Pattern.png'),
(875, 'bordure_indented_banner_pattern', 'Bordure Indented Banner Pattern', 'Bordure_Indented_Banner_Pattern.png'),
(876, 'flower_charge_banner_pattern', 'Flower Charge Banner Pattern', 'Flower_Charge_Banner_Pattern.png'),
(877, 'creeper_charge_banner_pattern', 'Creeper Charge Banner Pattern', 'Creeper_Charge_Banner_Pattern.png'),
(878, 'skull_charge_banner_pattern', 'Skull Charge Banner Pattern', 'Skull_Charge_Banner_Pattern.png'),
(879, 'thing_banner_pattern', 'Thing Banner Pattern', 'Thing_Banner_Pattern.png'),
(880, 'netherite_upgrade', 'Smithing Template', 'Netherite_Upgrade.png'),
(881, 'spire_armor_trim', 'Smithing Template', 'Spire_Armor_Trim.png'),
(882, 'rib_armor_trim', 'Smithing Template', 'Rib_Armor_Trim.png'),
(883, 'snout_armor_trim', 'Smithing Template', 'Snout_Armor_Trim.png'),
(884, 'tide_armor_trim', 'Smithing Template', 'Tide_Armor_Trim.png'),
(885, 'silence_armor_trim', 'Smithing Template', 'Silence_Armor_Trim.png'),
(886, 'ward_armor_trim', 'Smithing Template', 'Ward_Armor_Trim.png'),
(887, 'wild_armor_trim', 'Smithing Template', 'Wild_Armor_Trim.png'),
(888, 'sentry_armor_trim', 'Smithing Template', 'Sentry_Armor_Trim.png'),
(889, 'vex_armor_trim', 'Smithing Template', 'Vex_Armor_Trim.png'),
(890, 'coast_armor_trim', 'Smithing Template', 'Coast_Armor_Trim.png'),
(891, 'shaper_armor_trim', 'Smithing Template', 'Shaper_Armor_Trim.png'),
(892, 'raiser_armor_trim', 'Smithing Template', 'Raiser_Armor_Trim.png'),
(893, 'wayfinder_armor_trim', 'Smithing Template', 'Wayfinder_Armor_Trim.png'),
(894, 'host_armor_trim', 'Smithing Template', 'Host_Armor_Trim.png'),
(895, 'flow_armor_trim', 'Smithing Template', 'Flow_Armor_Trim.png'),
(896, 'eye_armor_trim', 'Smithing Template', 'Eye_Armor_Trim.png'),
(897, 'dune_armor_trim', 'Smithing Template', 'Dune_Armor_Trim.png'),
(898, 'bolt_armor_trim', 'Smithing Template', 'Bolt_Armor_Trim.png'),
(899, 'creaking_heart', 'Creaking Heart', 'Creaking_Heart.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `controls`
--

CREATE TABLE `controls` (
  `id` int(11) NOT NULL,
  `settings` int(11) NOT NULL,
  `is_tap_mode` tinyint(1) NOT NULL DEFAULT 0,
  `copy` varchar(3) NOT NULL DEFAULT 'LMB',
  `remove` varchar(3) NOT NULL DEFAULT 'RMB'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `controls`
--

INSERT INTO `controls` (`id`, `settings`, `is_tap_mode`, `copy`, `remove`) VALUES
(1, 1, 0, 'LMB', 'RMB'),
(2, 2, 0, 'LMB', 'RMB'),
(3, 3, 0, 'LMB', 'RMB'),
(4, 4, 0, 'LMB', 'RMB'),
(5, 5, 0, 'LMB', 'RMB'),
(6, 6, 0, 'LMB', 'RMB'),
(7, 7, 0, 'LMB', 'RMB'),
(8, 8, 0, 'LMB', 'RMB'),
(9, 9, 0, 'LMB', 'RMB'),
(10, 10, 0, 'LMB', 'RMB'),
(11, 11, 0, 'LMB', 'RMB'),
(12, 12, 0, 'LMB', 'RMB'),
(13, 13, 0, 'LMB', 'RMB'),
(14, 14, 0, 'LMB', 'RMB'),
(15, 15, 0, 'LMB', 'RMB'),
(16, 16, 0, 'LMB', 'RMB'),
(17, 17, 0, 'LMB', 'RMB'),
(18, 18, 0, 'LMB', 'RMB'),
(19, 19, 0, 'LMB', 'RMB'),
(20, 20, 0, 'LMB', 'RMB'),
(21, 21, 0, 'LMB', 'RMB'),
(22, 22, 0, 'LMB', 'RMB'),
(23, 23, 0, 'LMB', 'RMB'),
(24, 24, 0, 'LMB', 'RMB'),
(25, 25, 0, 'LMB', 'RMB'),
(26, 26, 0, 'LMB', 'RMB'),
(27, 27, 0, 'LMB', 'RMB'),
(28, 28, 0, 'LMB', 'RMB'),
(29, 29, 0, 'LMB', 'RMB'),
(30, 30, 0, 'LMB', 'RMB'),
(31, 31, 0, 'LMB', 'RMB'),
(32, 32, 0, 'LMB', 'RMB'),
(33, 33, 0, 'LMB', 'RMB'),
(34, 34, 0, 'LMB', 'RMB'),
(35, 35, 0, 'LMB', 'RMB'),
(36, 36, 0, 'LMB', 'RMB'),
(37, 37, 0, 'LMB', 'RMB'),
(38, 38, 0, 'LMB', 'RMB'),
(39, 39, 0, 'LMB', 'RMB'),
(40, 40, 0, 'LMB', 'RMB'),
(41, 41, 0, 'LMB', 'RMB'),
(42, 42, 0, 'LMB', 'RMB');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `crafting_table_slots`
--

CREATE TABLE `crafting_table_slots` (
  `id` int(11) NOT NULL,
  `tip` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `crafting_table_slots`
--

INSERT INTO `crafting_table_slots` (`id`, `tip`, `position`, `content`, `status`) VALUES
(16, 4, 0, 'paper', 1),
(17, 4, 1, 'bricks', 1),
(22, 6, 2, 'crying_obsidian', 1),
(23, 6, 8, 'crying_obsidian', 1),
(24, 6, 0, 'crying_obsidian', 1),
(25, 6, 1, 'crying_obsidian', 1),
(26, 6, 6, 'crying_obsidian', 1),
(27, 6, 5, 'glowstone', 1),
(28, 6, 4, 'glowstone', 1),
(29, 6, 3, 'glowstone', 1),
(30, 6, 7, 'crying_obsidian', 1),
(60, 12, 3, 'oak_planks', 3),
(61, 12, 5, 'oak_planks', 3),
(62, 12, 8, 'oak_planks', 3),
(63, 12, 7, 'oak_planks', 3),
(64, 12, 6, 'oak_planks', 3),
(65, 13, 0, 'obsidian', 1),
(66, 13, 2, 'obsidian', 1),
(67, 13, 6, 'obsidian', 1),
(68, 13, 4, 'eye_of_ender', 1),
(69, 13, 7, 'obsidian', 1),
(70, 13, 3, 'obsidian', 1),
(71, 13, 1, 'obsidian', 1),
(72, 13, 5, 'obsidian', 1),
(73, 13, 8, 'obsidian', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `difficulties`
--

CREATE TABLE `difficulties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `difficulties`
--

INSERT INTO `difficulties` (`id`, `name`, `color_code`) VALUES
(1, 'Beginner', '55FF55'),
(2, 'Easy', '00AA00'),
(3, 'Normal', 'FFFF55'),
(4, 'Hard', 'FFAA00'),
(5, 'Insane', 'AA0000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gamemodes`
--

CREATE TABLE `gamemodes` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `difficulty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `gamemodes`
--

INSERT INTO `gamemodes` (`id`, `icon`, `name`, `description`, `difficulty`) VALUES
(1, 'Tutorial.png', 'Tutorial', 'In this mode, players can learn the game\'s mechanics and controls.', 1),
(2, 'Classic.png', 'Classic', 'In this mode, you receive recipes as riddles, but only those that are not made by one type of material. Four different hints are available to help you solve them.', 3),
(3, 'Daily.png', 'Daily', 'Similar to Classic, but can only be played once per day. Keep your streak going!', 3),
(4, 'AllInOne.png', 'All in One', 'In this mode, you can receive any recipe as a riddle. Four different hints are available to help you solve it.', 4),
(5, 'Pocket.png', 'Pocket', 'Similar to All in One, but you must work with a 2x2 crafting table to solve the riddles.', 3),
(6, 'Resource.png', 'Resource', 'Similar to Classic, but with a limited supply of materials.', 2),
(7, 'Hardcore.png', 'Hardcore', 'Similar to Classic, but no hints are available, and the game is played with health points.', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `player` int(11) NOT NULL,
  `riddle` varchar(255) NOT NULL,
  `date` datetime(3) NOT NULL,
  `is_solved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `games`
--

INSERT INTO `games` (`id`, `type`, `player`, `riddle`, `date`, `is_solved`) VALUES
(1, 3, 2, 'creakingHeart0', '2025-03-20 14:30:42.000', 1),
(2, 3, 2, 'cookie0', '2025-03-22 14:31:38.000', 1),
(3, 3, 2, 'cake0', '2025-03-23 14:35:32.000', 1),
(4, 3, 2, 'bannerPatterns0', '2020-03-24 14:36:53.000', 1),
(5, 3, 2, 'suspiciousStew0', '2025-03-24 14:38:33.000', 1),
(6, 2, 22, 'respawnAnchor0', '2025-03-24 15:01:40.000', 1),
(9, 1, 72, 'axe0', '2025-04-02 15:36:57.372', 1),
(11, 3, 2, 'enderChest0', '2025-04-02 15:40:01.626', 1),
(13, 5, 2, 'fireworkStar0', '2025-04-02 15:56:18.009', 0),
(14, 6, 2, 'candle0', '2025-04-02 15:56:26.787', 0),
(15, 1, 2, 'axe0', '2025-04-02 15:56:30.625', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `guess_types`
--

CREATE TABLE `guess_types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `guess_types`
--

INSERT INTO `guess_types` (`id`, `type`) VALUES
(1, 'correct'),
(2, 'semi-correct'),
(3, 'wrong');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hints`
--

CREATE TABLE `hints` (
  `id` int(11) NOT NULL,
  `game` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `hints`
--

INSERT INTO `hints` (`id`, `game`, `number`, `content`) VALUES
(13, 4, 0, 'This recipe requires minimum 2 slots.'),
(14, 4, 1, 'At least 1 material is shared with this recipe: Mossy Stone Bricks'),
(15, 4, 2, 'Random material from this recipe: Paper'),
(16, 4, 3, 'The item you need to think about is Bordure Indented Banner Pattern'),
(21, 6, 0, 'This recipe requires minimum 9 slots.'),
(22, 6, 3, 'The item you need to think about is Respawn Anchor'),
(23, 6, 1, 'At least 1 material is shared with this recipe: Redstone Lamp'),
(24, 6, 2, 'Random material from this recipe: Crying Obsidian'),
(41, 11, 2, 'Random material from this recipe: Obsidian'),
(42, 11, 3, 'The item you need to think about is Ender Chest'),
(43, 11, 0, 'This recipe requires minimum 9 slots.'),
(44, 11, 1, 'At least 1 material is shared with this recipe: Enchanting Table'),
(49, 13, 0, 'This recipe requires minimum 2 slots.'),
(50, 13, 1, 'At least 1 material is shared with this recipe: GA Logo'),
(51, 13, 3, 'The item you need to think about is Firework Star'),
(52, 13, 2, 'Random material from this recipe: Gunpowder'),
(53, 14, 0, 'This recipe requires minimum 2 slots.'),
(54, 14, 2, 'Random material from this recipe: String'),
(55, 14, 3, 'The item you need to think about is Candle'),
(56, 14, 1, 'At least 1 material is shared with this recipe: Lead'),
(57, 15, 0, 'This recipe requires minimum 5 slots.'),
(58, 15, 3, 'The item you need to think about is Stone Axe'),
(59, 15, 2, 'Random material from this recipe: Stick'),
(60, 15, 1, 'At least 1 material is shared with this recipe: Armor Stand');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `inventories_items`
--

CREATE TABLE `inventories_items` (
  `id` int(11) NOT NULL,
  `game` int(11) NOT NULL,
  `item` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `inventories_items`
--

INSERT INTO `inventories_items` (`id`, `game`, `item`) VALUES
(1, 14, 'cobblestone'),
(2, 14, 'spruce_planks'),
(3, 14, 'copper_ingot'),
(4, 14, 'string'),
(5, 14, 'slimeball'),
(6, 14, 'gold_ingot'),
(7, 14, 'iron_ingot'),
(8, 14, 'crimson_slab'),
(9, 14, 'redstone_dust'),
(10, 14, 'vex_armor_trim'),
(11, 14, 'stone_pressure_plate'),
(12, 14, 'honeycomb'),
(13, 14, 'glass'),
(14, 14, 'stick'),
(15, 14, 'block_of_iron'),
(16, 14, 'smooth_stone_slab'),
(17, 14, 'diamond'),
(18, 14, 'nether_quartz'),
(19, 14, 'oxidized_copper_door'),
(20, 14, 'feather');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `items`
--

INSERT INTO `items` (`id`, `item_id`, `name`, `src`) VALUES
(1, 'oak_log', 'Oak Log', 'Oak_Log.png'),
(2, 'oak_wood', 'Oak Wood', 'Oak_Wood.png'),
(3, 'stripped_oak_log', 'Stripped Oak Log', 'Stripped_Oak_Log.png'),
(4, 'stripped_oak_wood', 'Stripped Oak Wood', 'Stripped_Oak_Wood.png'),
(5, 'oak_planks', 'Oak Planks', 'Oak_Planks.png'),
(6, 'oak_slab', 'Oak Slab', 'Oak_Slab.png'),
(7, 'spruce_log', 'Spruce Log', 'Spruce_Log.png'),
(8, 'spruce_wood', 'Spruce Wood', 'Spruce_Wood.png'),
(9, 'stripped_spruce_log', 'Stripped Spruce Log', 'Stripped_Spruce_Log.png'),
(10, 'stripped_spruce_wood', 'Stripped Spruce Wood', 'Stripped_Spruce_Wood.png'),
(11, 'spruce_planks', 'Spruce Planks', 'Spruce_Planks.png'),
(12, 'spruce_slab', 'Spruce Slab', 'Spruce_Slab.png'),
(13, 'birch_log', 'Birch Log', 'Birch_Log.png'),
(14, 'birch_wood', 'Birch Wood', 'Birch_Wood.png'),
(15, 'stripped_birch_log', 'Stripped Birch Log', 'Stripped_Birch_Log.png'),
(16, 'stripped_birch_wood', 'Stripped Birch Wood', 'Stripped_Birch_Wood.png'),
(17, 'birch_planks', 'Birch Planks', 'Birch_Planks.png'),
(18, 'birch_slab', 'Birch Slab', 'Birch_Slab.png'),
(19, 'jungle_log', 'Jungle Log', 'Jungle_Log.png'),
(20, 'jungle_wood', 'Jungle Wood', 'Jungle_Wood.png'),
(21, 'stripped_jungle_log', 'Stripped Jungle Log', 'Stripped_Jungle_Log.png'),
(22, 'stripped_jungle_wood', 'Stripped Jungle Wood', 'Stripped_Jungle_Wood.png'),
(23, 'jungle_planks', 'Jungle Planks', 'Jungle_Planks.png'),
(24, 'jungle_slab', 'Jungle Slab', 'Jungle_Slab.png'),
(25, 'acacia_log', 'Acacia Log', 'Acacia_Log.png'),
(26, 'acacia_wood', 'Acacia Wood', 'Acacia_Wood.png'),
(27, 'stripped_acacia_log', 'Stripped Acacia Log', 'Stripped_Acacia_Log.png'),
(28, 'stripped_acacia_wood', 'Stripped Acacia Wood', 'Stripped_Acacia_Wood.png'),
(29, 'acacia_planks', 'Acacia Planks', 'Acacia_Planks.png'),
(30, 'acacia_slab', 'Acacia Slab', 'Acacia_Slab.png'),
(31, 'dark_oak_log', 'Dark Oak Log', 'Dark_Oak_Log.png'),
(32, 'dark_oak_wood', 'Dark Oak Wood', 'Dark_Oak_Wood.png'),
(33, 'stripped_dark_oak_log', 'Stripped Dark Oak Log', 'Stripped_Dark_Oak_Log.png'),
(34, 'stripped_dark_oak_wood', 'Stripped Dark Oak Wood', 'Stripped_Dark_Oak_Wood.png'),
(35, 'dark_oak_planks', 'Dark Oak Planks', 'Dark_Oak_Planks.png'),
(36, 'dark_oak_slab', 'Dark Oak Slab', 'Dark_Oak_Slab.png'),
(37, 'mangrove_log', 'Mangrove Log', 'Mangrove_Log.png'),
(38, 'mangrove_wood', 'Mangrove Wood', 'Mangrove_Wood.png'),
(39, 'stripped_mangrove_log', 'Stripped Mangrove Log', 'Stripped_Mangrove_Log.png'),
(40, 'stripped_mangrove_wood', 'Stripped Mangrove Wood', 'Stripped_Mangrove_Wood.png'),
(41, 'mangrove_planks', 'Mangrove Planks', 'Mangrove_Planks.png'),
(42, 'mangrove_slab', 'Mangrove Slab', 'Mangrove_Slab.png'),
(43, 'cherry_log', 'Cherry Log', 'Cherry_Log.png'),
(44, 'cherry_wood', 'Cherry Wood', 'Cherry_Wood.png'),
(45, 'stripped_cherry_log', 'Stripped Cherry Log', 'Stripped_Cherry_Log.png'),
(46, 'stripped_cherry_wood', 'Stripped Cherry Wood', 'Stripped_Cherry_Wood.png'),
(47, 'cherry_planks', 'Cherry Planks', 'Cherry_Planks.png'),
(48, 'cherry_slab', 'Cherry Slab', 'Cherry_Slab.png'),
(49, 'pale_oak_log', 'Pale Oak Log', 'Pale_Oak_Log.png'),
(50, 'pale_oak_wood', 'Pale Oak Wood', 'Pale_Oak_Wood.png'),
(51, 'stripped_pale_oak_log', 'Stripped Pale Oak Log', 'Stripped_Pale_Oak_Log.png'),
(52, 'stripped_pale_oak_wood', 'Stripped Pale Oak Wood', 'Stripped_Pale_Oak_Wood.png'),
(53, 'pale_oak_planks', 'Pale Oak Planks', 'Pale_Oak_Planks.png'),
(54, 'pale_oak_slab', 'Pale Oak Slab', 'Pale_Oak_Slab.png'),
(55, 'block_of_bamboo', 'Block of Bamboo', 'Block_of_Bamboo.png'),
(56, 'block_of_stripped_bamboo', 'Block of Stripped Bamboo', 'Block_of_Stripped_Bamboo.png'),
(57, 'bamboo_planks', 'Bamboo Planks', 'Bamboo_Planks.png'),
(58, 'bamboo_mosaic', 'Bamboo Mosaic', 'Bamboo_Mosaic.png'),
(59, 'bamboo_slab', 'Bamboo Slab', 'Bamboo_Slab.png'),
(60, 'crimson_stem', 'Crimson Stem', 'Crimson_Stem.png'),
(61, 'crimson_hyphae', 'Crimson Hyphae', 'Crimson_Hyphae.png'),
(62, 'stripped_crimson_stem', 'Stripped Crimson Stem', 'Stripped_Crimson_Stem.png'),
(63, 'stripped_crimson_hyphae', 'Stripped Crimson Hyphae', 'Stripped_Crimson_Hyphae.png'),
(64, 'crimson_planks', 'Crimson Planks', 'Crimson_Planks.png'),
(65, 'crimson_slab', 'Crimson Slab', 'Crimson_Slab.png'),
(66, 'warped_stem', 'Warped Stem', 'Warped_Stem.png'),
(67, 'warped_hyphae', 'Warped Hyphae', 'Warped_Hyphae.png'),
(68, 'stripped_warped_stem', 'Stripped Warped Stem', 'Stripped_Warped_Stem.png'),
(69, 'stripped_warped_hyphae', 'Stripped Warped Hyphae', 'Stripped_Warped_Hyphae.png'),
(70, 'warped_planks', 'Warped Planks', 'Warped_Planks.png'),
(71, 'warped_slab', 'Warped Slab', 'Warped_Slab.png'),
(72, 'stone', 'Stone', 'Stone.png'),
(73, 'stone_slab', 'Stone Slab', 'Stone_Slab.png'),
(74, 'stone_pressure_plate', 'Stone Pressure Plate', 'Stone_Pressure_Plate.png'),
(75, 'cobblestone', 'Cobblestone', 'Cobblestone.png'),
(76, 'mossy_cobblestone', 'Mossy Cobblestone', 'Mossy_Cobblestone.png'),
(77, 'smooth_stone', 'Smooth Stone', 'Smooth_Stone.png'),
(78, 'smooth_stone_slab', 'Smooth Stone Slab', 'Smooth_Stone_Slab.png'),
(79, 'stone_bricks', 'Stone Bricks', 'Stone_Bricks.png'),
(80, 'stone_brick_slab', 'Stone Brick Slab', 'Stone_Brick_Slab.png'),
(81, 'chiseled_stone_bricks', 'Chiseled Stone Bricks', 'Chiseled_Stone_Bricks.png'),
(82, 'mossy_stone_bricks', 'Mossy Stone Bricks', 'Mossy_Stone_Bricks.png'),
(83, 'granite', 'Granite', 'Granite.png'),
(84, 'polished_granite', 'Polished Granite', 'Polished_Granite.png'),
(85, 'diorite', 'Diorite', 'Diorite.png'),
(86, 'polished_diorite', 'Polished Diorite', 'Polished_Diorite.png'),
(87, 'andesite', 'Andesite', 'Andesite.png'),
(88, 'polished_andesite', 'Polished Andesite', 'Polished_Andesite.png'),
(89, 'cobbled_deepslate', 'Cobbled Deepslate', 'Cobbled_Deepslate.png'),
(90, 'cobbled_deepslate_slab', 'Cobbled Deepslate Slab', 'Cobbled_Deepslate_Slab.png'),
(91, 'polished_deepslate', 'Polished Deepslate', 'Polished_Deepslate.png'),
(92, 'deepslate_bricks', 'Deepslate Bricks', 'Deepslate_Bricks.png'),
(93, 'deepslate_tiles', 'Deepslate Tiles', 'Deepslate_Tiles.png'),
(94, 'tuff', 'Tuff', 'Tuff.png'),
(95, 'tuff_slab', 'Tuff Slab', 'Tuff_Slab.png'),
(96, 'polished_tuff', 'Polished Tuff', 'Polished_Tuff.png'),
(97, 'tuff_bricks', 'Tuff Bricks', 'Tuff_Bricks.png'),
(98, 'tuff_brick_slab', 'Tuff Brick Slab', 'Tuff_Brick_Slab.png'),
(99, 'bricks', 'Bricks', 'Bricks.png'),
(100, 'packed_mud', 'Packed Mud', 'Packed_Mud.png'),
(101, 'mud_bricks', 'Mud Bricks', 'Mud_Bricks.png'),
(102, 'resin_bricks', 'Resin Bricks', 'Resin_Bricks.png'),
(103, 'resin_brick_slab', 'Resin Brick Slab', 'Resin_Brick_Slab.png'),
(104, 'sandstone', 'Sandstone', 'Sandstone.png'),
(105, 'sandstone_slab', 'Sandstone Slab', 'Sandstone_Slab.png'),
(106, 'chiseled_sandstone', 'Chiseled Sandstone', 'Chiseled_Sandstone.png'),
(107, 'smooth_sandstone', 'Smooth Sandstone', 'Smooth_Sandstone.png'),
(108, 'cut_sandstone', 'Cut Sandstone', 'Cut_Sandstone.png'),
(109, 'red_sandstone', 'Red Sandstone', 'Red_Sandstone.png'),
(110, 'red_sandstone_slab', 'Red Sandstone Slab', 'Red_Sandstone_Slab.png'),
(111, 'chiseled_red_sandstone', 'Chiseled Red Sandstone', 'Chiseled_Red_Sandstone.png'),
(112, 'smooth_red_sandstone', 'Smooth Red Sandstone', 'Smooth_Red_Sandstone.png'),
(113, 'cut_red_sandstone', 'Cut Red Sandstone', 'Cut_Red_Sandstone.png'),
(114, 'prismarine', 'Prismarine', 'Prismarine.png'),
(115, 'prismarine_bricks', 'Prismarine Bricks', 'Prismarine_Bricks.png'),
(116, 'dark_prismarine', 'Dark Prismarine', 'Dark_Prismarine.png'),
(117, 'netherrack', 'Netherrack', 'Netherrack.png'),
(118, 'nether_bricks', 'Nether Bricks', 'Nether_Bricks.png'),
(119, 'nether_brick_slab', 'Nether Brick Slab', 'Nether_Brick_Slab.png'),
(120, 'red_nether_bricks', 'Red Nether Bricks', 'Red_Nether_Bricks.png'),
(121, 'basalt', 'Basalt', 'Basalt.png'),
(122, 'blackstone', 'Blackstone', 'Blackstone.png'),
(123, 'polished_blackstone', 'Polished Blackstone', 'Polished_Blackstone.png'),
(124, 'polished_blackstone_slab', 'Polished Blackstone Slab', 'Polished_Blackstone_Slab.png'),
(125, 'polished_blackstone_bricks', 'Polished Blackstone Bricks', 'Polished_Blackstone_Bricks.png'),
(126, 'end_stone', 'End Stone', 'End_Stone.png'),
(127, 'end_stone_bricks', 'End Stone Bricks', 'End_Stone_Bricks.png'),
(128, 'purpur_block', 'Purpur Block', 'Purpur_Block.png'),
(129, 'purpur_pillar', 'Purpur Pillar', 'Purpur_Pillar.png'),
(130, 'purpur_slab', 'Purpur Slab', 'Purpur_Slab.png'),
(131, 'block_of_coal', 'Block of Coal', 'Block_of_Coal.png'),
(132, 'block_of_iron', 'Block of Iron', 'Block_of_Iron.png'),
(133, 'chain', 'Chain', 'Chain.png'),
(134, 'block_of_gold', 'Block of Gold', 'Block_of_Gold.png'),
(135, 'block_of_redstone', 'Block of Redstone', 'Block_of_Redstone.png'),
(136, 'block_of_emerald', 'Block of Emerald', 'Block_of_Emerald.png'),
(137, 'block_of_lapis_lazuli', 'Block of Lapis Lazuli', 'Block_of_Lapis_Lazuli.png'),
(138, 'block_of_diamond', 'Block of Diamond', 'Block_of_Diamond.png'),
(139, 'block_of_netherite', 'Block of Netherite', 'Block_of_Netherite.png'),
(140, 'block_of_quartz', 'Block of Quartz', 'Block_of_Quartz.png'),
(141, 'quartz_slab', 'Quartz Slab', 'Quartz_Slab.png'),
(142, 'chiseled_quartz_block', 'Chiseled Quartz Block', 'Chiseled_Quartz_Block.png'),
(143, 'quartz_pillar', 'Quartz Pillar', 'Quartz_Pillar.png'),
(144, 'smooth_quartz_block', 'Smooth Quartz Block', 'Smooth_Quartz_Block.png'),
(145, 'block_of_copper', 'Block of Copper', 'Block_of_Copper.png'),
(146, 'chiseled_copper', 'Chiseled Copper', 'Chiseled_Copper.png'),
(147, 'copper_grate', 'Copper Grate', 'Copper_Grate.png'),
(148, 'cut_copper', 'Cut Copper', 'Cut_Copper.png'),
(149, 'cut_copper_stairs', 'Cut Copper Stairs', 'Cut_Copper_Stairs.png'),
(150, 'cut_copper_slab', 'Cut Copper Slab', 'Cut_Copper_Slab.png'),
(151, 'copper_door', 'Copper Door', 'Copper_Door.png'),
(152, 'copper_trapdoor', 'Copper Trapdoor', 'Copper_Trapdoor.png'),
(153, 'copper_bulb', 'Copper Bulb', 'Copper_Bulb.png'),
(154, 'exposed_copper', 'Exposed Copper', 'Exposed_Copper.png'),
(155, 'exposed_chiseled_copper', 'Exposed Chiseled Copper', 'Exposed_Chiseled_Copper.png'),
(156, 'exposed_copper_grate', 'Exposed Copper Grate', 'Exposed_Copper_Grate.png'),
(157, 'exposed_cut_copper', 'Exposed Cut Copper', 'Exposed_Cut_Copper.png'),
(158, 'exposed_cut_copper_stairs', 'Exposed Cut Copper Stairs', 'Exposed_Cut_Copper_Stairs.png'),
(159, 'exposed_cut_copper_slab', 'Exposed Cut Copper Slab', 'Exposed_Cut_Copper_Slab.png'),
(160, 'exposed_copper_door', 'Exposed Copper Door', 'Exposed_Copper_Door.png'),
(161, 'exposed_copper_trapdoor', 'Exposed Copper Trapdoor', 'Exposed_Copper_Trapdoor.png'),
(162, 'exposed_copper_bulb', 'Exposed Copper Bulb', 'Exposed_Copper_Bulb.png'),
(163, 'weathered_copper', 'Weathered Copper', 'Weathered_Copper.png'),
(164, 'weathered_chiseled_copper', 'Weathered Chiseled Copper', 'Weathered_Chiseled_Copper.png'),
(165, 'weathered_copper_grate', 'Weathered Copper Grate', 'Weathered_Copper_Grate.png'),
(166, 'weathered_cut_copper', 'Weathered Cut Copper', 'Weathered_Cut_Copper.png'),
(167, 'weathered_cut_copper_stairs', 'Weathered Cut Copper Stairs', 'Weathered_Cut_Copper_Stairs.png'),
(168, 'weathered_cut_copper_slab', 'Weathered Cut Copper Slab', 'Weathered_Cut_Copper_Slab.png'),
(169, 'weathered_copper_door', 'Weathered Copper Door', 'Weathered_Copper_Door.png'),
(170, 'weathered_copper_trapdoor', 'Weathered Copper Trapdoor', 'Weathered_Copper_Trapdoor.png'),
(171, 'weathered_copper_bulb', 'Weathered Copper Bulb', 'Weathered_Copper_Bulb.png'),
(172, 'oxidized_copper', 'Oxidized Copper', 'Oxidized_Copper.png'),
(173, 'oxidized_chiseled_copper', 'Oxidized Chiseled Copper', 'Oxidized_Chiseled_Copper.png'),
(174, 'oxidized_copper_grate', 'Oxidized Copper Grate', 'Oxidized_Copper_Grate.png'),
(175, 'oxidized_cut_copper', 'Oxidized Cut Copper', 'Oxidized_Cut_Copper.png'),
(176, 'oxidized_cut_copper_stairs', 'Oxidized Cut Copper Stairs', 'Oxidized_Cut_Copper_Stairs.png'),
(177, 'oxidized_cut_copper_slab', 'Oxidized Cut Copper Slab', 'Oxidized_Cut_Copper_Slab.png'),
(178, 'oxidized_copper_door', 'Oxidized Copper Door', 'Oxidized_Copper_Door.png'),
(179, 'oxidized_copper_trapdoor', 'Oxidized Copper Trapdoor', 'Oxidized_Copper_Trapdoor.png'),
(180, 'oxidized_copper_bulb', 'Oxidized Copper Bulb', 'Oxidized_Copper_Bulb.png'),
(181, 'waxed_block_of_copper', 'Waxed Block of Copper', 'Block_of_Copper.png'),
(182, 'waxed_cut_copper', 'Waxed Cut Copper', 'Cut_Copper.png'),
(183, 'waxed_cut_copper_slab', 'Waxed Cut Copper Slab', 'Cut_Copper_Slab.png'),
(184, 'waxed_exposed_copper', 'Waxed Exposed Copper', 'Exposed_Copper.png'),
(185, 'waxed_exposed_cut_copper', 'Waxed Exposed Cut Copper', 'Exposed_Cut_Copper.png'),
(186, 'waxed_exposed_cut_copper_slab', 'Waxed Exposed Cut Copper Slab', 'Exposed_Cut_Copper_Slab.png'),
(187, 'waxed_weathered_copper', 'Waxed Weathered Copper', 'Weathered_Copper.png'),
(188, 'waxed_weathered_cut_copper', 'Waxed Weathered Cut Copper', 'Weathered_Cut_Copper.png'),
(189, 'waxed_weathered_cut_copper_slab', 'Waxed Weathered Cut Copper Slab', 'Weathered_Cut_Copper_Slab.png'),
(190, 'waxed_oxidized_copper', 'Waxed Oxidized Copper', 'Oxidized_Copper.png'),
(191, 'waxed_oxidized_cut_copper', 'Waxed Oxidized Cut Copper', 'Oxidized_Cut_Copper.png'),
(192, 'waxed_oxidized_cut_copper_slab', 'Waxed Oxidized Cut Copper Slab', 'Oxidized_Cut_Copper_Slab.png'),
(193, 'white_wool', 'White Wool', 'White_Wool.png'),
(194, 'light_gray_wool', 'Light Gray Wool', 'Light_Gray_Wool.png'),
(195, 'gray_wool', 'Gray Wool', 'Gray_Wool.png'),
(196, 'black_wool', 'Black Wool', 'Black_Wool.png'),
(197, 'brown_wool', 'Brown Wool', 'Brown_Wool.png'),
(198, 'red_wool', 'Red Wool', 'Red_Wool.png'),
(199, 'orange_wool', 'Orange Wool', 'Orange_Wool.png'),
(200, 'yellow_wool', 'Yellow Wool', 'Yellow_Wool.png'),
(201, 'lime_wool', 'Lime Wool', 'Lime_Wool.png'),
(202, 'green_wool', 'Green Wool', 'Green_Wool.png'),
(203, 'cyan_wool', 'Cyan Wool', 'Cyan_Wool.png'),
(204, 'light_blue_wool', 'Light Blue Wool', 'Light_Blue_Wool.png'),
(205, 'blue_wool', 'Blue Wool', 'Blue_Wool.png'),
(206, 'purple_wool', 'Purple Wool', 'Purple_Wool.png'),
(207, 'magenta_wool', 'Magenta Wool', 'Magenta_Wool.png'),
(208, 'pink_wool', 'Pink Wool', 'Pink_Wool.png'),
(209, 'white_carpet', 'White Carpet', 'White_Carpet.png'),
(210, 'light_gray_carpet', 'Light Gray Carpet', 'Light_Gray_Carpet.png'),
(211, 'gray_carpet', 'Gray Carpet', 'Gray_Carpet.png'),
(212, 'black_carpet', 'Black Carpet', 'Black_Carpet.png'),
(213, 'brown_carpet', 'Brown Carpet', 'Brown_Carpet.png'),
(214, 'red_carpet', 'Red Carpet', 'Red_Carpet.png'),
(215, 'orange_carpet', 'Orange Carpet', 'Orange_Carpet.png'),
(216, 'yellow_carpet', 'Yellow Carpet', 'Yellow_Carpet.png'),
(217, 'lime_carpet', 'Lime Carpet', 'Lime_Carpet.png'),
(218, 'green_carpet', 'Green Carpet', 'Green_Carpet.png'),
(219, 'cyan_carpet', 'Cyan Carpet', 'Cyan_Carpet.png'),
(220, 'light_blue_carpet', 'Light Blue Carpet', 'Light_Blue_Carpet.png'),
(221, 'blue_carpet', 'Blue Carpet', 'Blue_Carpet.png'),
(222, 'purple_carpet', 'Purple Carpet', 'Purple_Carpet.png'),
(223, 'magenta_carpet', 'Magenta Carpet', 'Magenta_Carpet.png'),
(224, 'pink_carpet', 'Pink Carpet', 'Pink_Carpet.png'),
(225, 'terracotta', 'Terracotta', 'Terracotta.png'),
(226, 'glass', 'Glass', 'Glass.png'),
(227, 'white_stained_glass', 'White Stained Glass', 'White_Stained_Glass.png'),
(228, 'light_gray_stained_glass', 'Light Gray Stained Glass', 'Light_Gray_Stained_Glass.png'),
(229, 'gray_stained_glass', 'Gray Stained Glass', 'Gray_Stained_Glass.png'),
(230, 'black_stained_glass', 'Black Stained Glass', 'Black_Stained_Glass.png'),
(231, 'brown_stained_glass', 'Brown Stained Glass', 'Brown_Stained_Glass.png'),
(232, 'red_stained_glass', 'Red Stained Glass', 'Red_Stained_Glass.png'),
(233, 'orange_stained_glass', 'Orange Stained Glass', 'Orange_Stained_Glass.png'),
(234, 'yellow_stained_glass', 'Yellow Stained Glass', 'Yellow_Stained_Glass.png'),
(235, 'lime_stained_glass', 'Lime Stained Glass', 'Lime_Stained_Glass.png'),
(236, 'green_stained_glass', 'Green Stained Glass', 'Green_Stained_Glass.png'),
(237, 'cyan_stained_glass', 'Cyan Stained Glass', 'Cyan_Stained_Glass.png'),
(238, 'light_blue_stained_glass', 'Light Blue Stained Glass', 'Light_Blue_Stained_Glass.png'),
(239, 'blue_stained_glass', 'Blue Stained Glass', 'Blue_Stained_Glass.png'),
(240, 'purple_stained_glass', 'Purple Stained Glass', 'Purple_Stained_Glass.png'),
(241, 'magenta_stained_glass', 'Magenta Stained Glass', 'Magenta_Stained_Glass.png'),
(242, 'pink_stained_glass', 'Pink Stained Glass', 'Pink_Stained_Glass.png'),
(243, 'glass_pane', 'Glass Pane', 'Glass_Pane.png'),
(244, 'shulker_box', 'Shulker Box', 'Shulker_Box.png'),
(245, 'white_shulker_box', 'White Shulker Box', 'White_Shulker_Box.png'),
(246, 'light_gray_shulker_box', 'Light Gray Shulker Box', 'Light_Gray_Shulker_Box.png'),
(247, 'gray_shulker_box', 'Gray Shulker Box', 'Gray_Shulker_Box.png'),
(248, 'black_shulker_box', 'Black Shulker Box', 'Black_Shulker_Box.png'),
(249, 'brown_shulker_box', 'Brown Shulker Box', 'Brown_Shulker_Box.png'),
(250, 'red_shulker_box', 'Red Shulker Box', 'Red_Shulker_Box.png'),
(251, 'orange_shulker_box', 'Orange Shulker Box', 'Orange_Shulker_Box.png'),
(252, 'yellow_shulker_box', 'Yellow Shulker Box', 'Yellow_Shulker_Box.png'),
(253, 'lime_shulker_box', 'Lime Shulker Box', 'Lime_Shulker_Box.png'),
(254, 'green_shulker_box', 'Green Shulker Box', 'Green_Shulker_Box.png'),
(255, 'cyan_shulker_box', 'Cyan Shulker Box', 'Cyan_Shulker_Box.png'),
(256, 'light_blue_shulker_box', 'Light Blue Shulker Box', 'Light_Blue_Shulker_Box.png'),
(257, 'blue_shulker_box', 'Blue Shulker Box', 'Blue_Shulker_Box.png'),
(258, 'purple_shulker_box', 'Purple Shulker Box', 'Purple_Shulker_Box.png'),
(259, 'magenta_shulker_box', 'Magenta Shulker Box', 'Magenta_Shulker_Box.png'),
(260, 'pink_shulker_box', 'Pink Shulker Box', 'Pink_Shulker_Box.png'),
(261, 'white_bed', 'White Bed', 'White_Bed.png'),
(262, 'light_gray_bed', 'Light Gray Bed', 'Light_Gray_Bed.png'),
(263, 'gray_bed', 'Gray Bed', 'Gray_Bed.png'),
(264, 'black_bed', 'Black Bed', 'Black_Bed.png'),
(265, 'brown_bed', 'Brown Bed', 'Brown_Bed.png'),
(266, 'red_bed', 'Red Bed', 'Red_Bed.png'),
(267, 'orange_bed', 'Orange Bed', 'Orange_Bed.png'),
(268, 'yellow_bed', 'Yellow Bed', 'Yellow_Bed.png'),
(269, 'lime_bed', 'Lime Bed', 'Lime_Bed.png'),
(270, 'green_bed', 'Green Bed', 'Green_Bed.png'),
(271, 'cyan_bed', 'Cyan Bed', 'Cyan_Bed.png'),
(272, 'light_blue_bed', 'Light Blue Bed', 'Light_Blue_Bed.png'),
(273, 'blue_bed', 'Blue Bed', 'Blue_Bed.png'),
(274, 'purple_bed', 'Purple Bed', 'Purple_Bed.png'),
(275, 'magenta_bed', 'Magenta Bed', 'Magenta_Bed.png'),
(276, 'pink_bed', 'Pink Bed', 'Pink_Bed.png'),
(277, 'candle', 'Candle', 'Candle.png'),
(278, 'white_banner', 'White Banner', 'White_Banner.png'),
(279, 'light_gray_banner', 'Light Gray Banner', 'Light_Gray_Banner.png'),
(280, 'gray_banner', 'Gray Banner', 'Gray_Banner.png'),
(281, 'black_banner', 'Black Banner', 'Black_Banner.png'),
(282, 'brown_banner', 'Brown Banner', 'Brown_Banner.png'),
(283, 'red_banner', 'Red Banner', 'Red_Banner.png'),
(284, 'orange_banner', 'Orange Banner', 'Orange_Banner.png'),
(285, 'yellow_banner', 'Yellow Banner', 'Yellow_Banner.png'),
(286, 'lime_banner', 'Lime Banner', 'Lime_Banner.png'),
(287, 'green_banner', 'Green Banner', 'Green_Banner.png'),
(288, 'cyan_banner', 'Cyan Banner', 'Cyan_Banner.png'),
(289, 'light_blue_banner', 'Light Blue Banner', 'Light_Blue_Banner.png'),
(290, 'blue_banner', 'Blue Banner', 'Blue_Banner.png'),
(291, 'purple_banner', 'Purple Banner', 'Purple_Banner.png'),
(292, 'magenta_banner', 'Magenta Banner', 'Magenta_Banner.png'),
(293, 'pink_banner', 'Pink Banner', 'Pink_Banner.png'),
(294, 'ominous_banner', 'Ominous Banner', 'Ominous_Banner.png'),
(295, 'dirt', 'Dirt', 'Dirt.png'),
(296, 'mud', 'Mud', 'Mud.png'),
(297, 'gravel', 'Gravel', 'Gravel.png'),
(298, 'sand', 'Sand', 'Sand.png'),
(299, 'red_sand', 'Red Sand', 'Red_Sand.png'),
(300, 'ice', 'Ice', 'Ice.png'),
(301, 'packed_ice', 'Packed Ice', 'Packed_Ice.png'),
(302, 'snow_block', 'Snow Block', 'Snow_Block.png'),
(303, 'moss_block', 'Moss Block', 'Moss_Block.png'),
(304, 'pale_moss_block', 'Pale Moss Block', 'Pale_Moss_Block.png'),
(305, 'pointed_dripstone', 'Pointed Dripstone', 'Pointed_Dripstone.png'),
(306, 'obsidian', 'Obsidian', 'Obsidian.png'),
(307, 'crying_obsidian', 'Crying Obsidian', 'Crying_Obsidian.png'),
(308, 'soul_sand', 'Soul Sand', 'Soul_Sand.png'),
(309, 'soul_soil', 'Soul Soil', 'Soul_Soil.png'),
(310, 'bone_block', 'Bone Block', 'Bone_Block.png'),
(311, 'block_of_raw_iron', 'Block of Raw Iron', 'Block_of_Raw_Iron.png'),
(312, 'block_of_raw_copper', 'Block of Raw Copper', 'Block_of_Raw_Copper.png'),
(313, 'block_of_raw_gold', 'Block of Raw Gold', 'Block_of_Raw_Gold.png'),
(314, 'glowstone', 'Glowstone', 'Glowstone.png'),
(315, 'mangrove_roots', 'Mangrove Roots', 'Mangrove_Roots.png'),
(316, 'brown_mushroom', 'Brown Mushroom', 'Brown_Mushroom.png'),
(317, 'red_mushroom', 'Red Mushroom', 'Red_Mushroom.png'),
(318, 'warped_fungus', 'Warped Fungus', 'Warped_Fungus.png'),
(319, 'dandelion', 'Dandelion', 'Dandelion.png'),
(320, 'poppy', 'Poppy', 'Poppy.png'),
(321, 'blue_orchid', 'Blue Orchid', 'Blue_Orchid.png'),
(322, 'allium', 'Allium', 'Allium.png'),
(323, 'azure_bluet', 'Azure Bluet', 'Azure_Bluet.png'),
(324, 'red_tulip', 'Red Tulip', 'Red_Tulip.png'),
(325, 'orange_tulip', 'Orange Tulip', 'Orange_Tulip.png'),
(326, 'white_tulip', 'White Tulip', 'White_Tulip.png'),
(327, 'pink_tulip', 'Pink Tulip', 'Pink_Tulip.png'),
(328, 'oxeye_daisy', 'Oxeye Daisy', 'Oxeye_Daisy.png'),
(329, 'cornflower', 'Cornflower', 'Cornflower.png'),
(330, 'lily_of_the_valley', 'Lily of the Valley', 'Lily_of_the_Valley.png'),
(331, 'torchflower', 'Torchflower', 'Torchflower.png'),
(332, 'closed_eyeblossom', 'Closed Eyeblossom', 'Closed_Eyeblossom.png'),
(333, 'open_eyeblossom', 'Open Eyeblossom', 'Open_Eyeblossom.png'),
(334, 'wither_rose', 'Wither Rose', 'Wither_Rose.png'),
(335, 'pink_petals', 'Pink Petals', 'Pink_Petals.png'),
(336, 'bamboo', 'Bamboo', 'Bamboo.png'),
(337, 'sugar_cane', 'Sugar Cane', 'Sugar_Cane.png'),
(338, 'vines', 'Vines', 'Vines.png'),
(339, 'sunflower', 'Sunflower', 'Sunflower.png'),
(340, 'lilac', 'Lilac', 'Lilac.png'),
(341, 'rose_bush', 'Rose Bush', 'Rose_Bush.png'),
(342, 'peony', 'Peony', 'Peony.png'),
(343, 'pitcher_plant', 'Pitcher Plant', 'Pitcher_Plant.png'),
(344, 'cocoa_beans', 'Cocoa Beans', 'Cocoa_Beans.png'),
(345, 'nether_wart', 'Nether Wart', 'Nether_Wart.png'),
(346, 'dried_kelp_block', 'Dried Kelp Block', 'Dried_Kelp_Block.png'),
(347, 'pumpkin', 'Pumpkin', 'Pumpkin.png'),
(348, 'carved_pumpkin', 'Carved Pumpkin', 'Carved_Pumpkin.png'),
(349, 'hay_bale', 'Hay Bale', 'Hay_Bale.png'),
(350, 'slime_block', 'Slime Block', 'Slime_Block.png'),
(351, 'honey_block', 'Honey Block', 'Honey_Block.png'),
(352, 'block_of_resin', 'Block of Resin', 'Block_of_Resin.png'),
(353, 'sculk_sensor', 'Sculk Sensor', 'Sculk_Sensor.png'),
(354, 'torch', 'Torch', 'Torch.png'),
(355, 'soul_torch', 'Soul Torch', 'Soul_Torch.png'),
(356, 'redstone_torch', 'Redstone Torch', 'Redstone_Torch.png'),
(357, 'crafting_table', 'Crafting Table', 'Crafting_Table.png'),
(358, 'furnace', 'Furnace', 'Furnace.png'),
(359, 'item_frame', 'Item Frame', 'Item_Frame.png'),
(360, 'bookshelf', 'Bookshelf', 'Bookshelf.png'),
(361, 'chest', 'Chest', 'Chest.png'),
(362, 'skeleton_skull', 'Skeleton Skull', 'Skeleton_Skull.png'),
(363, 'wither_skeleton_skull', 'Wither Skeleton Skull', 'Wither_Skeleton_Skull.png'),
(364, 'player_head', 'Player Head', 'Player_Head.png'),
(365, 'zombie_head', 'Zombie Head', 'Zombie_Head.png'),
(366, 'creeper_head', 'Creeper Head', 'Creeper_Head.png'),
(367, 'piglin_head', 'Piglin Head', 'Piglin_Head.png'),
(368, 'dragon_head', 'Dragon Head', 'Dragon_Head.png'),
(369, 'eye_of_ender', 'Eye of Ender', 'Eye_of_Ender.png'),
(370, 'redstone_dust', 'Redstone Dust', 'Redstone_Dust.png'),
(371, 'tripwire_hook', 'Tripwire Hook', 'Tripwire_Hook.png'),
(372, 'string', 'String', 'String.png'),
(373, 'piston', 'Piston', 'Piston.png'),
(374, 'dropper', 'Dropper', 'Dropper.png'),
(375, 'hopper', 'Hopper', 'Hopper.png'),
(376, 'trapped_chest', 'Trapped Chest', 'Trapped_Chest.png'),
(377, 'minecart', 'Minecart', 'Minecart.png'),
(378, 'tnt', 'TNT', 'TNT.png'),
(379, 'wooden_shovel', 'Wooden Shovel', 'Wooden_Shovel.png'),
(380, 'wooden_pickaxe', 'Wooden Pickaxe', 'Wooden_Pickaxe.png'),
(381, 'wooden_axe', 'Wooden Axe', 'Wooden_Axe.png'),
(382, 'wooden_hoe', 'Wooden Hoe', 'Wooden_Hoe.png'),
(383, 'stone_shovel', 'Stone Shovel', 'Stone_Shovel.png'),
(384, 'stone_pickaxe', 'Stone Pickaxe', 'Stone_Pickaxe.png'),
(385, 'stone_axe', 'Stone Axe', 'Stone_Axe.png'),
(386, 'stone_hoe', 'Stone Hoe', 'Stone_Hoe.png'),
(387, 'iron_shovel', 'Iron Shovel', 'Iron_Shovel.png'),
(388, 'iron_pickaxe', 'Iron Pickaxe', 'Iron_Pickaxe.png'),
(389, 'iron_axe', 'Iron Axe', 'Iron_Axe.png'),
(390, 'iron_hoe', 'Iron Hoe', 'Iron_Hoe.png'),
(391, 'golden_shovel', 'Golden Shovel', 'Golden_Shovel.png'),
(392, 'golden_pickaxe', 'Golden Pickaxe', 'Golden_Pickaxe.png'),
(393, 'golden_axe', 'Golden Axe', 'Golden_Axe.png'),
(394, 'golden_hoe', 'Golden Hoe', 'Golden_Hoe.png'),
(395, 'diamond_shovel', 'Diamond Shovel', 'Diamond_Shovel.png'),
(396, 'diamond_pickaxe', 'Diamond Pickaxe', 'Diamond_Pickaxe.png'),
(397, 'diamond_axe', 'Diamond Axe', 'Diamond_Axe.png'),
(398, 'diamond_hoe', 'Diamond Hoe', 'Diamond_Hoe.png'),
(399, 'netherite_shovel', 'Netherite Shovel', 'Netherite_Shovel.png'),
(400, 'netherite_pickaxe', 'Netherite Pickaxe', 'Netherite_Pickaxe.png'),
(401, 'netherite_axe', 'Netherite Axe', 'Netherite_Axe.png'),
(402, 'netherite_hoe', 'Netherite Hoe', 'Netherite_Hoe.png'),
(403, 'milk_bucket', 'Milk Bucket', 'Milk_Bucket.png'),
(404, 'fishing_rod', 'Fishing Rod', 'Fishing_Rod.png'),
(405, 'flint_and_steel', 'Flint and Steel', 'Flint_and_Steel.png'),
(406, 'fire_charge', 'Fire Charge', 'Fire_Charge.png'),
(407, 'bone_meal', 'Bone Meal', 'Bone_Meal.png'),
(408, 'shears', 'Shears', 'Shears.png'),
(409, 'brush', 'Brush', 'Brush.png'),
(410, 'bundle', 'Bundle', 'Bundle.png'),
(411, 'white_bundle', 'White Bundle', 'White_Bundle.png'),
(412, 'light_gray_bundle', 'Light Gray Bundle', 'Light_Gray_Bundle.png'),
(413, 'gray_bundle', 'Gray Bundle', 'Gray_Bundle.png'),
(414, 'black_bundle', 'Black Bundle', 'Black_Bundle.png'),
(415, 'brown_bundle', 'Brown Bundle', 'Brown_Bundle.png'),
(416, 'red_bundle', 'Red Bundle', 'Red_Bundle.png'),
(417, 'orange_bundle', 'Orange Bundle', 'Orange_Bundle.png'),
(418, 'yellow_bundle', 'Yellow Bundle', 'Yellow_Bundle.png'),
(419, 'lime_bundle', 'Lime Bundle', 'Lime_Bundle.png'),
(420, 'green_bundle', 'Green Bundle', 'Green_Bundle.png'),
(421, 'cyan_bundle', 'Cyan Bundle', 'Cyan_Bundle.png'),
(422, 'light_blue_bundle', 'Light Blue Bundle', 'Light_Blue_Bundle.png'),
(423, 'blue_bundle', 'Blue Bundle', 'Blue_Bundle.png'),
(424, 'purple_bundle', 'Purple Bundle', 'Purple_Bundle.png'),
(425, 'magenta_bundle', 'Magenta Bundle', 'Magenta_Bundle.png'),
(426, 'pink_bundle', 'Pink Bundle', 'Pink_Bundle.png'),
(427, 'compass', 'Compass', 'Compass.png'),
(428, 'ender_pearl', 'Ender Pearl', 'Ender_Pearl.png'),
(429, 'elytra', 'Elytra', 'Elytra.png'),
(430, 'carrot_on_a_stick', 'Carrot on a Stick', 'Carrot_on_a_Stick.png'),
(431, 'warped_fungus_on_a_stick', 'Warped Fungus on a Stick', 'Warped_Fungus_on_a_Stick.png'),
(432, 'oak_boat', 'Oak Boat', 'Oak_Boat.png'),
(433, 'spruce_boat', 'Spruce Boat', 'Spruce_Boat.png'),
(434, 'birch_boat', 'Birch Boat', 'Birch_Boat.png'),
(435, 'jungle_boat', 'Jungle Boat', 'Jungle_Boat.png'),
(436, 'acacia_boat', 'Acacia Boat', 'Acacia_Boat.png'),
(437, 'dark_oak_boat', 'Dark Oak Boat', 'Dark_Oak_Boat.png'),
(438, 'mangrove_boat', 'Mangrove Boat', 'Mangrove_Boat.png'),
(439, 'cherry_boat', 'Cherry Boat', 'Cherry_Boat.png'),
(440, 'pale_oak_boat', 'Pale Oak Boat', 'Pale_Oak_Boat.png'),
(441, 'bamboo_raft', 'Bamboo Raft', 'Bamboo_Raft.png'),
(442, 'wooden_sword', 'Wooden Sword', 'Wooden_Sword.png'),
(443, 'stone_sword', 'Stone Sword', 'Stone_Sword.png'),
(444, 'iron_sword', 'Iron Sword', 'Iron_Sword.png'),
(445, 'golden_sword', 'Golden Sword', 'Golden_Sword.png'),
(446, 'diamond_sword', 'Diamond Sword', 'Diamond_Sword.png'),
(447, 'netherite_sword', 'Netherite Sword', 'Netherite_Sword.png'),
(448, 'trident', 'Trident', 'Trident.png'),
(449, 'mace', 'Mace', 'Mace.png'),
(450, 'shield', 'Shield', 'Shield.png'),
(451, 'leather_cap', 'Leather Cap', 'Leather_Cap.png'),
(452, 'leather_tunic', 'Leather Tunic', 'Leather_Tunic.png'),
(453, 'leather_pants', 'Leather Pants', 'Leather_Pants.png'),
(454, 'leather_boots', 'Leather Boots', 'Leather_Boots.png'),
(455, 'chainmail_helmet', 'Chainmail Helmet', 'Chainmail_Helmet.png'),
(456, 'chainmail_chestplate', 'Chainmail Chestplate', 'Chainmail_Chestplate.png'),
(457, 'chainmail_leggings', 'Chainmail Leggings', 'Chainmail_Leggings.png'),
(458, 'chainmail_boots', 'Chainmail Boots', 'Chainmail_Boots.png'),
(459, 'iron_helmet', 'Iron Helmet', 'Iron_Helmet.png'),
(460, 'iron_chestplate', 'Iron Chestplate', 'Iron_Chestplate.png'),
(461, 'iron_leggings', 'Iron Leggings', 'Iron_Leggings.png'),
(462, 'iron_boots', 'Iron Boots', 'Iron_Boots.png'),
(463, 'golden_helmet', 'Golden Helmet', 'Golden_Helmet.png'),
(464, 'golden_chestplate', 'Golden Chestplate', 'Golden_Chestplate.png'),
(465, 'golden_leggings', 'Golden Leggings', 'Golden_Leggings.png'),
(466, 'golden_boots', 'Golden Boots', 'Golden_Boots.png'),
(467, 'diamond_helmet', 'Diamond Helmet', 'Diamond_Helmet.png'),
(468, 'diamond_chestplate', 'Diamond Chestplate', 'Diamond_Chestplate.png'),
(469, 'diamond_leggings', 'Diamond Leggings', 'Diamond_Leggings.png'),
(470, 'diamond_boots', 'Diamond Boots', 'Diamond_Boots.png'),
(471, 'netherite_helmet', 'Netherite Helmet', 'Netherite_Helmet.png'),
(472, 'netherite_chestplate', 'Netherite Chestplate', 'Netherite_Chestplate.png'),
(473, 'netherite_leggings', 'Netherite Leggings', 'Netherite_Leggings.png'),
(474, 'netherite_boots', 'Netherite Boots', 'Netherite_Boots.png'),
(475, 'turtle_shell', 'Turtle Shell', 'Turtle_Shell.png'),
(476, 'leather_horse_armor', 'Leather Horse Armor', 'Leather_Horse_Armor.png'),
(477, 'iron_horse_armor', 'Iron Horse Armor', 'Iron_Horse_Armor.png'),
(478, 'golden_horse_armor', 'Golden Horse Armor', 'Golden_Horse_Armor.png'),
(479, 'diamond_horse_armor', 'Diamond Horse Armor', 'Diamond_Horse_Armor.png'),
(480, 'wolf_armor', 'Wolf Armor', 'Wolf_Armor.png'),
(481, 'snowball', 'Snowball', 'Snowball.png'),
(482, 'egg', 'Egg', 'Egg.png'),
(483, 'bow', 'Bow', 'Bow.png'),
(484, 'crossbow', 'Crossbow', 'Crossbow.png'),
(485, 'arrow', 'Arrow', 'Arrow.png'),
(486, 'apple', 'Apple', 'Apple.png'),
(487, 'enchanted_golden_apple', 'Enchanted Golden Apple', 'Enchanted_Golden_Apple.png'),
(488, 'melon_slice', 'Melon Slice', 'Melon_Slice.png'),
(489, 'carrot', 'Carrot', 'Carrot.png'),
(490, 'baked_potato', 'Baked Potato', 'Baked_Potato.png'),
(491, 'beetroot', 'Beetroot', 'Beetroot.png'),
(492, 'dried_kelp', 'Dried Kelp', 'Dried_Kelp.png'),
(493, 'cooked_rabbit', 'Cooked Rabbit', 'Cooked_Rabbit.png'),
(494, 'spider_eye', 'Spider Eye', 'Spider_Eye.png'),
(495, 'honey_bottle', 'Honey Bottle', 'Honey_Bottle.png'),
(496, 'lingering_water_bottle', 'Lingering Water Bottle', 'Lingering_Water_Bottle.png'),
(497, 'mundane_lingering_potion', 'Mundane Lingering Potion', 'Lingering_Water_Bottle.png'),
(498, 'thick_lingering_potion', 'Thick Lingering Potion', 'Lingering_Water_Bottle.png'),
(499, 'awkward_lingering_potion', 'Awkward Lingering Potion', 'Lingering_Water_Bottle.png'),
(500, 'lingering_potion_of_night_vision', 'Lingering Potion of Night Vision', 'Lingering_Potion_of_Night_Vision.png'),
(501, 'lingering_potion_of_invisibility', 'Lingering Potion of Invisibility', 'Lingering_Potion_of_Invisibility.png'),
(502, 'lingering_potion_of_leaping', 'Lingering Potion of Leaping', 'Lingering_Potion_of_Leaping.png'),
(503, 'lingering_potion_of_fire_resistance', 'Lingering Potion of Fire Resistance', 'Lingering_Potion_of_Fire_Resistance.png'),
(504, 'lingering_potion_of_swiftness', 'Lingering Potion of Swiftness', 'Lingering_Potion_of_Swiftness.png'),
(505, 'lingering_potion_of_slowness', 'Lingering Potion of Slowness', 'Lingering_Potion_of_Slowness.png'),
(506, 'lingering_potion_of_the_turtle_master', 'Lingering Potion of the Turtle Master', 'Lingering_Potion_of_the_Turtle_Master.png'),
(507, 'lingering_potion_of_water_breathing', 'Lingering Potion of Water Breathing', 'Lingering_Potion_of_Water_Breathing.png'),
(508, 'lingering_potion_of_healing', 'Lingering Potion of Healing', 'Lingering_Potion_of_Healing.png'),
(509, 'lingering_potion_of_harming', 'Lingering Potion of Harming', 'Lingering_Potion_of_Harming.png'),
(510, 'lingering_potion_of_poison', 'Lingering Potion of Poison', 'Lingering_Potion_of_Poison.png'),
(511, 'lingering_potion_of_regeneration', 'Lingering Potion of Regeneration', 'Lingering_Potion_of_Regeneration.png'),
(512, 'lingering_potion_of_strength', 'Lingering Potion of Strength', 'Lingering_Potion_of_Strength.png'),
(513, 'lingering_potion_of_weakness', 'Lingering Potion of Weakness', 'Lingering_Potion_of_Weakness.png'),
(514, 'lingering_potion_of_luck', 'Lingering Potion of Luck', 'Lingering_Potion_of_Luck.png'),
(515, 'lingering_potion_of_slow_falling', 'Lingering Potion of Slow Falling', 'Lingering_Potion_of_Slow_Falling.png'),
(516, 'lingering_potion_of_wind_charging', 'Lingering Potion of Wind Charging', 'Lingering_Potion_of_Wind_Charging.png'),
(517, 'lingering_potion_of_weaving', 'Lingering Potion of Weaving', 'Lingering_Potion_of_Weaving.png'),
(518, 'lingering_potion_of_oozing', 'Lingering Potion of Oozing', 'Lingering_Potion_of_Oozing.png'),
(519, 'lingering_potion_of_infestation', 'Lingering Potion of Infestation', 'Lingering_Potion_of_Infestation.png'),
(520, 'coal', 'Coal', 'Coal.png'),
(521, 'charcoal', 'Charcoal', 'Charcoal.png'),
(522, 'raw_iron', 'Raw Iron', 'Raw_Iron.png'),
(523, 'raw_copper', 'Raw Copper', 'Raw_Copper.png'),
(524, 'raw_gold', 'Raw Gold', 'Raw_Gold.png'),
(525, 'emerald', 'Emerald', 'Emerald.png'),
(526, 'lapis_lazuli', 'Lapis Lazuli', 'Lapis_Lazuli.png'),
(527, 'diamond', 'Diamond', 'Diamond.png'),
(528, 'nether_quartz', 'Nether Quartz', 'Nether_Quartz.png'),
(529, 'amethyst_shard', 'Amethyst Shard', 'Amethyst_Shard.png'),
(530, 'iron_nugget', 'Iron Nugget', 'Iron_Nugget.png'),
(531, 'gold_nugget', 'Gold Nugget', 'Gold_Nugget.png'),
(532, 'iron_ingot', 'Iron Ingot', 'Iron_Ingot.png'),
(533, 'copper_ingot', 'Copper Ingot', 'Copper_Ingot.png'),
(534, 'gold_ingot', 'Gold Ingot', 'Gold_Ingot.png'),
(535, 'netherite_scrap', 'Netherite Scrap', 'Netherite_Scrap.png'),
(536, 'netherite_ingot', 'Netherite Ingot', 'Netherite_Ingot.png'),
(537, 'stick', 'Stick', 'Stick.png'),
(538, 'flint', 'Flint', 'Flint.png'),
(539, 'wheat', 'Wheat', 'Wheat.png'),
(540, 'bone', 'Bone', 'Bone.png'),
(541, 'feather', 'Feather', 'Feather.png'),
(542, 'leather', 'Leather', 'Leather.png'),
(543, 'rabbit_hide', 'Rabbit Hide', 'Rabbit_Hide.png'),
(544, 'honeycomb', 'Honeycomb', 'Honeycomb.png'),
(545, 'resin_clump', 'Resin Clump', 'Resin_Clump.png'),
(546, 'ink_sac', 'Ink Sac', 'Ink_Sac.png'),
(547, 'glow_ink_sac', 'Glow Ink Sac', 'Glow_Ink_Sac.png'),
(548, 'turtle_scute', 'Turtle Scute', 'Turtle_Scute.png'),
(549, 'armadillo_scute', 'Armadillo Scute', 'Armadillo_Scute.png'),
(550, 'slimeball', 'Slimeball', 'Slimeball.png'),
(551, 'clay_ball', 'Clay Ball', 'Clay_Ball.png'),
(552, 'prismarine_shard', 'Prismarine Shard', 'Prismarine_Shard.png'),
(553, 'prismarine_crystals', 'Prismarine Crystals', 'Prismarine_Crystals.png'),
(554, 'nautilus_shell', 'Nautilus Shell', 'Nautilus_Shell.png'),
(555, 'heart_of_the_sea', 'Heart of the Sea', 'Heart_of_the_Sea.png'),
(556, 'blaze_rod', 'Blaze Rod', 'Blaze_Rod.png'),
(557, 'breeze_rod', 'Breeze Rod', 'Breeze_Rod.png'),
(558, 'heavy_core', 'Heavy Core', 'Heavy_Core.png'),
(559, 'nether_star', 'Nether Star', 'Nether_Star.png'),
(560, 'shulker_shell', 'Shulker Shell', 'Shulker_Shell.png'),
(561, 'popped_chorus_fruit', 'Popped Chorus Fruit', 'Popped_Chorus_Fruit.png'),
(562, 'echo_shard', 'Echo Shard', 'Echo_Shard.png'),
(563, 'disc_fragment', 'Disc Fragment', 'Disc_Fragment.png'),
(564, 'white_dye', 'White Dye', 'White_Dye.png'),
(565, 'light_gray_dye', 'Light Gray Dye', 'Light_Gray_Dye.png'),
(566, 'gray_dye', 'Gray Dye', 'Gray_Dye.png'),
(567, 'black_dye', 'Black Dye', 'Black_Dye.png'),
(568, 'brown_dye', 'Brown Dye', 'Brown_Dye.png'),
(569, 'red_dye', 'Red Dye', 'Red_Dye.png'),
(570, 'orange_dye', 'Orange Dye', 'Orange_Dye.png'),
(571, 'yellow_dye', 'Yellow Dye', 'Yellow_Dye.png'),
(572, 'lime_dye', 'Lime Dye', 'Lime_Dye.png'),
(573, 'green_dye', 'Green Dye', 'Green_Dye.png'),
(574, 'cyan_dye', 'Cyan Dye', 'Cyan_Dye.png'),
(575, 'light_blue_dye', 'Light Blue Dye', 'Light_Blue_Dye.png'),
(576, 'blue_dye', 'Blue Dye', 'Blue_Dye.png'),
(577, 'purple_dye', 'Purple Dye', 'Purple_Dye.png'),
(578, 'magenta_dye', 'Magenta Dye', 'Magenta_Dye.png'),
(579, 'pink_dye', 'Pink Dye', 'Pink_Dye.png'),
(580, 'bowl', 'Bowl', 'Bowl.png'),
(581, 'brick', 'Brick', 'Brick.png'),
(582, 'nether_brick', 'Nether Brick', 'Nether_Brick.png'),
(583, 'resin_brick', 'Resin Brick', 'Resin_Brick.png'),
(584, 'paper', 'Paper', 'Paper.png'),
(585, 'book', 'Book', 'Book.png'),
(586, 'firework_star', 'Firework Star', 'Firework_Star.png'),
(587, 'glass_bottle', 'Glass Bottle', 'Glass_Bottle.png'),
(588, 'glowstone_dust', 'Glowstone Dust', 'Glowstone_Dust.png'),
(589, 'gunpowder', 'Gunpowder', 'Gunpowder.png'),
(590, 'blaze_powder', 'Blaze Powder', 'Blaze_Powder.png'),
(591, 'sugar', 'Sugar', 'Sugar.png'),
(592, 'magma_cream', 'Magma Cream', 'Magma_Cream.png'),
(593, 'ghast_tear', 'Ghast Tear', 'Ghast_Tear.png'),
(594, 'netherite_upgrade', 'Smithing Template', 'Netherite_Upgrade.png'),
(595, 'sentry_armor_trim', 'Smithing Template', 'Sentry_Armor_Trim.png'),
(596, 'vex_armor_trim', 'Smithing Template', 'Vex_Armor_Trim.png'),
(597, 'wild_armor_trim', 'Smithing Template', 'Wild_Armor_Trim.png'),
(598, 'coast_armor_trim', 'Smithing Template', 'Coast_Armor_Trim.png'),
(599, 'dune_armor_trim', 'Smithing Template', 'Dune_Armor_Trim.png'),
(600, 'wayfinder_armor_trim', 'Smithing Template', 'Wayfinder_Armor_Trim.png'),
(601, 'raiser_armor_trim', 'Smithing Template', 'Raiser_Armor_Trim.png'),
(602, 'shaper_armor_trim', 'Smithing Template', 'Shaper_Armor_Trim.png'),
(603, 'host_armor_trim', 'Smithing Template', 'Host_Armor_Trim.png'),
(604, 'ward_armor_trim', 'Smithing Template', 'Ward_Armor_Trim.png'),
(605, 'silence_armor_trim', 'Smithing Template', 'Silence_Armor_Trim.png'),
(606, 'tide_armor_trim', 'Smithing Template', 'Tide_Armor_Trim.png'),
(607, 'snout_armor_trim', 'Smithing Template', 'Snout_Armor_Trim.png'),
(608, 'rib_armor_trim', 'Smithing Template', 'Rib_Armor_Trim.png'),
(609, 'eye_armor_trim', 'Smithing Template', 'Eye_Armor_Trim.png'),
(610, 'spire_armor_trim', 'Smithing Template', 'Spire_Armor_Trim.png'),
(611, 'flow_armor_trim', 'Smithing Template', 'Flow_Armor_Trim.png'),
(612, 'bolt_armor_trim', 'Smithing Template', 'Bolt_Armor_Trim.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `start` datetime(3) NOT NULL,
  `end` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `maintenance`
--

INSERT INTO `maintenance` (`id`, `user`, `start`, `end`) VALUES
(1, 2, '2020-03-26 00:00:00.000', '2025-03-23 00:00:00.000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `profile_borders`
--

CREATE TABLE `profile_borders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `profile_borders`
--

INSERT INTO `profile_borders` (`id`, `name`, `src`) VALUES
(1, 'Amethyst', 'Amethyst.png'),
(2, 'Black Terracotta', 'Black_Terracotta.png'),
(3, 'Brown Mushroom', 'Brown_Mushroom.png'),
(4, 'Command Block', 'Command_Block.png'),
(5, 'Copper', 'Copper.png'),
(6, 'Gold', 'Gold.png'),
(7, 'Grass', 'Grass.png'),
(8, 'Honey', 'Honey.png'),
(9, 'Iron', 'Iron.png'),
(10, 'Lava', 'Lava.png'),
(11, 'Nether', 'Nether.png'),
(12, 'Nether Portal', 'Nether_Portal.png'),
(13, 'Prismarine', 'Prismarine.png'),
(14, 'Purpur', 'Purpur.png'),
(15, 'Redstone', 'Redstone.png'),
(16, 'Red Mushroom', 'Red_Mushroom.png'),
(17, 'Sculk Shrieker', 'Sculk_Shrieker.png'),
(18, 'Snow', 'Snow.png'),
(19, 'Spruce Planks', 'Spruce_Planks.png'),
(20, 'Village', 'Village.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `profile_pictures`
--

CREATE TABLE `profile_pictures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `profile_pictures`
--

INSERT INTO `profile_pictures` (`id`, `name`, `src`) VALUES
(1, 'Chicken', 'Chicken.png'),
(2, 'Desert Armorer', 'Desert_Armorer.png'),
(3, 'Desert Butcher', 'Desert_Butcher.png'),
(4, 'Desert Cartographer', 'Desert_Cartographer.png'),
(5, 'Desert Cleric', 'Desert_Cleric.png'),
(6, 'Desert Farmer', 'Desert_Farmer.png'),
(7, 'Desert Fisherman', 'Desert_Fisherman.png'),
(8, 'Desert Fletcher', 'Desert_Fletcher.png'),
(9, 'Desert Leatherworker', 'Desert_Leatherworker.png'),
(10, 'Desert Librarian', 'Desert_Librarian.png'),
(11, 'Desert Mason', 'Desert_Mason.png'),
(12, 'Desert Nitwit', 'Desert_Nitwit.png'),
(13, 'Desert Shepherd', 'Desert_Shepherd.png'),
(14, 'Desert Toolsmith', 'Desert_Toolsmith.png'),
(15, 'Desert Villager Base', 'Desert_Villager_Base.png'),
(16, 'Desert Weaponsmith', 'Desert_Weaponsmith.png'),
(17, 'Enderman', 'Enderman.png'),
(18, 'Ender Dragon', 'Ender_Dragon.png'),
(19, 'Fox', 'Fox.png'),
(20, 'Jungle Armorer', 'Jungle_Armorer.png'),
(21, 'Jungle Butcher', 'Jungle_Butcher.png'),
(22, 'Jungle Cartographer', 'Jungle_Cartographer.png'),
(23, 'Jungle Cleric', 'Jungle_Cleric.png'),
(24, 'Jungle Farmer', 'Jungle_Farmer.png'),
(25, 'Jungle Fisherman', 'Jungle_Fisherman.png'),
(26, 'Jungle Fletcher', 'Jungle_Fletcher.png'),
(27, 'Jungle Leatherworker', 'Jungle_Leatherworker.png'),
(28, 'Jungle Librarian', 'Jungle_Librarian.png'),
(29, 'Jungle Mason', 'Jungle_Mason.png'),
(30, 'Jungle Nitwit', 'Jungle_Nitwit.png'),
(31, 'Jungle Shepherd', 'Jungle_Shepherd.png'),
(32, 'Jungle Toolsmith', 'Jungle_Toolsmith.png'),
(33, 'Jungle Villager Base', 'Jungle_Villager_Base.png'),
(34, 'Jungle Weaponsmith', 'Jungle_Weaponsmith.png'),
(35, 'Plains Armorer', 'Plains_Armorer.png'),
(36, 'Plains Butcher', 'Plains_Butcher.png'),
(37, 'Plains Cartographer', 'Plains_Cartographer.png'),
(38, 'Plains Cleric', 'Plains_Cleric.png'),
(39, 'Plains Farmer', 'Plains_Farmer.png'),
(40, 'Plains Fisherman', 'Plains_Fisherman.png'),
(41, 'Plains Fletcher', 'Plains_Fletcher.png'),
(42, 'Plains Leatherworker', 'Plains_Leatherworker.png'),
(43, 'Plains Librarian', 'Plains_Librarian.png'),
(44, 'Plains Mason', 'Plains_Mason.png'),
(45, 'Plains Nitwit', 'Plains_Nitwit.png'),
(46, 'Plains Shepherd', 'Plains_Shepherd.png'),
(47, 'Plains Toolsmith', 'Plains_Toolsmith.png'),
(48, 'Plains Villager Base', 'Plains_Villager_Base.png'),
(49, 'Plains Weaponsmith', 'Plains_Weaponsmith.png'),
(50, 'Savanna Armorer', 'Savanna_Armorer.png'),
(51, 'Savanna Butcher', 'Savanna_Butcher.png'),
(52, 'Savanna Cartographer', 'Savanna_Cartographer.png'),
(53, 'Savanna Cleric', 'Savanna_Cleric.png'),
(54, 'Savanna Farmer', 'Savanna_Farmer.png'),
(55, 'Savanna Fisherman', 'Savanna_Fisherman.png'),
(56, 'Savanna Fletcher', 'Savanna_Fletcher.png'),
(57, 'Savanna Leatherworker', 'Savanna_Leatherworker.png'),
(58, 'Savanna Librarian', 'Savanna_Librarian.png'),
(59, 'Savanna Mason', 'Savanna_Mason.png'),
(60, 'Savanna Nitwit', 'Savanna_Nitwit.png'),
(61, 'Savanna Shepherd', 'Savanna_Shepherd.png'),
(62, 'Savanna Toolsmith', 'Savanna_Toolsmith.png'),
(63, 'Savanna Villager Base', 'Savanna_Villager_Base.png'),
(64, 'Savanna Weaponsmith', 'Savanna_Weaponsmith.png'),
(65, 'Siamese Cat', 'Siamese_Cat.png'),
(66, 'Snowy Armorer', 'Snowy_Armorer.png'),
(67, 'Snowy Butcher', 'Snowy_Butcher.png'),
(68, 'Snowy Cartographer', 'Snowy_Cartographer.png'),
(69, 'Snowy Cleric', 'Snowy_Cleric.png'),
(70, 'Snowy Farmer', 'Snowy_Farmer.png'),
(71, 'Snowy Fisherman', 'Snowy_Fisherman.png'),
(72, 'Snowy Fletcher', 'Snowy_Fletcher.png'),
(73, 'Snowy Leatherworker', 'Snowy_Leatherworker.png'),
(74, 'Snowy Librarian', 'Snowy_Librarian.png'),
(75, 'Snowy Mason', 'Snowy_Mason.png'),
(76, 'Snowy Nitwit', 'Snowy_Nitwit.png'),
(77, 'Snowy Shepherd', 'Snowy_Shepherd.png'),
(78, 'Snowy Toolsmith', 'Snowy_Toolsmith.png'),
(79, 'Snowy Villager Base', 'Snowy_Villager_Base.png'),
(80, 'Snowy Weaponsmith', 'Snowy_Weaponsmith.png'),
(81, 'Swamp Armorer', 'Swamp_Armorer.png'),
(82, 'Swamp Butcher', 'Swamp_Butcher.png'),
(83, 'Swamp Cartographer', 'Swamp_Cartographer.png'),
(84, 'Swamp Cleric', 'Swamp_Cleric.png'),
(85, 'Swamp Farmer', 'Swamp_Farmer.png'),
(86, 'Swamp Fisherman', 'Swamp_Fisherman.png'),
(87, 'Swamp Fletcher', 'Swamp_Fletcher.png'),
(88, 'Swamp Leatherworker', 'Swamp_Leatherworker.png'),
(89, 'Swamp Librarian', 'Swamp_Librarian.png'),
(90, 'Swamp Mason', 'Swamp_Mason.png'),
(91, 'Swamp Nitwit', 'Swamp_Nitwit.png'),
(92, 'Swamp Shepherd', 'Swamp_Shepherd.png'),
(93, 'Swamp Toolsmith', 'Swamp_Toolsmith.png'),
(94, 'Swamp Villager Base', 'Swamp_Villager_Base.png'),
(95, 'Swamp Weaponsmith', 'Swamp_Weaponsmith.png'),
(96, 'Taiga Armorer', 'Taiga_Armorer.png'),
(97, 'Taiga Butcher', 'Taiga_Butcher.png'),
(98, 'Taiga Cartographer', 'Taiga_Cartographer.png'),
(99, 'Taiga Cleric', 'Taiga_Cleric.png'),
(100, 'Taiga Farmer', 'Taiga_Farmer.png'),
(101, 'Taiga Fisherman', 'Taiga_Fisherman.png'),
(102, 'Taiga Fletcher', 'Taiga_Fletcher.png'),
(103, 'Taiga Leatherworker', 'Taiga_Leatherworker.png'),
(104, 'Taiga Librarian', 'Taiga_Librarian.png'),
(105, 'Taiga Mason', 'Taiga_Mason.png'),
(106, 'Taiga Nitwit', 'Taiga_Nitwit.png'),
(107, 'Taiga Shepherd', 'Taiga_Shepherd.png'),
(108, 'Taiga Toolsmith', 'Taiga_Toolsmith.png'),
(109, 'Taiga Villager Base', 'Taiga_Villager_Base.png'),
(110, 'Taiga Weaponsmith', 'Taiga_Weaponsmith.png'),
(111, 'Vindicator', 'Vindicator.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `achievement` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `reward_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `rewards`
--

INSERT INTO `rewards` (`id`, `achievement`, `reward`, `reward_type`) VALUES
(1, 1, 12, 1),
(2, 1, 15, 1),
(3, 1, 30, 1),
(4, 1, 33, 1),
(5, 1, 45, 1),
(6, 1, 48, 1),
(7, 1, 60, 1),
(8, 1, 63, 1),
(9, 1, 76, 1),
(10, 1, 79, 1),
(11, 1, 91, 1),
(12, 1, 94, 1),
(13, 1, 106, 1),
(14, 1, 109, 1),
(15, 39, 2, 1),
(16, 39, 20, 1),
(17, 39, 35, 1),
(18, 39, 50, 1),
(19, 39, 66, 1),
(20, 39, 81, 1),
(21, 39, 96, 1),
(22, 40, 3, 1),
(23, 40, 21, 1),
(24, 40, 36, 1),
(25, 40, 67, 1),
(26, 40, 82, 1),
(27, 40, 97, 1),
(28, 41, 4, 1),
(29, 41, 22, 1),
(30, 41, 37, 1),
(31, 41, 52, 1),
(32, 41, 68, 1),
(33, 41, 83, 1),
(34, 41, 98, 1),
(35, 42, 5, 1),
(36, 42, 23, 1),
(37, 42, 38, 1),
(38, 42, 53, 1),
(39, 42, 69, 1),
(40, 42, 84, 1),
(41, 42, 99, 1),
(42, 43, 6, 1),
(43, 43, 24, 1),
(44, 43, 39, 1),
(45, 43, 54, 1),
(46, 43, 70, 1),
(47, 43, 85, 1),
(48, 43, 100, 1),
(49, 44, 7, 1),
(50, 44, 25, 1),
(51, 44, 40, 1),
(52, 44, 55, 1),
(53, 44, 71, 1),
(54, 44, 86, 1),
(55, 44, 101, 1),
(56, 45, 8, 1),
(57, 45, 26, 1),
(58, 45, 41, 1),
(59, 45, 56, 1),
(60, 45, 72, 1),
(61, 45, 87, 1),
(62, 45, 102, 1),
(63, 46, 9, 1),
(64, 46, 27, 1),
(65, 46, 42, 1),
(66, 46, 57, 1),
(67, 46, 73, 1),
(68, 46, 88, 1),
(69, 46, 103, 1),
(70, 47, 10, 1),
(71, 47, 28, 1),
(72, 47, 43, 1),
(73, 47, 58, 1),
(74, 47, 74, 1),
(75, 47, 89, 1),
(76, 47, 104, 1),
(77, 48, 11, 1),
(78, 48, 29, 1),
(79, 48, 44, 1),
(80, 48, 59, 1),
(81, 48, 75, 1),
(82, 48, 90, 1),
(83, 48, 105, 1),
(84, 49, 13, 1),
(85, 49, 31, 1),
(86, 49, 46, 1),
(87, 49, 61, 1),
(88, 49, 77, 1),
(89, 49, 92, 1),
(90, 49, 107, 1),
(91, 50, 14, 1),
(92, 50, 32, 1),
(93, 50, 47, 1),
(94, 50, 62, 1),
(95, 50, 78, 1),
(96, 50, 93, 1),
(97, 50, 108, 1),
(98, 51, 16, 1),
(99, 51, 34, 1),
(100, 51, 49, 1),
(101, 51, 64, 1),
(102, 51, 80, 1),
(103, 51, 95, 1),
(104, 51, 110, 1),
(105, 40, 51, 1),
(106, 52, 1, 1),
(107, 53, 17, 1),
(108, 54, 18, 1),
(109, 3, 111, 1),
(110, 13, 19, 1),
(111, 16, 65, 1),
(112, 1, 7, 2),
(113, 1, 20, 2),
(114, 6, 3, 2),
(115, 6, 16, 2),
(116, 7, 4, 2),
(117, 5, 5, 2),
(118, 9, 19, 2),
(119, 12, 1, 2),
(120, 13, 14, 2),
(121, 16, 6, 2),
(122, 17, 11, 2),
(123, 20, 18, 2),
(124, 23, 17, 2),
(125, 24, 13, 2),
(126, 25, 2, 2),
(127, 29, 15, 2),
(128, 30, 9, 2),
(129, 35, 10, 2),
(130, 38, 12, 2),
(131, 56, 8, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reward_types`
--

CREATE TABLE `reward_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `reward_types`
--

INSERT INTO `reward_types` (`id`, `name`) VALUES
(1, 'profile_pictures'),
(2, 'profile_borders');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rights`
--

CREATE TABLE `rights` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `rights`
--

INSERT INTO `rights` (`id`, `name`) VALUES
(2, 'modifyAdmins'),
(3, 'modifyMaintenance'),
(1, 'modifyUsers');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `volume` int(11) NOT NULL DEFAULT 50,
  `image_size` int(11) NOT NULL DEFAULT 50,
  `is_set` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `settings`
--

INSERT INTO `settings` (`id`, `user`, `volume`, `image_size`, `is_set`) VALUES
(1, 2, 86, 28, 0),
(2, 2, 50, 50, 0),
(3, 2, 30, 50, 1),
(4, 9, 50, 50, 1),
(5, 9, 50, 50, 0),
(6, 9, 50, 50, 0),
(7, 20, 50, 50, 1),
(8, 20, 50, 50, 0),
(9, 20, 50, 50, 0),
(10, 21, 50, 50, 1),
(11, 21, 50, 50, 0),
(12, 21, 50, 50, 0),
(13, 22, 50, 50, 1),
(14, 22, 50, 50, 0),
(15, 22, 50, 50, 0),
(16, 27, 50, 50, 1),
(17, 27, 50, 50, 0),
(18, 27, 50, 50, 0),
(19, 30, 50, 50, 1),
(20, 30, 50, 50, 0),
(21, 30, 50, 50, 0),
(22, 35, 50, 50, 1),
(23, 35, 50, 50, 0),
(24, 35, 50, 50, 0),
(25, 49, 50, 50, 1),
(26, 49, 50, 50, 0),
(27, 49, 50, 50, 0),
(28, 50, 50, 50, 1),
(29, 50, 50, 50, 0),
(30, 50, 50, 50, 0),
(31, 53, 50, 50, 1),
(32, 53, 50, 50, 0),
(33, 53, 50, 50, 0),
(34, 56, 50, 50, 1),
(35, 56, 50, 50, 0),
(36, 56, 50, 50, 0),
(37, 61, 50, 50, 1),
(38, 61, 50, 50, 0),
(39, 61, 50, 50, 0),
(40, 62, 50, 50, 1),
(41, 62, 50, 50, 0),
(42, 62, 50, 50, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `table_mappings`
--

CREATE TABLE `table_mappings` (
  `id` int(11) NOT NULL,
  `control` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `hot_key` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `table_mappings`
--

INSERT INTO `table_mappings` (`id`, `control`, `slot`, `hot_key`) VALUES
(1, 1, 0, '1'),
(2, 1, 1, '2'),
(3, 1, 2, '3'),
(4, 1, 3, '4'),
(5, 1, 4, '5'),
(6, 1, 5, '6'),
(7, 1, 6, '7'),
(8, 1, 7, '8'),
(9, 1, 8, '9'),
(10, 2, 0, '1'),
(11, 2, 1, '2'),
(12, 2, 2, '3'),
(13, 2, 3, '4'),
(14, 2, 4, '5'),
(15, 2, 5, '6'),
(16, 2, 6, '7'),
(17, 2, 7, '8'),
(18, 2, 8, '9'),
(19, 3, 0, '1'),
(20, 3, 1, '2'),
(21, 3, 2, '3'),
(22, 3, 3, '4'),
(23, 3, 4, '5'),
(24, 3, 5, '6'),
(25, 3, 6, '7'),
(26, 3, 7, '8'),
(27, 3, 8, '9'),
(28, 4, 0, '1'),
(29, 4, 1, '2'),
(30, 4, 2, '3'),
(31, 4, 3, '4'),
(32, 4, 4, '5'),
(33, 4, 5, '6'),
(34, 4, 6, '7'),
(35, 4, 7, '8'),
(36, 4, 8, '9'),
(37, 5, 0, '1'),
(38, 5, 1, '2'),
(39, 5, 2, '3'),
(40, 5, 3, '4'),
(41, 5, 4, '5'),
(42, 5, 5, '6'),
(43, 5, 6, '7'),
(44, 5, 7, '8'),
(45, 5, 8, '9'),
(46, 6, 0, '1'),
(47, 6, 1, '2'),
(48, 6, 2, '3'),
(49, 6, 3, '4'),
(50, 6, 4, '5'),
(51, 6, 5, '6'),
(52, 6, 6, '7'),
(53, 6, 7, '8'),
(54, 6, 8, '9'),
(55, 7, 0, '1'),
(56, 7, 1, '2'),
(57, 7, 2, '3'),
(58, 7, 3, '4'),
(59, 7, 4, '5'),
(60, 7, 5, '6'),
(61, 7, 6, '7'),
(62, 7, 7, '8'),
(63, 7, 8, '9'),
(64, 8, 0, '1'),
(65, 8, 1, '2'),
(66, 8, 2, '3'),
(67, 8, 3, '4'),
(68, 8, 4, '5'),
(69, 8, 5, '6'),
(70, 8, 6, '7'),
(71, 8, 7, '8'),
(72, 8, 8, '9'),
(73, 9, 0, '1'),
(74, 9, 1, '2'),
(75, 9, 2, '3'),
(76, 9, 3, '4'),
(77, 9, 4, '5'),
(78, 9, 5, '6'),
(79, 9, 6, '7'),
(80, 9, 7, '8'),
(81, 9, 8, '9'),
(82, 10, 0, '1'),
(83, 10, 1, '2'),
(84, 10, 2, '3'),
(85, 10, 3, '4'),
(86, 10, 4, '5'),
(87, 10, 5, '6'),
(88, 10, 6, '7'),
(89, 10, 7, '8'),
(90, 10, 8, '9'),
(91, 11, 0, '1'),
(92, 11, 1, '2'),
(93, 11, 2, '3'),
(94, 11, 3, '4'),
(95, 11, 4, '5'),
(96, 11, 5, '6'),
(97, 11, 6, '7'),
(98, 11, 7, '8'),
(99, 11, 8, '9'),
(100, 12, 0, '1'),
(101, 12, 1, '2'),
(102, 12, 2, '3'),
(103, 12, 3, '4'),
(104, 12, 4, '5'),
(105, 12, 5, '6'),
(106, 12, 6, '7'),
(107, 12, 7, '8'),
(108, 12, 8, '9'),
(109, 13, 0, '1'),
(110, 13, 1, '2'),
(111, 13, 2, '3'),
(112, 13, 3, '4'),
(113, 13, 4, '5'),
(114, 13, 5, '6'),
(115, 13, 6, '7'),
(116, 13, 7, '8'),
(117, 13, 8, '9'),
(118, 14, 0, '1'),
(119, 14, 1, '2'),
(120, 14, 2, '3'),
(121, 14, 3, '4'),
(122, 14, 4, '5'),
(123, 14, 5, '6'),
(124, 14, 6, '7'),
(125, 14, 7, '8'),
(126, 14, 8, '9'),
(127, 15, 0, '1'),
(128, 15, 1, '2'),
(129, 15, 2, '3'),
(130, 15, 3, '4'),
(131, 15, 4, '5'),
(132, 15, 5, '6'),
(133, 15, 6, '7'),
(134, 15, 7, '8'),
(135, 15, 8, '9'),
(136, 16, 0, '1'),
(137, 16, 1, '2'),
(138, 16, 2, '3'),
(139, 16, 3, '4'),
(140, 16, 4, '5'),
(141, 16, 5, '6'),
(142, 16, 6, '7'),
(143, 16, 7, '8'),
(144, 16, 8, '9'),
(145, 17, 0, '1'),
(146, 17, 1, '2'),
(147, 17, 2, '3'),
(148, 17, 3, '4'),
(149, 17, 4, '5'),
(150, 17, 5, '6'),
(151, 17, 6, '7'),
(152, 17, 7, '8'),
(153, 17, 8, '9'),
(154, 18, 0, '1'),
(155, 18, 1, '2'),
(156, 18, 2, '3'),
(157, 18, 3, '4'),
(158, 18, 4, '5'),
(159, 18, 5, '6'),
(160, 18, 6, '7'),
(161, 18, 7, '8'),
(162, 18, 8, '9'),
(163, 19, 0, '1'),
(164, 19, 1, '2'),
(165, 19, 2, '3'),
(166, 19, 3, '4'),
(167, 19, 4, '5'),
(168, 19, 5, '6'),
(169, 19, 6, '7'),
(170, 19, 7, '8'),
(171, 19, 8, '9'),
(172, 20, 0, '1'),
(173, 20, 1, '2'),
(174, 20, 2, '3'),
(175, 20, 3, '4'),
(176, 20, 4, '5'),
(177, 20, 5, '6'),
(178, 20, 6, '7'),
(179, 20, 7, '8'),
(180, 20, 8, '9'),
(181, 21, 0, '1'),
(182, 21, 1, '2'),
(183, 21, 2, '3'),
(184, 21, 3, '4'),
(185, 21, 4, '5'),
(186, 21, 5, '6'),
(187, 21, 6, '7'),
(188, 21, 7, '8'),
(189, 21, 8, '9'),
(190, 22, 0, '1'),
(191, 22, 1, '2'),
(192, 22, 2, '3'),
(193, 22, 3, '4'),
(194, 22, 4, '5'),
(195, 22, 5, '6'),
(196, 22, 6, '7'),
(197, 22, 7, '8'),
(198, 22, 8, '9'),
(199, 23, 0, '1'),
(200, 23, 1, '2'),
(201, 23, 2, '3'),
(202, 23, 3, '4'),
(203, 23, 4, '5'),
(204, 23, 5, '6'),
(205, 23, 6, '7'),
(206, 23, 7, '8'),
(207, 23, 8, '9'),
(208, 24, 0, '1'),
(209, 24, 1, '2'),
(210, 24, 2, '3'),
(211, 24, 3, '4'),
(212, 24, 4, '5'),
(213, 24, 5, '6'),
(214, 24, 6, '7'),
(215, 24, 7, '8'),
(216, 24, 8, '9'),
(217, 25, 0, '1'),
(218, 25, 1, '2'),
(219, 25, 2, '3'),
(220, 25, 3, '4'),
(221, 25, 4, '5'),
(222, 25, 5, '6'),
(223, 25, 6, '7'),
(224, 25, 7, '8'),
(225, 25, 8, '9'),
(226, 26, 0, '1'),
(227, 26, 1, '2'),
(228, 26, 2, '3'),
(229, 26, 3, '4'),
(230, 26, 4, '5'),
(231, 26, 5, '6'),
(232, 26, 6, '7'),
(233, 26, 7, '8'),
(234, 26, 8, '9'),
(235, 27, 0, '1'),
(236, 27, 1, '2'),
(237, 27, 2, '3'),
(238, 27, 3, '4'),
(239, 27, 4, '5'),
(240, 27, 5, '6'),
(241, 27, 6, '7'),
(242, 27, 7, '8'),
(243, 27, 8, '9'),
(244, 28, 0, '1'),
(245, 28, 1, '2'),
(246, 28, 2, '3'),
(247, 28, 3, '4'),
(248, 28, 4, '5'),
(249, 28, 5, '6'),
(250, 28, 6, '7'),
(251, 28, 7, '8'),
(252, 28, 8, '9'),
(253, 29, 0, '1'),
(254, 29, 1, '2'),
(255, 29, 2, '3'),
(256, 29, 3, '4'),
(257, 29, 4, '5'),
(258, 29, 5, '6'),
(259, 29, 6, '7'),
(260, 29, 7, '8'),
(261, 29, 8, '9'),
(262, 30, 0, '1'),
(263, 30, 1, '2'),
(264, 30, 2, '3'),
(265, 30, 3, '4'),
(266, 30, 4, '5'),
(267, 30, 5, '6'),
(268, 30, 6, '7'),
(269, 30, 7, '8'),
(270, 30, 8, '9'),
(271, 31, 0, '1'),
(272, 31, 1, '2'),
(273, 31, 2, '3'),
(274, 31, 3, '4'),
(275, 31, 4, '5'),
(276, 31, 5, '6'),
(277, 31, 6, '7'),
(278, 31, 7, '8'),
(279, 31, 8, '9'),
(280, 32, 0, '1'),
(281, 32, 1, '2'),
(282, 32, 2, '3'),
(283, 32, 3, '4'),
(284, 32, 4, '5'),
(285, 32, 5, '6'),
(286, 32, 6, '7'),
(287, 32, 7, '8'),
(288, 32, 8, '9'),
(289, 33, 0, '1'),
(290, 33, 1, '2'),
(291, 33, 2, '3'),
(292, 33, 3, '4'),
(293, 33, 4, '5'),
(294, 33, 5, '6'),
(295, 33, 6, '7'),
(296, 33, 7, '8'),
(297, 33, 8, '9'),
(298, 34, 0, '1'),
(299, 34, 1, '2'),
(300, 34, 2, '3'),
(301, 34, 3, '4'),
(302, 34, 4, '5'),
(303, 34, 5, '6'),
(304, 34, 6, '7'),
(305, 34, 7, '8'),
(306, 34, 8, '9'),
(307, 35, 0, '1'),
(308, 35, 1, '2'),
(309, 35, 2, '3'),
(310, 35, 3, '4'),
(311, 35, 4, '5'),
(312, 35, 5, '6'),
(313, 35, 6, '7'),
(314, 35, 7, '8'),
(315, 35, 8, '9'),
(316, 36, 0, '1'),
(317, 36, 1, '2'),
(318, 36, 2, '3'),
(319, 36, 3, '4'),
(320, 36, 4, '5'),
(321, 36, 5, '6'),
(322, 36, 6, '7'),
(323, 36, 7, '8'),
(324, 36, 8, '9'),
(325, 37, 0, '1'),
(326, 37, 1, '2'),
(327, 37, 2, '3'),
(328, 37, 3, '4'),
(329, 37, 4, '5'),
(330, 37, 5, '6'),
(331, 37, 6, '7'),
(332, 37, 7, '8'),
(333, 37, 8, '9'),
(334, 38, 0, '1'),
(335, 38, 1, '2'),
(336, 38, 2, '3'),
(337, 38, 3, '4'),
(338, 38, 4, '5'),
(339, 38, 5, '6'),
(340, 38, 6, '7'),
(341, 38, 7, '8'),
(342, 38, 8, '9'),
(343, 39, 0, '1'),
(344, 39, 1, '2'),
(345, 39, 2, '3'),
(346, 39, 3, '4'),
(347, 39, 4, '5'),
(348, 39, 5, '6'),
(349, 39, 6, '7'),
(350, 39, 7, '8'),
(351, 39, 8, '9'),
(352, 40, 0, '1'),
(353, 40, 1, '2'),
(354, 40, 2, '3'),
(355, 40, 3, '4'),
(356, 40, 4, '5'),
(357, 40, 5, '6'),
(358, 40, 6, '7'),
(359, 40, 7, '8'),
(360, 40, 8, '9'),
(361, 41, 0, '1'),
(362, 41, 1, '2'),
(363, 41, 2, '3'),
(364, 41, 3, '4'),
(365, 41, 4, '5'),
(366, 41, 5, '6'),
(367, 41, 6, '7'),
(368, 41, 7, '8'),
(369, 41, 8, '9'),
(370, 42, 0, '1'),
(371, 42, 1, '2'),
(372, 42, 2, '3'),
(373, 42, 3, '4'),
(374, 42, 4, '5'),
(375, 42, 5, '6'),
(376, 42, 6, '7'),
(377, 42, 7, '8'),
(378, 42, 8, '9');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `game` int(11) NOT NULL,
  `date` datetime(3) NOT NULL,
  `group` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tips`
--

INSERT INTO `tips` (`id`, `game`, `date`, `group`, `item`) VALUES
(1, 1, '2025-03-24 14:31:01.000', 'creakingHeart0', 'creaking_heart'),
(2, 2, '2025-03-24 14:31:49.000', 'cookie0', 'cookie'),
(3, 3, '2025-03-24 14:35:42.000', 'cake0', 'cake'),
(4, 4, '2025-03-24 14:37:10.000', 'bannerPatterns0', 'field_masoned_banner_pattern'),
(5, 5, '2025-03-24 14:38:48.000', 'suspiciousStew0', 'suspicious_stew'),
(6, 6, '2025-03-24 15:02:02.000', 'respawnAnchor0', 'respawn_anchor'),
(7, 9, '2025-04-02 15:37:20.684', 'planks0', 'oak_planks'),
(8, 9, '2025-04-02 15:38:01.735', 'armorStand0', 'armor_stand'),
(9, 9, '2025-04-02 15:38:31.357', 'rail0', 'rail'),
(10, 9, '2025-04-02 15:39:12.953', 'piston0', 'piston'),
(11, 9, '2025-04-02 15:39:30.615', 'axe0', 'wooden_axe'),
(12, 11, '2025-04-02 15:40:25.066', 'boat0', 'oak_boat'),
(13, 11, '2025-04-02 15:41:40.061', 'enderChest0', 'ender_chest');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `login_token` varchar(255) NOT NULL,
  `is_expire` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tokens`
--

INSERT INTO `tokens` (`id`, `user`, `login_token`, `is_expire`) VALUES
(9, 9, '693a98dec8266d620bd1ee3782a1bcde:cc0f64d0efc7ce05efdd5a8d85f017fe1e17b36bc239474994f39c93d27b2940287b76332ad3605924b5db0a5f9e79c8', 0),
(12, 12, 'ad3b908d07ffba2c8df11b0d7bd90113:4d0da22e8158edea6eeb78532862e49e18e8ce5bbf52e971be6f85995488924e79e5753a089a3e253509daf0557375b1', 1),
(21, 20, '6d58366ec2166114c9305ce6fed7d763:58aae1419de47d1fc91d6039e158d63138820e5dd35ebcddf521629e1d1f74127d1a50b3f71b88a6eb58412552971db0', 0),
(22, 21, 'd0b44cf257e747554d9b95594e4802ae:4473fffb187a318df2d673b2b25999176ffd9adbeb11c835627bdc2db92aa9ee0ee039d316813436ef7ded0c4f2ddd4d', 0),
(24, 23, '426e992fcfb50c16e3e4f800e7cc4fd1:f1e01633d15cac61e94bc56a1b0deff9a9d7d976f4758d7776ff279be68bccda307c0c53a2ba5111fbfc77165586878e', 1),
(26, 25, '5cbc4731575fb0f7668869c3a398bb6a:c5b60a7c2f87b1c9328f3bbd55092f3e9c4779c0d38cc0232eca16f7dbb28806df1fd3aef955a77c27c8c804cbd0e68a', 1),
(28, 2, '4b3d1156c76c249a20fe02e6711539e4:9ff334ce9016b62b3f154075d6c9646a76692ae0a764e9d05121b8b856135795e3922cc89c2f5abf6650ba353627cddf', 0),
(29, 27, '3fec0488e2f9fa5dfadcf3a57dd842ff:0924653a28c9b175161da9884d94202643384d9b249f16e7b8ccdb42a8aba0c907856d0c3bb39a79fef36bb4d0e1c7c1', 0),
(32, 30, 'a322b9645bbf5f22c35ea670f406d2f1:dcf60e5b39e41f2bd269642606ef2c56b8ce7d1eb759b8b081c571327ca931aec311acf9c806febf2f33c3185566ceb7', 0),
(33, 31, '35c7e87ae721c03051da36451dbb1266:5ffca4d0198c561af96817dea104b996ad6f466627dec9bd8e5ca3428523f9207d47e609ece83ceca22cd4e942ca1c08', 1),
(34, 32, '24ffb97f5bca02e89d159e1269a007ec:fcfd196549c9cb9155c39c3fc1d91f224843ada84bd7836d70d32875a7e49115cfabc58c445e0ca7e9b31692900306d5', 1),
(35, 33, '4918b87e412017e9272fac2852a4c3a8:a853d949b1a8e9a802066d4a50bb2fb90d84823892262291e9cc02339f12237a1a1d4470c7d97203677f29c09c4a497b', 1),
(37, 35, '28989c3bdf79e032c763d78c4256e79c:60f0849fe6ccbc4f23c02e382e40246e6499b9eccac6e75de9b83aec090d3e8b7eaf722829781d7b00c4c19acb0f790b', 0),
(40, 38, 'ba60ab69a09da64f3abda77159db6988:494878108313a74bc19462a6e4f56171b478d300c1d86adb386d6131cf2366a614bfa07823cb3fad852710c6cbb5cf22', 1),
(43, 41, '2f17dbfd1ec6faa1b03f926691fdbe2e:76e7bc2eda61f16b242b9acdce81ba3157cf27c1a39f05e627e9e898f6251d2742f0845068ab6d820b6e848511045c75', 1),
(44, 42, '0af0ce220063465cf101de5df3cbc7d2:306d990b4d5f684fe9ee205ceb020f10d63860dbf62472bb07d3c5eb80ca86969deb59fa8e3ada540ffd25355a80aa23', 1),
(45, 43, 'b7ac8d81a94b5f33476dfd895ad11dda:5e6ff07857953d3eec209d36f9255f9184da5071bdf2beb8bcdf332379ba1ae5faa3c7a749c71ca3f2525e89f4a83849', 1),
(46, 44, '6f4aaf806696b128fefcb81fecc6984d:8eeabd0822527812747ddb929f306ed1152f5e6c8078bd145d8144855be7304196be613b0b3d1b43f0923eca36f83d1e', 1),
(47, 45, '6b6602e6d46754853d3e982a264eb543:9ef8df06c7ae75f4e5b58e305dbae0e029e2e3bb2c5ab12c1e192e5357142d57e093e6a5ebc84fd827892cdeba12f4d1', 1),
(48, 46, '269cbe6f6e677cb261c888a65283b554:15a4d37fdb1fa5b190140df2cf36b1d17e547581bf6b60c92df4d1eb99349325300289a1c14d3aa86952c262b50fffc3', 1),
(51, 49, '24461f2a8fcb711519ee480453954840:4d6d4b5ddf4547f21b89a9026179add9167d4aa8a5d28caf52b74caea03d9f15d0c0cac7c49c466eb1f8392512361350', 0),
(52, 50, '07e41cb4429878a236d18cd99dfa1c7c:b1d3ad3f32174890872acd0b3d5030ed5b3e57cadb9c07a18fc858ee1b16c43d08026816251949ffc75b70c5501bb9ef', 0),
(53, 51, 'bf0e1bad16637b1b04371364d44c99ad:8e5e73222d03e84b8009d49de457e278ed1a9c3976fe0add44ae5008a837a1d51872d7b06b677551a2bd5bfede5d8f68', 1),
(55, 53, '61ef2f74cc6d7bfaba4d9af387c0e5ae:5026be52c836e1cc204bc32550cfc31378d92e31d385901f70a6d33184231c713d18e26d0072b3b054d957b6deae54dc', 0),
(58, 56, '9fb213fcb66ff874160487947ab35147:b8195df879d5df98d4b0cebc26028ab9175cfcfb2a9b42ae5cf6f34dce94df20a21b414a5e44058c474993bfdea26021', 0),
(63, 61, 'a8e019543aa56e2c47877b0e41eed38b:621837171a44c52226a7441a7b7ce6982b5f7c5250e52c3037602e84b47c6660b6553715ac1f866b42f2be28b9c60e66', 0),
(64, 62, '3cbf22fa991427a270dc814d94da3b06:49ca9c8058afe15ba52e45e75f8125ddcfb811de47ac675504daf7ee7aa4769661edacb718f52bc34d0a453d08f1e0c0', 0),
(69, 67, 'a55f6e131d33ed4374727bb27366142a:19a5c83693cee4a27121d89338fcc37225a90f86fee03e657f29a0294cb33b023ac339a563048e98c28900bc01c0e54d', 1),
(71, 69, '860c904e16a33ee02cd137a2c441ff92:977e9d6495b6f33c7551f19b9620bd64fcddeb123f0952d508eb9eb01c9f216a03b2fe92737856d718c5fdfb4e6839e2', 1),
(77, 74, 'b0a3bb790547acdf3832a9fd5251950c:f9fce1775050893de7d268e787ff89e78b3d76221989b4b2514db6bbf9f04ddeee213da4a5f41f64b110f9cc9519a42f', 0),
(82, 80, '48a422f6ac97858144ad8e362c769997:2ebef00ace2b69b70f0ec1bd97924ebcd5566715672bdb90c117499fb2990f6e7af95a853d358de67226d9c0d2fdbdcf', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `registration_date` datetime(3) NOT NULL,
  `is_guest` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `registration_date`, `is_guest`) VALUES
(2, 'MartinPotter', '$2b$04$ClAEgrD/GzaStgNw1KWRvOCGjlF.hWMpzzTzO.w/wOYFXXSJptwLG', 'fazekas.marton16@gmail.com', '2025-03-24 14:29:59.000', 0),
(9, 'wjhgegjm', '$2b$04$Mv3qxaS6eFvjksEfaO/wuugbBSvulIgaaiO.46oRV/2mLv2CYKfxW', 'marton16@gmail.com', '2025-03-24 14:39:23.000', 0),
(12, NULL, NULL, NULL, '2025-03-24 14:39:54.000', 1),
(20, 'fsghdfjkh', '$2b$04$brly5a.akYBGdMAmxDnRguFoldqVxgVpq9h7H0WdCP8vfyEtO7ehi', 'whecrmwkcr@gmail.com', '2025-03-24 14:59:39.000', 0),
(21, 'knusdnhis,nekn', '$2b$04$hoeEzcers/1bsdz5rMDqDOF1NLEItrONQ4OLeFfg7va8dOS403EPW', 'aebsndc3w@gmail.com', '2025-03-24 15:00:23.000', 0),
(22, 'bwcbjwe', '$2b$04$o1v1ECSe3.JappBN/7HHSe.9Fr5QZArrbwu6Yl9hkdWFO42e.RJT.', 'awced@gmail.com', '2025-03-24 15:01:23.000', 0),
(23, NULL, NULL, NULL, '2025-03-24 15:02:15.000', 1),
(25, NULL, NULL, NULL, '2025-03-24 15:02:17.000', 1),
(27, 'wjhgegjmggg', '$2b$04$sI.Ih4d8HhV0Q5Yu6NUOeO.TWbXMU7QvPs.pRTWFisJUckS8WCue6', 'gnkcrwankrckjr@gmail.co', '2025-03-24 15:03:00.000', 0),
(30, 'wjhgegjmsd', '$2b$04$eH0rfO.MX/7xKdmMuLUbb.UYb52P3Zz.bO/9iPyq9KbtSbSifekbm', 'adwefawd@gmail.com', '2025-03-24 15:06:51.000', 0),
(31, NULL, NULL, NULL, '2025-03-24 15:06:52.000', 1),
(32, NULL, NULL, NULL, '2025-03-24 15:07:58.000', 1),
(33, NULL, NULL, NULL, '2025-03-24 15:08:01.000', 1),
(35, 'wjhgegjmjjh', '$2b$04$TyIAaw63lxFjiueihoCpS.4N7sQWpM5Lu9/N4Nhv96mRj8zrWtVri', 'waeccaew@gmail.com', '2025-03-24 15:08:21.000', 0),
(38, NULL, NULL, NULL, '2025-03-24 15:17:01.000', 1),
(41, NULL, NULL, NULL, '2025-03-24 15:17:53.000', 1),
(42, NULL, NULL, NULL, '2025-03-24 15:18:12.000', 1),
(43, NULL, NULL, NULL, '2025-03-24 15:18:26.000', 1),
(44, NULL, NULL, NULL, '2025-03-24 15:18:35.000', 1),
(45, NULL, NULL, NULL, '2025-03-24 15:18:53.000', 1),
(46, NULL, NULL, NULL, '2025-03-24 15:19:00.000', 1),
(49, 'waaws', '$2b$04$NU5ESAnqs1hQJ8pUevZi3uFqf/x8L/L2Kctr/lprCdzveI0Ppdvi6', 'asdwcc@gmail.com', '2025-03-24 15:20:37.000', 0),
(50, 'wsada', '$2b$04$C2yennPoFdHrQv4M3CKbDuvVBn7wwxgqrXCJXhU2pYBquheO.0w6a', 'awcad@gmail.com', '2025-03-24 15:21:57.000', 0),
(51, NULL, NULL, NULL, '2025-03-24 15:21:58.000', 1),
(53, 'awdawc', '$2b$04$irS.tkQYIVdxSdgnjFD.U.hOl1pAyi2PHTFphUX3B1QF2ZLEzGdjK', 'awcwcf@gmail.com', '2025-03-24 15:25:24.000', 0),
(56, 'wr3fswww', '$2b$04$4z6JXrakrDUI0ZjJnX6kkuE9dUWJrEuINdIHRiUClqy6Aybu81TXC', 'asdasdddd@gmail.com', '2025-03-24 15:28:25.000', 0),
(61, 'ascdaw', '$2b$04$II6i12TEORkd92S8aqXrE.obE41h0wMzpHOLFnr1VpHTeE7Bfh4dG', 'awcearrf@gmail.com', '2025-03-24 15:31:54.000', 0),
(62, 'awacd', '$2b$04$76c43sgeyqVBhcgYcwa0COMppqP4jHr0uI4tMSWE3XQE1/qLvG9XS', 'aeacwf@gmail.com', '2025-03-24 15:32:16.000', 0),
(67, NULL, NULL, NULL, '2025-04-02 14:59:01.559', 1),
(69, NULL, NULL, NULL, '2025-04-02 15:06:50.908', 1),
(72, NULL, NULL, NULL, '2025-04-02 15:36:57.229', 1),
(74, 'admin123', '$2b$04$83yXXLm5p1DCHQXMYdIg8OjTGPSHs69ppljq7fmTAsOXIDKBEbkKm', 'asdasd@gmail.com', '2025-04-02 16:49:03.594', 0),
(75, NULL, NULL, NULL, '2025-04-02 16:49:47.290', 1),
(80, NULL, NULL, NULL, '2025-04-02 16:56:20.868', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users_achievements`
--

CREATE TABLE `users_achievements` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `achievement` int(11) NOT NULL,
  `progress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users_achievements`
--

INSERT INTO `users_achievements` (`id`, `user`, `achievement`, `progress`) VALUES
(1, 2, 1, 1),
(2, 2, 14, 5),
(3, 2, 15, 6),
(4, 2, 16, 6),
(5, 2, 17, 6),
(6, 2, 18, 6),
(7, 2, 4, 1),
(8, 2, 7, 1),
(9, 2, 2, 6),
(10, 9, 1, 1),
(11, 20, 1, 1),
(12, 21, 1, 1),
(13, 22, 1, 1),
(14, 22, 9, 1),
(15, 22, 10, 1),
(16, 22, 11, 1),
(17, 22, 12, 1),
(18, 22, 13, 1),
(19, 22, 7, 1),
(20, 22, 2, 1),
(21, 27, 1, 1),
(22, 30, 1, 1),
(23, 35, 1, 1),
(24, 49, 1, 1),
(25, 50, 1, 1),
(26, 53, 1, 1),
(27, 56, 1, 1),
(28, 61, 1, 1),
(29, 62, 1, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users_collections`
--

CREATE TABLE `users_collections` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `collection` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users_collections`
--

INSERT INTO `users_collections` (`id`, `user`, `collection`) VALUES
(3, 2, 'cake'),
(2, 2, 'cookie'),
(1, 2, 'creaking_heart'),
(7, 2, 'ender_chest'),
(4, 2, 'field_masoned_banner_pattern'),
(5, 2, 'suspicious_stew'),
(6, 22, 'respawn_anchor');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users_profile_borders`
--

CREATE TABLE `users_profile_borders` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `profile_border` int(11) NOT NULL,
  `is_set` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users_profile_borders`
--

INSERT INTO `users_profile_borders` (`id`, `user`, `profile_border`, `is_set`) VALUES
(2, 2, 7, 0),
(3, 2, 20, 0),
(4, 2, 7, 0),
(11, 2, 4, 1),
(12, 9, 7, 1),
(13, 9, 7, 0),
(14, 9, 20, 0),
(17, 12, 7, 1),
(25, 20, 7, 1),
(26, 20, 20, 0),
(27, 20, 7, 0),
(28, 21, 7, 1),
(29, 21, 20, 0),
(30, 21, 7, 0),
(31, 22, 7, 1),
(32, 22, 20, 0),
(33, 22, 7, 0),
(34, 22, 4, 0),
(35, 23, 7, 1),
(37, 25, 7, 1),
(39, 27, 7, 1),
(40, 27, 7, 0),
(41, 27, 20, 0),
(44, 30, 7, 1),
(45, 30, 20, 0),
(46, 30, 7, 0),
(47, 31, 7, 1),
(48, 32, 7, 1),
(49, 33, 7, 1),
(51, 35, 7, 1),
(52, 35, 7, 0),
(53, 35, 20, 0),
(56, 38, 7, 1),
(59, 41, 7, 1),
(60, 42, 7, 1),
(61, 43, 7, 1),
(62, 44, 7, 1),
(63, 45, 7, 1),
(64, 46, 7, 1),
(67, 49, 7, 1),
(68, 49, 20, 0),
(69, 49, 7, 0),
(70, 50, 7, 1),
(71, 50, 7, 0),
(72, 50, 20, 0),
(73, 51, 7, 1),
(75, 53, 7, 1),
(76, 53, 20, 0),
(77, 53, 7, 0),
(80, 56, 7, 1),
(81, 56, 7, 0),
(82, 56, 20, 0),
(87, 61, 7, 1),
(88, 61, 20, 0),
(89, 61, 7, 0),
(90, 62, 7, 1),
(91, 62, 7, 0),
(92, 62, 20, 0),
(97, 67, 7, 1),
(99, 69, 7, 1),
(102, 72, 7, 1),
(104, 75, 7, 1),
(109, 80, 7, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users_profile_pictures`
--

CREATE TABLE `users_profile_pictures` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `profile_picture` int(11) NOT NULL,
  `is_set` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users_profile_pictures`
--

INSERT INTO `users_profile_pictures` (`id`, `user`, `profile_picture`, `is_set`) VALUES
(2, 2, 15, 0),
(3, 2, 12, 0),
(4, 2, 79, 1),
(5, 2, 63, 0),
(6, 2, 48, 0),
(7, 2, 94, 0),
(8, 2, 30, 0),
(9, 2, 109, 0),
(10, 2, 15, 0),
(11, 2, 106, 0),
(12, 2, 33, 0),
(13, 2, 91, 0),
(14, 2, 76, 0),
(15, 2, 60, 0),
(16, 2, 45, 0),
(23, 9, 15, 1),
(24, 9, 15, 0),
(25, 9, 12, 0),
(26, 9, 33, 0),
(27, 9, 94, 0),
(28, 9, 60, 0),
(29, 9, 30, 0),
(30, 9, 48, 0),
(31, 9, 45, 0),
(32, 9, 109, 0),
(33, 9, 79, 0),
(34, 9, 63, 0),
(35, 9, 76, 0),
(36, 9, 106, 0),
(37, 9, 91, 0),
(40, 12, 15, 1),
(48, 20, 15, 1),
(49, 20, 12, 0),
(50, 20, 76, 0),
(51, 20, 45, 0),
(52, 20, 33, 0),
(53, 20, 15, 0),
(54, 20, 91, 0),
(55, 20, 109, 0),
(56, 20, 63, 0),
(57, 20, 79, 0),
(58, 20, 48, 0),
(59, 20, 60, 0),
(60, 20, 106, 0),
(61, 20, 94, 0),
(62, 20, 30, 0),
(63, 21, 15, 1),
(64, 21, 12, 0),
(65, 21, 91, 0),
(66, 21, 76, 0),
(67, 21, 109, 0),
(68, 21, 15, 0),
(69, 21, 33, 0),
(70, 21, 60, 0),
(71, 21, 45, 0),
(72, 21, 79, 0),
(73, 21, 30, 0),
(74, 21, 94, 0),
(75, 21, 48, 0),
(76, 21, 63, 0),
(77, 21, 106, 0),
(78, 22, 15, 1),
(79, 22, 76, 0),
(80, 22, 33, 0),
(81, 22, 63, 0),
(82, 22, 106, 0),
(83, 22, 45, 0),
(84, 22, 94, 0),
(85, 22, 109, 0),
(86, 22, 91, 0),
(87, 22, 12, 0),
(88, 22, 79, 0),
(89, 22, 15, 0),
(90, 22, 60, 0),
(91, 22, 48, 0),
(92, 22, 30, 0),
(94, 23, 15, 1),
(95, 25, 15, 1),
(97, 27, 15, 1),
(98, 27, 15, 0),
(99, 27, 12, 0),
(100, 27, 33, 0),
(101, 27, 76, 0),
(102, 27, 63, 0),
(103, 27, 91, 0),
(104, 27, 45, 0),
(105, 27, 106, 0),
(106, 27, 48, 0),
(107, 27, 94, 0),
(108, 27, 109, 0),
(109, 27, 60, 0),
(110, 27, 79, 0),
(111, 27, 30, 0),
(114, 30, 15, 1),
(115, 30, 12, 0),
(116, 30, 33, 0),
(117, 30, 76, 0),
(118, 30, 48, 0),
(119, 30, 91, 0),
(120, 30, 63, 0),
(121, 30, 45, 0),
(122, 30, 30, 0),
(123, 30, 15, 0),
(124, 30, 60, 0),
(125, 30, 109, 0),
(126, 30, 106, 0),
(127, 30, 94, 0),
(128, 30, 79, 0),
(129, 31, 15, 1),
(130, 32, 15, 1),
(131, 33, 15, 1),
(133, 35, 15, 1),
(134, 35, 12, 0),
(135, 35, 30, 0),
(136, 35, 63, 0),
(137, 35, 94, 0),
(138, 35, 79, 0),
(139, 35, 76, 0),
(140, 35, 91, 0),
(141, 35, 60, 0),
(142, 35, 45, 0),
(143, 35, 106, 0),
(144, 35, 48, 0),
(145, 35, 109, 0),
(146, 35, 33, 0),
(147, 35, 15, 0),
(150, 38, 15, 1),
(153, 41, 15, 1),
(154, 42, 15, 1),
(155, 43, 15, 1),
(156, 44, 15, 1),
(157, 45, 15, 1),
(158, 46, 15, 1),
(161, 49, 15, 1),
(162, 49, 12, 0),
(163, 49, 15, 0),
(164, 49, 48, 0),
(165, 49, 30, 0),
(166, 49, 79, 0),
(167, 49, 76, 0),
(168, 49, 33, 0),
(169, 49, 94, 0),
(170, 49, 91, 0),
(171, 49, 106, 0),
(172, 49, 45, 0),
(173, 49, 109, 0),
(174, 49, 63, 0),
(175, 49, 60, 0),
(176, 50, 15, 1),
(177, 50, 15, 0),
(178, 50, 12, 0),
(179, 50, 33, 0),
(180, 50, 48, 0),
(181, 50, 106, 0),
(182, 50, 91, 0),
(183, 50, 45, 0),
(184, 50, 30, 0),
(185, 50, 109, 0),
(186, 50, 63, 0),
(187, 50, 79, 0),
(188, 50, 60, 0),
(189, 50, 76, 0),
(190, 50, 94, 0),
(191, 51, 15, 1),
(193, 53, 15, 1),
(194, 53, 12, 0),
(195, 53, 45, 0),
(196, 53, 106, 0),
(197, 53, 60, 0),
(198, 53, 48, 0),
(199, 53, 79, 0),
(200, 53, 76, 0),
(201, 53, 94, 0),
(202, 53, 91, 0),
(203, 53, 63, 0),
(204, 53, 33, 0),
(205, 53, 15, 0),
(206, 53, 109, 0),
(207, 53, 30, 0),
(210, 56, 15, 1),
(211, 56, 76, 0),
(212, 56, 45, 0),
(213, 56, 91, 0),
(214, 56, 63, 0),
(215, 56, 30, 0),
(216, 56, 33, 0),
(217, 56, 94, 0),
(218, 56, 15, 0),
(219, 56, 79, 0),
(220, 56, 60, 0),
(221, 56, 12, 0),
(222, 56, 48, 0),
(223, 56, 109, 0),
(224, 56, 106, 0),
(229, 61, 15, 1),
(230, 61, 30, 0),
(231, 61, 15, 0),
(232, 61, 45, 0),
(233, 61, 12, 0),
(234, 61, 94, 0),
(235, 61, 109, 0),
(236, 61, 60, 0),
(237, 61, 79, 0),
(238, 61, 76, 0),
(239, 61, 48, 0),
(240, 61, 63, 0),
(241, 61, 106, 0),
(242, 61, 91, 0),
(243, 61, 33, 0),
(244, 62, 15, 1),
(245, 62, 12, 0),
(246, 62, 109, 0),
(247, 62, 60, 0),
(248, 62, 33, 0),
(249, 62, 106, 0),
(250, 62, 94, 0),
(251, 62, 48, 0),
(252, 62, 63, 0),
(253, 62, 45, 0),
(254, 62, 30, 0),
(255, 62, 91, 0),
(256, 62, 76, 0),
(257, 62, 15, 0),
(258, 62, 79, 0),
(263, 67, 15, 1),
(265, 69, 15, 1),
(268, 72, 15, 1),
(270, 75, 15, 1),
(275, 80, 15, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users_rights`
--

CREATE TABLE `users_rights` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `right` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users_rights`
--

INSERT INTO `users_rights` (`id`, `user`, `right`) VALUES
(3, 74, 1),
(2, 74, 2),
(1, 74, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `achievements_title_key` (`title`),
  ADD UNIQUE KEY `achievements_parent_key` (`parent`),
  ADD KEY `achievements_parent_idx` (`parent`);

--
-- A tábla indexei `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collections_item_id_key` (`item_id`);

--
-- A tábla indexei `controls`
--
ALTER TABLE `controls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `controls_settings_key` (`settings`);

--
-- A tábla indexei `crafting_table_slots`
--
ALTER TABLE `crafting_table_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crafting_table_slots_status_idx` (`status`),
  ADD KEY `crafting_table_slots_tip_idx` (`tip`);

--
-- A tábla indexei `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `difficulties_color_code_key` (`color_code`),
  ADD UNIQUE KEY `difficulties_name_key` (`name`);

--
-- A tábla indexei `gamemodes`
--
ALTER TABLE `gamemodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gamemodes_name_key` (`name`),
  ADD KEY `gamemodes_difficulty_idx` (`difficulty`);

--
-- A tábla indexei `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_player_idx` (`player`),
  ADD KEY `games_type_idx` (`type`);

--
-- A tábla indexei `guess_types`
--
ALTER TABLE `guess_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guess_types_type_key` (`type`);

--
-- A tábla indexei `hints`
--
ALTER TABLE `hints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hints_game_idx` (`game`);

--
-- A tábla indexei `inventories_items`
--
ALTER TABLE `inventories_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_items_game_idx` (`game`),
  ADD KEY `inventories_items_item_idx` (`item`);

--
-- A tábla indexei `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_item_id_key` (`item_id`);

--
-- A tábla indexei `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_user_idx` (`user`);

--
-- A tábla indexei `profile_borders`
--
ALTER TABLE `profile_borders`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `profile_pictures`
--
ALTER TABLE `profile_pictures`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_achievement_idx` (`achievement`),
  ADD KEY `rewards_reward_type_idx` (`reward_type`);

--
-- A tábla indexei `reward_types`
--
ALTER TABLE `reward_types`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rights_name_key` (`name`);

--
-- A tábla indexei `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_idx` (`user`);

--
-- A tábla indexei `table_mappings`
--
ALTER TABLE `table_mappings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_mappings_control_idx` (`control`);

--
-- A tábla indexei `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tips_item_fkey` (`item`),
  ADD KEY `tips_game_idx` (`game`);

--
-- A tábla indexei `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_login_token_key` (`login_token`),
  ADD UNIQUE KEY `tokens_user_key` (`user`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`),
  ADD UNIQUE KEY `users_username_key` (`username`);

--
-- A tábla indexei `users_achievements`
--
ALTER TABLE `users_achievements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_achievements_user_achievement_key` (`user`,`achievement`),
  ADD KEY `users_achievements_achievement_idx` (`achievement`),
  ADD KEY `users_achievements_user_idx` (`user`);

--
-- A tábla indexei `users_collections`
--
ALTER TABLE `users_collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_collections_user_collection_key` (`user`,`collection`),
  ADD KEY `users_collections_collection_idx` (`collection`),
  ADD KEY `users_collections_user_idx` (`user`);

--
-- A tábla indexei `users_profile_borders`
--
ALTER TABLE `users_profile_borders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_profile_borders_profile_border_idx` (`profile_border`),
  ADD KEY `users_profile_borders_user_idx` (`user`);

--
-- A tábla indexei `users_profile_pictures`
--
ALTER TABLE `users_profile_pictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_profile_pictures_profile_picture_idx` (`profile_picture`),
  ADD KEY `users_profile_pictures_user_idx` (`user`);

--
-- A tábla indexei `users_rights`
--
ALTER TABLE `users_rights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_rights_user_right_key` (`user`,`right`),
  ADD KEY `users_rights_right_idx` (`right`),
  ADD KEY `users_rights_user_idx` (`user`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT a táblához `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900;

--
-- AUTO_INCREMENT a táblához `controls`
--
ALTER TABLE `controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `crafting_table_slots`
--
ALTER TABLE `crafting_table_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT a táblához `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `gamemodes`
--
ALTER TABLE `gamemodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `guess_types`
--
ALTER TABLE `guess_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `hints`
--
ALTER TABLE `hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT a táblához `inventories_items`
--
ALTER TABLE `inventories_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT a táblához `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `profile_borders`
--
ALTER TABLE `profile_borders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `profile_pictures`
--
ALTER TABLE `profile_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT a táblához `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT a táblához `reward_types`
--
ALTER TABLE `reward_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `table_mappings`
--
ALTER TABLE `table_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT a táblához `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT a táblához `users_achievements`
--
ALTER TABLE `users_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT a táblához `users_collections`
--
ALTER TABLE `users_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `users_profile_borders`
--
ALTER TABLE `users_profile_borders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT a táblához `users_profile_pictures`
--
ALTER TABLE `users_profile_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT a táblához `users_rights`
--
ALTER TABLE `users_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_parent_fkey` FOREIGN KEY (`parent`) REFERENCES `achievements` (`id`);

--
-- Megkötések a táblához `controls`
--
ALTER TABLE `controls`
  ADD CONSTRAINT `controls_settings_fkey` FOREIGN KEY (`settings`) REFERENCES `settings` (`id`);

--
-- Megkötések a táblához `crafting_table_slots`
--
ALTER TABLE `crafting_table_slots`
  ADD CONSTRAINT `crafting_table_slots_status_fkey` FOREIGN KEY (`status`) REFERENCES `guess_types` (`id`),
  ADD CONSTRAINT `crafting_table_slots_tip_fkey` FOREIGN KEY (`tip`) REFERENCES `tips` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `gamemodes`
--
ALTER TABLE `gamemodes`
  ADD CONSTRAINT `gamemodes_difficulty_fkey` FOREIGN KEY (`difficulty`) REFERENCES `difficulties` (`id`);

--
-- Megkötések a táblához `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_player_fkey` FOREIGN KEY (`player`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `games_type_fkey` FOREIGN KEY (`type`) REFERENCES `gamemodes` (`id`);

--
-- Megkötések a táblához `hints`
--
ALTER TABLE `hints`
  ADD CONSTRAINT `hints_game_fkey` FOREIGN KEY (`game`) REFERENCES `games` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `inventories_items`
--
ALTER TABLE `inventories_items`
  ADD CONSTRAINT `inventories_items_game_fkey` FOREIGN KEY (`game`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventories_items_item_fkey` FOREIGN KEY (`item`) REFERENCES `items` (`item_id`);

--
-- Megkötések a táblához `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_achievement_fkey` FOREIGN KEY (`achievement`) REFERENCES `achievements` (`id`),
  ADD CONSTRAINT `rewards_reward_type_fkey` FOREIGN KEY (`reward_type`) REFERENCES `reward_types` (`id`);

--
-- Megkötések a táblához `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `table_mappings`
--
ALTER TABLE `table_mappings`
  ADD CONSTRAINT `table_mappings_control_fkey` FOREIGN KEY (`control`) REFERENCES `controls` (`id`);

--
-- Megkötések a táblához `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_game_fkey` FOREIGN KEY (`game`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tips_item_fkey` FOREIGN KEY (`item`) REFERENCES `collections` (`item_id`);

--
-- Megkötések a táblához `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `users_achievements`
--
ALTER TABLE `users_achievements`
  ADD CONSTRAINT `users_achievements_achievement_fkey` FOREIGN KEY (`achievement`) REFERENCES `achievements` (`id`),
  ADD CONSTRAINT `users_achievements_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `users_collections`
--
ALTER TABLE `users_collections`
  ADD CONSTRAINT `users_collections_collection_fkey` FOREIGN KEY (`collection`) REFERENCES `collections` (`item_id`),
  ADD CONSTRAINT `users_collections_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Megkötések a táblához `users_profile_borders`
--
ALTER TABLE `users_profile_borders`
  ADD CONSTRAINT `users_profile_borders_profile_border_fkey` FOREIGN KEY (`profile_border`) REFERENCES `profile_borders` (`id`),
  ADD CONSTRAINT `users_profile_borders_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `users_profile_pictures`
--
ALTER TABLE `users_profile_pictures`
  ADD CONSTRAINT `users_profile_pictures_profile_picture_fkey` FOREIGN KEY (`profile_picture`) REFERENCES `profile_pictures` (`id`),
  ADD CONSTRAINT `users_profile_pictures_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `users_rights`
--
ALTER TABLE `users_rights`
  ADD CONSTRAINT `users_rights_right_fkey` FOREIGN KEY (`right`) REFERENCES `rights` (`id`),
  ADD CONSTRAINT `users_rights_user_fkey` FOREIGN KEY (`user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
