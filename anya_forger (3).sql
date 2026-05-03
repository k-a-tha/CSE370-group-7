-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2026 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anya_forger`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `ID` int(11) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `PasswordHash` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`ID`, `Email`, `Name`, `Gender`, `PasswordHash`) VALUES
(1, 'artist@example.com', 'Sample Artist', 'Other', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(2, 'Yujinsung@gmail.com', 'Yu Jin Sung', 'Male', '$1f$10$92IXUNpkjO0r335byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(3, 'shamsjamil71@gmail.com', 'Shooms', 'Male', '$2y$10$enLnpjSJf.n1BzcEC.6QheiDbbItSEFaqUZPMSbwo5YG0l1Lx/PTO'),
(6, 'ridita.katha17@gmail.com', 'Ridita katha', 'Female', '$2y$10$/mSAowrn/q7hfI1mOB7xy.j1A8vmyeC6FlT4b0rqQneArfjqpZgx.'),
(7, 'ridita.katha@g.bracu.ac.bd', 'Katha', 'Female', '$2y$10$jSOFLUhD9H1blYS8MvHg9ucFmnk0Ne/.YJXJjA07mZ8I22bdKfIxC');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `CHAPTER_ID` int(11) NOT NULL,
  `Date_of_Publication` date DEFAULT NULL,
  `ChapterNumber` int(11) NOT NULL,
  `isPublished` tinyint(1) DEFAULT 0,
  `ContentURL` varchar(500) DEFAULT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`CHAPTER_ID`, `Date_of_Publication`, `ChapterNumber`, `isPublished`, `ContentURL`, `Comic_ID`) VALUES
(1, '2026-04-20', 1, 1, 'assets/chapters/solo-leveling/chapter-1', 1),
(2, '2026-04-22', 2, 1, 'assets/chapters/solo-leveling/chapter-2', 1),
(3, '2026-04-24', 3, 1, 'assets/chapters/solo-leveling/chapter-3', 1),
(4, '2026-04-18', 1, 1, 'assets/chapters/spy-x-family/chapter-1', 2),
(5, '2026-04-21', 2, 1, 'assets/chapters/spy-x-family/chapter-2', 2),
(6, '2026-04-19', 1, 1, 'assets/chapters/return-of-the-crazy-demon/chapter-1', 3),
(7, '2026-04-23', 2, 1, 'assets/chapters/return-of-the-crazy-demon/chapter-2', 3),
(10, '2026-04-26', 1, 1, 'assets/chapters/how-to-live-as-a-villain/chapter-1', 5),
(11, '2026-04-26', 2, 1, 'assets/chapters/how-to-live-as-a-villain/chapter-2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `chapter_backup`
--

CREATE TABLE `chapter_backup` (
  `CHAPTER_ID` int(11) NOT NULL,
  `Date_of_Publication` date DEFAULT NULL,
  `ChapterNumber` int(11) NOT NULL,
  `isPublished` tinyint(1) DEFAULT 0,
  `ContentURL` varchar(500) DEFAULT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter_backup`
--

INSERT INTO `chapter_backup` (`CHAPTER_ID`, `Date_of_Publication`, `ChapterNumber`, `isPublished`, `ContentURL`, `Comic_ID`) VALUES
(1, '2026-04-20', 1, 1, 'assets/chapters/solo-leveling/chapter-1', 1),
(2, '2026-04-22', 2, 1, 'assets/chapters/solo-leveling/chapter-2', 1),
(3, '2026-04-24', 3, 1, 'assets/chapters/solo-leveling/chapter-3', 1),
(4, '2026-04-18', 1, 1, 'assets/chapters/spy-x-family/chapter-1', 2),
(5, '2026-04-21', 2, 1, 'assets/chapters/spy-x-family/chapter-2', 2),
(6, '2026-04-19', 1, 1, 'assets/chapters/return-of-the-crazy-demon/chapter-1', 3),
(7, '2026-04-23', 2, 1, 'assets/chapters/return-of-the-crazy-demon/chapter-2', 3),
(10, '2026-04-26', 1, 1, 'assets/chapters/how-to-live-as-a-villain/chapter-1', 5),
(11, '2026-04-26', 2, 1, 'assets/chapters/how-to-live-as-a-villain/chapter-2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Biography` varchar(1000) DEFAULT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `Name`, `Biography`, `Comic_ID`) VALUES
(1, 'Sung Jin-Woo', 'The main protagonist. Known as the World\'s Weakest Hunter before gaining the System.', 1),
(2, 'Cha Hae-In', 'An S-Rank Hunter and Vice Guild Master of the Hunters Guild.', 1),
(3, 'Loid Forger', 'A spy known by the codename \"Twilight\", considered the best spy in Westalis.', 2),
(4, 'Yor Forger', 'An assassin known as \"Thorn Princess\" who becomes Loid\'s fake wife.', 2),
(5, 'Anya Forger', 'A telepath who becomes Loid and Yor\'s adopted daughter.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coin_transaction`
--

CREATE TABLE `coin_transaction` (
  `ID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Time_stamp` datetime NOT NULL DEFAULT current_timestamp(),
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coin_transaction`
--

INSERT INTO `coin_transaction` (`ID`, `Amount`, `Time_stamp`, `UID`) VALUES
(1, 5, '2026-05-03 20:41:04', 2),
(2, -1, '2026-05-03 20:51:31', 2),
(3, -1, '2026-05-03 20:56:40', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coin_transaction_backup`
--

CREATE TABLE `coin_transaction_backup` (
  `ID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Time_stamp` datetime NOT NULL DEFAULT current_timestamp(),
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comic`
--

CREATE TABLE `comic` (
  `ID` int(11) NOT NULL,
  `HardCopyLink` varchar(500) DEFAULT NULL,
  `Synopsis` varchar(1000) DEFAULT NULL,
  `Name` varchar(200) NOT NULL,
  `AID` int(11) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `PDF` varchar(500) DEFAULT NULL,
  `IsCompleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comic`
--

INSERT INTO `comic` (`ID`, `HardCopyLink`, `Synopsis`, `Name`, `AID`, `Title`, `PDF`, `IsCompleted`) VALUES
(1, NULL, 'In a world where hunters must battle deadly monsters to protect humanity, Sung Jin-Woo is the weakest of them all. But when a mysterious dungeon gives him a unique power, he begins his journey to become the strongest hunter.', 'Solo Leveling', 6, 'Solo Leveling', 'assets/guides/comic-1.html', 0),
(2, NULL, 'A spy, an assassin, and a telepath form an unlikely family. Master spy \"Twilight\" must create a fake family to infiltrate an elite school, but his new \"wife\" is actually an assassin and his \"daughter\" is a mind reader!', 'Spy x Family', 6, 'SPY×FAMILY', NULL, 0),
(3, NULL, 'After being pushed off a cliff by his enemies, the leader of a small sect is reborn 30 years in the past. Armed with memories of his previous life, he sets out on a path of revenge and domination.', 'Return of the Crazy Demon', 3, 'Return of the Crazy Demon', NULL, 0),
(5, NULL, 'Seonghoon has suddenly fallen into another world to participate in a game to become a god. This other world that is akin to that of a game contains players who cooperate and also kill each other in cold blood!!\r\nSeonghoon, a person without an ounce of talent, uses wicked and crude tricks to become an all-powerful player!', 'How To Live As A Villain', 3, 'How To Live As A Villain', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comic_backup`
--

CREATE TABLE `comic_backup` (
  `ID` int(11) NOT NULL,
  `HardCopyLink` varchar(500) DEFAULT NULL,
  `Synopsis` varchar(1000) DEFAULT NULL,
  `Name` varchar(200) NOT NULL,
  `AID` int(11) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `PDF` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comic_backup`
--

INSERT INTO `comic_backup` (`ID`, `HardCopyLink`, `Synopsis`, `Name`, `AID`, `Title`, `PDF`) VALUES
(1, NULL, 'In a world where hunters must battle deadly monsters to protect humanity, Sung Jin-Woo is the weakest of them all. But when a mysterious dungeon gives him a unique power, he begins his journey to become the strongest hunter.', 'Solo Leveling', 6, 'Solo Leveling', 'assets/guides/comic-1.html'),
(2, NULL, 'A spy, an assassin, and a telepath form an unlikely family. Master spy \"Twilight\" must create a fake family to infiltrate an elite school, but his new \"wife\" is actually an assassin and his \"daughter\" is a mind reader!', 'Spy x Family', 6, 'SPY×FAMILY', NULL),
(3, NULL, 'After being pushed off a cliff by his enemies, the leader of a small sect is reborn 30 years in the past. Armed with memories of his previous life, he sets out on a path of revenge and domination.', 'Return of the Crazy Demon', 3, 'Return of the Crazy Demon', NULL),
(5, NULL, 'Seonghoon has suddenly fallen into another world to participate in a game to become a god. This other world that is akin to that of a game contains players who cooperate and also kill each other in cold blood!!\r\nSeonghoon, a person without an ounce of talent, uses wicked and crude tricks to become an all-powerful player!', 'How To Live As A Villain', 3, 'How To Live As A Villain', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `depicted_in`
--

CREATE TABLE `depicted_in` (
  `Fan_ID` int(11) NOT NULL,
  `Character_ID` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fanart`
--

CREATE TABLE `fanart` (
  `ID` int(11) NOT NULL,
  `Upload_Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Image_URL` varchar(500) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post`
--

CREATE TABLE `forum_post` (
  `ID` int(11) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `TimeStamp` datetime NOT NULL DEFAULT current_timestamp(),
  `UID` int(11) NOT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_post`
--

INSERT INTO `forum_post` (`ID`, `Content`, `TimeStamp`, `UID`, `Comic_ID`) VALUES
(1, 'I am an idiot.', '2026-04-27 00:47:57', 3, 3),
(3, 'What is spy x family?', '2026-04-27 00:50:59', 3, 2),
(5, 'Hello world', '2026-04-27 01:00:05', 3, 1),
(11, '😄', '2026-04-27 01:04:18', 2, 2),
(12, '𝕴 𝖑𝖎𝖐𝖊 𝖙𝖔 𝖒𝖔𝖛𝖊 𝖎𝖙 𝖒𝖔𝖛𝖊 𝖎𝖙', '2026-04-27 01:05:22', 2, 2),
(13, 'I̸̪̣̫̻̝̪͈̅̀͘ ̵̼̼̱̙̀̃̃͗l̴̯̻̩̬̟̉̄͠͠i̸̦̘̱̦͊́̿̊k̵̲͖͉̂̑̂̊͝ę̵̹͎̟̹̻̱̬̇̈̀ͅ ̷̧̬̳̤͍̜̦̱̰͖̀̅̌̒̇͒̎͛͠t̵͓̮̟͈̭̻̀̀͒̍̍̈õ̸̩̰̼̪̪͖̬͈̱̿̚ͅ ̴̗̻̰͈̽̃͆͆̇̐͛̾̃͘m̸̞̅̐͠o̴̙͈̪̼͊͜v̸̳͊ͅë̶̡̨̞̺̥͍͔̲̿͆̂́̇̃̀́̚͜ ̶̢̛̾́͛̉i̶̧͇͍̫̝͋͂̄̍t̵̢͎͉̝̝̥͂̽̉̀̕ ̷͉̙͖̰͂m̴̢̢̡̯̜̞̼̟̹͍̈́̀̇̌o̶̢̮̜̼͕͎̽̎̆̒v̷͇̗̼̗̉͗͆e̶̙̣͂̀̐͋͑ ̸̨͇̼͠î̸̥͕̮̹̿̄̌̈́͜t̶̢̟͐', '2026-04-27 01:05:35', 2, 2),
(14, 'الثعلب البني السريع قفز فوق الكلب الكسول', '2026-04-27 01:06:06', 2, 2),
(15, 'দ্রুত বাদামী শিয়ালটা অলস কুকুরটির উপর লাফ দিল', '2026-04-27 01:06:24', 2, 2),
(16, 'qwertyuiop[', '2026-04-27 01:23:12', 3, 2),
(17, 'O my god', '2026-04-27 01:24:34', 3, 2),
(18, 'Nisa Nisa Nisa', '2026-04-27 01:25:52', 3, 1),
(19, '1234567890', '2026-04-27 01:25:56', 3, 1),
(20, '0987654321', '2026-04-27 01:26:05', 3, 1),
(21, 'Welcome', '2026-04-27 01:27:03', 3, 3),
(22, 'I am good for nothing.', '2026-04-27 01:27:17', 3, 3),
(23, 'Discussion? HOW!! never read this comic.', '2026-04-27 01:27:39', 3, 3),
(24, '1234567890', '2026-04-27 01:27:44', 3, 3),
(25, 'I am violating rules !!!', '2026-04-27 01:28:05', 3, 3),
(26, 'hello world', '2026-04-27 08:53:53', 2, 1),
(27, 'qwertyuio', '2026-04-27 10:12:36', 3, 2),
(31, '[emoji:Dreadful Anya]', '2026-05-03 20:56:50', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Comic_ID` int(11) NOT NULL,
  `Genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Comic_ID`, `Genre`) VALUES
(1, 'Action'),
(1, 'Adventure'),
(1, 'Fantasy'),
(2, 'Action'),
(2, 'Comedy'),
(2, 'Slice-of-life'),
(3, 'Action'),
(3, 'Fantasy'),
(5, 'Action'),
(5, 'Drama'),
(5, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `livestream`
--

CREATE TABLE `livestream` (
  `VideoURL` varchar(500) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime DEFAULT NULL,
  `AID` int(11) NOT NULL,
  `Comic_ID` int(11) NOT NULL,
  `Title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livestream`
--

INSERT INTO `livestream` (`VideoURL`, `StartTime`, `EndTime`, `AID`, `Comic_ID`, `Title`) VALUES
('https://youtu.be/n4nckN3f0dI?si=oxEnKBaqdjphcoXT', '2026-05-03 16:40:15', '2026-05-03 16:41:45', 3, 3, 'My lamborghini'),
('https://youtu.be/Se3reAmFuyY?si=5XihjzlnTqUgVb_0', '2026-05-03 21:04:22', '2026-05-03 21:04:52', 3, 3, 'hello world'),
('https://youtu.be/SW_iujvUAzQ?si=If1AaurfzqIqGX4R', '2026-05-03 16:38:46', '2026-05-03 16:41:53', 3, 5, 'My house tour');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `ID` int(11) NOT NULL,
  `TIME_STAMP` datetime DEFAULT current_timestamp(),
  `Message` varchar(500) NOT NULL,
  `Type` enum('correct_prediction','wrong_prediction','new_chapter','general') DEFAULT 'general',
  `IsRead` tinyint(1) DEFAULT 0,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_backup`
--

CREATE TABLE `notification_backup` (
  `TIME_STAMP` datetime NOT NULL,
  `PREDICTED_PLOT` varchar(500) NOT NULL,
  `Chapter_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prediction`
--

CREATE TABLE `prediction` (
  `ID` int(11) NOT NULL,
  `Option_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `TimeStamp` datetime DEFAULT current_timestamp(),
  `Coin_T_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prediction_backup`
--

CREATE TABLE `prediction_backup` (
  `PREDICTED_PLOT` varchar(500) NOT NULL,
  `TimeStamp` datetime NOT NULL,
  `isCorrect` tinyint(1) DEFAULT 0,
  `Chapter_ID` int(11) NOT NULL,
  `Coin_T_ID` int(11) DEFAULT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prediction_option`
--

CREATE TABLE `prediction_option` (
  `ID` int(11) NOT NULL,
  `Option_Number` int(11) NOT NULL CHECK (`Option_Number` between 1 and 4),
  `OptionText` varchar(255) NOT NULL,
  `IsCorrect` tinyint(1) DEFAULT 0,
  `IsResolved` tinyint(1) DEFAULT 0,
  `Chapter_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prediction_option`
--

INSERT INTO `prediction_option` (`ID`, `Option_Number`, `OptionText`, `IsCorrect`, `IsResolved`, `Chapter_ID`) VALUES
(1, 1, 'Anya will use her telepathy to help Loid with his mission', 0, 0, 2),
(2, 2, 'Loid will be discovered by enemy agents', 0, 0, 2),
(3, 3, 'The family will have a peaceful dinner together', 0, 0, 2),
(4, 4, 'Yor will reveal a clue about her assassin past', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `TIME_STAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `Score` decimal(3,1) NOT NULL CHECK (`Score` >= 0.0 and `Score` <= 10.0),
  `ReviewText` varchar(1000) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`TIME_STAMP`, `Score`, `ReviewText`, `UID`, `Comic_ID`) VALUES
('2026-04-27 08:53:36', 10.0, 'hello wprld', 2, 1),
('2026-04-27 01:26:45', 10.0, 'Everything is fine.', 3, 1),
('2026-04-27 10:11:47', 10.0, '123456789', 3, 2),
('2026-04-27 01:28:57', 10.0, 'OK REATURNED :>>>>', 3, 3),
('2026-04-28 22:47:49', 10.0, 'rating cannot be submitted without selecting the stars', 3, 5),
('2026-04-27 01:33:11', 10.0, 'I am an artist.', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rating_backup`
--

CREATE TABLE `rating_backup` (
  `TIME_STAMP` datetime NOT NULL DEFAULT current_timestamp(),
  `Score` decimal(3,1) NOT NULL CHECK (`Score` >= 0.0 and `Score` <= 10.0),
  `ReviewText` varchar(1000) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_backup`
--

INSERT INTO `rating_backup` (`TIME_STAMP`, `Score`, `ReviewText`, `UID`, `Comic_ID`) VALUES
('2026-04-25 16:09:49', 9.5, 'Amazing story with great action sequences!', 1, 1),
('2026-04-25 16:09:49', 9.0, 'Hilarious and heartwarming family comedy.', 1, 2),
('2026-04-25 16:09:49', 8.5, 'Great martial arts action and revenge plot.', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `special_emoji`
--

CREATE TABLE `special_emoji` (
  `Name` varchar(100) NOT NULL,
  `E_Value` varchar(500) NOT NULL,
  `Coin_Amount` int(11) NOT NULL DEFAULT 1,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `special_emoji`
--

INSERT INTO `special_emoji` (`Name`, `E_Value`, `Coin_Amount`, `Comic_ID`) VALUES
('Anya Lying', 'assets/emojis/anya-lying-face.webp', 1, 2),
('Disappointed Anya', 'assets/emojis/anya-disappointed.webp', 1, 2),
('Dreadful Anya', 'assets/emojis/anya-anxiety.webp', 1, 2),
('Lifeless Loid', 'assets/emojis/loid-lifeless.webp', 2, 2),
('Shocked Anya', 'assets/emojis/anya-shocked.webp', 2, 2),
('Smug Anya', 'assets/emojis/anya-smug.webp', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `special_emoji_backup`
--

CREATE TABLE `special_emoji_backup` (
  `Name` varchar(100) NOT NULL,
  `E_Value` varchar(10) NOT NULL,
  `Coin_Amount` int(11) DEFAULT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_favourite_character`
--

CREATE TABLE `top_favourite_character` (
  `RANK` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `Character_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_favourite_comic`
--

CREATE TABLE `top_favourite_comic` (
  `RANK` int(11) NOT NULL,
  `Year` year(4) NOT NULL,
  `Comic_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `PasswordHash` varchar(250) NOT NULL,
  `GenrePref` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Email`, `Name`, `Gender`, `PasswordHash`, `GenrePref`) VALUES
(2, 'gotogulagplease@gmail.com', 'Shams Jams', 'Male', '$2y$10$DlKgKFCloasD3Eg2XhQIPO8GFKBY/e0XzOdbgnjI.ZSqc5RdjFV5.', 'Action'),
(3, 'ridita.katha17@gmail.com', 'Ridita katha', 'Female', '$2y$10$bIrX7XC0l/A4J2gN7ti0BufaLeiFqcifZ6xxcwqlox5aLipzjntGW', 'Action'),
(4, 'sharmishthap25@gmail.com', 'Sharmishtha Paul', 'Female', '$2y$10$HTBOaulBYZ59MbckWYyeCOPatZL9E8pQb2kM/4NhLUyDpUs8Kd9o2', 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `user_emoji`
--

CREATE TABLE `user_emoji` (
  `UID` int(11) NOT NULL,
  `Emoji_Name` varchar(100) NOT NULL,
  `Purchase_Date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_emoji`
--

INSERT INTO `user_emoji` (`UID`, `Emoji_Name`, `Purchase_Date`) VALUES
(2, 'Anya Lying', '2026-05-03 20:51:31'),
(2, 'Dreadful Anya', '2026-05-03 20:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `uses_on`
--

CREATE TABLE `uses_on` (
  `E_Name` varchar(100) NOT NULL,
  `F_post_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uses_on_backup`
--

CREATE TABLE `uses_on_backup` (
  `E_Name` varchar(100) NOT NULL,
  `F_post_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vote_for`
--

CREATE TABLE `vote_for` (
  `Vote_Date` date NOT NULL,
  `Character_ID` int(11) NOT NULL,
  `Comic_ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`CHAPTER_ID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `chapter_backup`
--
ALTER TABLE `chapter_backup`
  ADD PRIMARY KEY (`CHAPTER_ID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `coin_transaction`
--
ALTER TABLE `coin_transaction`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `coin_transaction_backup`
--
ALTER TABLE `coin_transaction_backup`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `comic`
--
ALTER TABLE `comic`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AID` (`AID`);

--
-- Indexes for table `comic_backup`
--
ALTER TABLE `comic_backup`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AID` (`AID`);

--
-- Indexes for table `depicted_in`
--
ALTER TABLE `depicted_in`
  ADD PRIMARY KEY (`Fan_ID`,`Character_ID`),
  ADD KEY `Character_ID` (`Character_ID`);

--
-- Indexes for table `fanart`
--
ALTER TABLE `fanart`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Comic_ID`,`Genre`);

--
-- Indexes for table `livestream`
--
ALTER TABLE `livestream`
  ADD PRIMARY KEY (`VideoURL`),
  ADD KEY `AID` (`AID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_notification_uid_read` (`UID`,`IsRead`);

--
-- Indexes for table `notification_backup`
--
ALTER TABLE `notification_backup`
  ADD PRIMARY KEY (`TIME_STAMP`,`PREDICTED_PLOT`,`Chapter_ID`,`UID`),
  ADD KEY `PREDICTED_PLOT` (`PREDICTED_PLOT`,`Chapter_ID`,`UID`);

--
-- Indexes for table `prediction`
--
ALTER TABLE `prediction`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_one_vote_per_option_user` (`Option_ID`,`UID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `Coin_T_ID` (`Coin_T_ID`);

--
-- Indexes for table `prediction_backup`
--
ALTER TABLE `prediction_backup`
  ADD PRIMARY KEY (`PREDICTED_PLOT`,`Chapter_ID`,`UID`),
  ADD KEY `Chapter_ID` (`Chapter_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `Coin_T_ID` (`Coin_T_ID`);

--
-- Indexes for table `prediction_option`
--
ALTER TABLE `prediction_option`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `uq_option_per_chapter` (`Chapter_ID`,`Option_Number`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`UID`,`Comic_ID`),
  ADD UNIQUE KEY `unique_user_comic` (`UID`,`Comic_ID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `rating_backup`
--
ALTER TABLE `rating_backup`
  ADD PRIMARY KEY (`TIME_STAMP`,`UID`,`Comic_ID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `special_emoji`
--
ALTER TABLE `special_emoji`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `special_emoji_backup`
--
ALTER TABLE `special_emoji_backup`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `top_favourite_character`
--
ALTER TABLE `top_favourite_character`
  ADD PRIMARY KEY (`RANK`,`Character_ID`),
  ADD KEY `Character_ID` (`Character_ID`);

--
-- Indexes for table `top_favourite_comic`
--
ALTER TABLE `top_favourite_comic`
  ADD PRIMARY KEY (`RANK`,`Comic_ID`),
  ADD KEY `Comic_ID` (`Comic_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `user_emoji`
--
ALTER TABLE `user_emoji`
  ADD PRIMARY KEY (`UID`,`Emoji_Name`),
  ADD KEY `Emoji_Name` (`Emoji_Name`);

--
-- Indexes for table `uses_on`
--
ALTER TABLE `uses_on`
  ADD PRIMARY KEY (`E_Name`,`F_post_ID`),
  ADD KEY `F_post_ID` (`F_post_ID`);

--
-- Indexes for table `uses_on_backup`
--
ALTER TABLE `uses_on_backup`
  ADD PRIMARY KEY (`E_Name`,`F_post_ID`),
  ADD KEY `F_post_ID` (`F_post_ID`);

--
-- Indexes for table `vote_for`
--
ALTER TABLE `vote_for`
  ADD PRIMARY KEY (`Vote_Date`,`Character_ID`,`Comic_ID`,`UID`),
  ADD KEY `Character_ID` (`Character_ID`),
  ADD KEY `Comic_ID` (`Comic_ID`),
  ADD KEY `UID` (`UID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `CHAPTER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chapter_backup`
--
ALTER TABLE `chapter_backup`
  MODIFY `CHAPTER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coin_transaction`
--
ALTER TABLE `coin_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coin_transaction_backup`
--
ALTER TABLE `coin_transaction_backup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comic`
--
ALTER TABLE `comic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comic_backup`
--
ALTER TABLE `comic_backup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fanart`
--
ALTER TABLE `fanart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_post`
--
ALTER TABLE `forum_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prediction`
--
ALTER TABLE `prediction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prediction_option`
--
ALTER TABLE `prediction_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coin_transaction`
--
ALTER TABLE `coin_transaction`
  ADD CONSTRAINT `coin_transaction_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comic`
--
ALTER TABLE `comic`
  ADD CONSTRAINT `comic_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `artist` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `depicted_in`
--
ALTER TABLE `depicted_in`
  ADD CONSTRAINT `depicted_in_ibfk_1` FOREIGN KEY (`Fan_ID`) REFERENCES `fanart` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `depicted_in_ibfk_2` FOREIGN KEY (`Character_ID`) REFERENCES `characters` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fanart`
--
ALTER TABLE `fanart`
  ADD CONSTRAINT `fanart_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forum_post`
--
ALTER TABLE `forum_post`
  ADD CONSTRAINT `forum_post_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `forum_post_ibfk_2` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livestream`
--
ALTER TABLE `livestream`
  ADD CONSTRAINT `livestream_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `artist` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livestream_ibfk_2` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prediction`
--
ALTER TABLE `prediction`
  ADD CONSTRAINT `prediction_ibfk_1` FOREIGN KEY (`Option_ID`) REFERENCES `prediction_option` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prediction_ibfk_2` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prediction_ibfk_3` FOREIGN KEY (`Coin_T_ID`) REFERENCES `coin_transaction` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `prediction_option`
--
ALTER TABLE `prediction_option`
  ADD CONSTRAINT `prediction_option_ibfk_1` FOREIGN KEY (`Chapter_ID`) REFERENCES `chapter` (`CHAPTER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `special_emoji`
--
ALTER TABLE `special_emoji`
  ADD CONSTRAINT `special_emoji_ibfk_1` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `top_favourite_character`
--
ALTER TABLE `top_favourite_character`
  ADD CONSTRAINT `top_favourite_character_ibfk_1` FOREIGN KEY (`Character_ID`) REFERENCES `characters` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `top_favourite_comic`
--
ALTER TABLE `top_favourite_comic`
  ADD CONSTRAINT `top_favourite_comic_ibfk_1` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_emoji`
--
ALTER TABLE `user_emoji`
  ADD CONSTRAINT `user_emoji_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_emoji_ibfk_2` FOREIGN KEY (`Emoji_Name`) REFERENCES `special_emoji` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uses_on`
--
ALTER TABLE `uses_on`
  ADD CONSTRAINT `uses_on_ibfk_1` FOREIGN KEY (`E_Name`) REFERENCES `special_emoji` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uses_on_ibfk_2` FOREIGN KEY (`F_post_ID`) REFERENCES `forum_post` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vote_for`
--
ALTER TABLE `vote_for`
  ADD CONSTRAINT `vote_for_ibfk_1` FOREIGN KEY (`Character_ID`) REFERENCES `characters` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vote_for_ibfk_2` FOREIGN KEY (`Comic_ID`) REFERENCES `comic` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vote_for_ibfk_3` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
