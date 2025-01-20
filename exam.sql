-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 08:02 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'suryaprasadtripathy8@gmail.com', 'pinkylove');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Increased appetite and weight gain', '5b141d71485b9'),
('5b141d712647f', 'Difficulty concentrating and making decisions', '5b141d71485dc'),
('5b141d712647f', 'High energy levels and restlessness', '5b141d71485e0'),
('5b141d712647f', 'Elevated mood and excessive optimism', '5b141d71485e4'),
('5b141d718f873', 'Insomnia and difficulty falling asleep', '5b141d71978be'),
('5b141d718f873', 'Frequent episodes of sleepwalking', '5b141d71978cc'),
('5b141d718f873', 'Hypersomnia and excessive sleeping', '5b141d71978d1'),
('5b141d718f873', 'Consistent, restful sleep without disturbances', '5b141d71978d4'),
('5b141d71ddb46', 'Persistent feelings of happiness and contentment', '5b141d71e5f2b'),
('5b141d71ddb46', 'Intense fear and panic attacks', '5b141d71e5f3c'),
('5b141d71ddb46', 'Overwhelming guilt and self-blame', '5b141d71e5f43'),
('5b141d71ddb46', 'Heightened self-esteem and self-importance', '5b141d71e5f48'),
('5b141d721a738', 'Increases motivation and desire to participate', '5b141d7222820'),
('5b141d721a738', 'Maintains the same level of interest and engagement', '5b141d722282f'),
('5b141d721a738', 'Causes a complete loss of interest and pleasure', '5b141d7222880'),
('5b141d721a738', 'Enhances the ability to find new hobbies and interests', '5b141d7222884'),
('5b141d7260b7d', 'Depression never leads to suicidal thoughts', '5b141d7268b8a'),
('5b141d7260b7d', 'Suicidal thoughts are an uncommon symptom of depression', '5b141d7268b95'),
('5b141d7260b7d', 'Depression can sometimes contribute to suicidal thoughts', '5b141d7268b98'),
('5b141d7260b7d', 'Suicidal thoughts are the primary symptom of depression', '5b141d7268b9a'),
('5b141d72a6fa1', 'Chronic cough and respiratory issues', '5b141d72aefcb'),
('5b141d72a6fa1', 'Frequent headaches and migraines', '5b141d72aefd8'),
('5b141d72a6fa1', 'Rapid weight loss and decreased appetite', '5b141d72aefdc'),
('5b141d72a6fa1', 'Increased physical strength and endurance', '5b141d72aefe0'),
('5b141d72d7a1c', 'Heightened energy and increased productivity', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Consistent energy levels without fluctuations', '5b141d72dfa85'),
('5b141d72d7a1c', 'Fatigue, low energy, and a lack of motivation', '5b141d72dfa88'),
('5b141d72d7a1c', 'Restlessness and inability to relax or sit still', '5b141d72dfa8b'),
('5b141d731429b', 'Excessive feelings of self-worth and grandiosity', '5b141d731c234'),
('5b141d731429b', 'Intense fear and phobias', '5b141d731c242'),
('5b141d731429b', 'Memory loss and forgetfulness', '5b141d731c248'),
('5b141d731429b', 'Persistent sadness, hopelessness, and despair', '5b141d731c24b'),
('5b141d7345176', 'Optimistic and hopeful', '5b141d734cd10'),
('5b141d7345176', 'Indifferent and unaffected', '5b141d734cd1b'),
('5b141d7345176', 'Pessimistic and bleak', '5b141d734cd1d'),
('5b141d7345176', 'Ambivalent and uncertain', '5b141d734cd20'),
('5b141d737ddfc', 'epression and anxiety disorders are unrelated', '5b141d73858d0'),
('5b141d737ddfc', 'Depression and anxiety disorders always coexist', '5b141d73858df'),
('5b141d737ddfc', 'Depression and anxiety disorders can occur independently or together', '5b141d73858e3'),
('5b141d737ddfc', 'Depression and anxiety disorders are mutually exclusive', '5b141d73858e8'),
('5b1422651fdde', 'Increased sociability and desire for social interactions', '5b1422654ab3a'),
('5b1422651fdde', 'Enhanced communication and assertiveness skills', '5b1422654ab48'),
('5b1422651fdde', 'Social withdrawal and isolation', '5b1422654ab4d'),
('5b1422651fdde', 'Excessive dependence on others for emotional support', '5b1422654ab51'),
('5b14226574ed5', 'Improved concentration and heightened attention span', '5b1422657d052'),
('5b14226574ed5', 'No impact on concentration abilities', '5b1422657d05f'),
('5b14226574ed5', 'Difficulty concentrating and making decisions', '5b1422657d064'),
('5b14226574ed5', 'Enhanced multitasking and cognitive flexibility', '5b1422657d069'),
('5b142265b5d08', 'Depression has no impact on physical pain perception', '5b142265c09e3'),
('5b142265b5d08', 'Physical pain is a common symptom of depression', '5b142265c09f5'),
('5b142265b5d08', 'Depression can alleviate chronic pain conditions', '5b142265c09fa'),
('5b142265b5d08', 'Physical pain is completely unrelated to depression', '5b142265c09ff'),
('5b1422661d93f', 'Strong and capable individuals', '5b14226635df5'),
('5b1422661d93f', 'Completely indifferent about self-perception', '5b14226635e04'),
('5b1422661d93f', ' Self-critical and having low self-esteem', '5b14226635e09'),
('5b1422661d93f', 'Overconfident and narcissistic', '5b14226635e0d'),
('5b14226663cf4', 'Increased risk-taking and impulsive behaviors', '5b1422666bf2b'),
('5b14226663cf4', 'Aggressive and confrontational behavior', '5b1422666bf39'),
('5b14226663cf4', 'Decreased interest in personal hygiene and appearance', '5b1422666bf3e'),
('5b14226663cf4', 'Enhanced ability to maintain daily routines and responsibilities', '5b1422666bf42'),
('5b1422669481b', 'Restful sleep without disruptions or disturbances', '5b1422669c8dc'),
('5b1422669481b', 'Consistent sleep patterns with no changes in quality', '5b1422669c8ea'),
('5b1422669481b', 'Insomnia and difficulty falling or staying asleep', '5b1422669c8ef'),
('5b1422669481b', 'Vivid and pleasant dreams with increased dream recall', '5b1422669c8f3'),
('5b142266c525c', 'Depression and substance abuse are always interlinked', '5b142266cd353'),
('5b142266c525c', 'Depression never leads to substance abuse', '5b142266cd361'),
('5b142266c525c', 'Depression and substance abuse can occur independently or together', '5b142266cd365'),
('5b142266c525c', 'Substance abuse can cure depression effectively', '5b142266cd369'),
('5b14226711d91', 'DeIncreased appetite and weight gaincreased appetite and weight loss', '5b14226719fa0'),
('5b14226711d91', 'No impact on appetite or eating patterns', '5b14226719fb1'),
('5b14226711d91', 'Selective cravings for specific types of food', '5b14226719fb7'),
('5b14226711d91', 'Depression and substance abuse can occur independently or together', '5b14226719fbb'),
('5b1422674286d', 'Heightened concentration and focus', '5b1422674a9ee'),
('5b1422674286d', 'Enhanced problem-solving abilities', '5b1422674aa01'),
('5b1422674286d', 'Difficulty making decisions and lack of clarity', '5b1422674aa06'),
('5b1422674286d', 'Improved memory and cognitive performance', '5b1422674aa0b'),
('5b1422677371f', 'Increased attention to personal hygiene and appearance', '5b1422677b3e9'),
('5b1422677371f', 'No impact on self-care routines', '5b1422677b3f7'),
('5b1422677371f', 'Neglect of personal hygiene and appearance', '5b1422677b3fc'),
('5b1422677371f', 'Excessive preoccupation with self-care rituals', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'Which of the following symptoms are commonly associated with depression?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Which statement best describes the sleep patterns of individuals with depression?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'Which of the following is a common emotional symptom of depression?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'How does depression typically affect a person interest in previously enjoyable activities?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which option best represents the relationship between depression and suicidal thoughts?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Which of the following is a common physical symptom of depression?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'How does depression typically affect a person energy levels?', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Which of the following is a psychological symptom often associated with depression?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'How do individuals with depression commonly perceive their future?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Which option best describes the relationship between depression and anxiety disorders?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'Which of the following is a social symptom often observed in individuals with depression?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'How does depression typically affect a person concentration and focus?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Which option best represents the relationship between depression and physical pain?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'How do individuals with depression often view themselves?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'How does depression typically impact a person sleep quality?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which option best describes the relationship between depression and substance abuse?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'How does depression commonly affect a person appetite?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'Which of the following is a common cognitive symptom of depression?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'How does depression typically affect a person self-care habits?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'Which option best represents the relationship between depression and irritability?', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Depression Test', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Addiction Test', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
