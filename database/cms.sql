-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 10:38 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `date`, `added`) VALUES
(1, 'Nvidia RTX 4060 review', '<p><strong>NVIDIA RTX 4060: The Next-Gen Mid-Range GPU</strong></p>\r\n<p>The NVIDIA RTX 4060 is the latest mid-range graphics card from NVIDIA, and it is based on the new Ada Lovelace architecture. The RTX 4060 offers a significant performance boost over the previous generation, and it is capable of delivering smooth and immersive gaming experiences at 1080p and 1440p resolutions.</p>\r\n<p>The RTX 4060 features <em>3,840 CUDA cores, 12GB of GDDR6 memory</em>, and a <em>boost clock speed of up to 1.86 GHz.</em> It also supports the latest features, such as <em>ray tracing and DLSS.</em></p>\r\n<p>In terms of gaming performance, the RTX 4060 is able to deliver over 60 frames per second (fps) in most modern games at 1080p resolution. It can also handle 1440p gaming at high settings, and it is even capable of some 4K gaming.</p>\r\n<p>The RTX 4060 is also a good choice for creative professionals. It supports NVIDIA Studio drivers, which are optimized for 3D rendering, video editing, and other creative workflows.</p>\r\n<p>The RTX 4060 is a great choice for gamers and creative professionals who are looking for a powerful and affordable graphics card. It offers a significant performance boost over the previous generation, and it supports the latest features.</p>\r\n<p>The RTX 4060 is available for purchase now, starting at $399.</p>\r\n<p><strong>Key Features:</strong></p>\r\n<ul>\r\n<li>Based on the NVIDIA Ada Lovelace architecture</li>\r\n<li>3,840 CUDA cores</li>\r\n<li>12GB of GDDR6 memory</li>\r\n<li>Boost clock speed of up to 1.86 GHz</li>\r\n<li>Supports ray tracing and DLSS</li>\r\n<li>Optimized for NVIDIA Studio drivers</li>\r\n</ul>', 1, '2023-06-28', '2023-06-28 22:39:04'),
(2, 'Windows 11 AI Integration', '<p><strong>Windows 11 AI Integration: How Artificial Intelligence is Making the OS More Powerful and User-Friendly</strong></p>\r\n<p>Artificial intelligence (AI) is rapidly becoming a part of our everyday lives, and Windows 11 is no exception. The latest version of Microsoft\'s operating system integrates AI in a number of ways, making it more powerful and user-friendly than ever before.</p>\r\n<p>One of the most notable AI features in Windows 11 is Windows Copilot. This new feature uses AI to help users with their tasks, such as typing, navigating, and editing. Windows Copilot can even help users with tasks that they are not familiar with, such as coding or using new software.</p>\r\n<p>Another way that AI is integrated into Windows 11 is through the new Start menu. The Start menu now includes AI-powered recommendations, which can help users find the apps and files they need more quickly. The Start menu also includes a new feature called Live Tiles, which can display dynamic content from apps, such as weather updates or news headlines.</p>\r\n<p>AI is also being used to improve the overall performance of Windows 11. For example, the operating system now uses AI to optimize memory usage and battery life. AI is also being used to improve the security of Windows 11, by detecting and blocking malicious software.</p>\r\n<p>Overall, AI integration is making Windows 11 a more powerful and user-friendly operating system. As AI technology continues to develop, we can expect to see even more innovative ways that AI is used in Windows 11 in the future.</p>\r\n<p><strong>Here are some of the specific AI features in Windows 11:</strong></p>\r\n<ul>\r\n<li><strong>Windows Copilot:</strong>&nbsp;This AI-powered assistant can help users with their tasks, such as typing, navigating, and editing.</li>\r\n<li><strong>AI-powered recommendations in the Start menu:</strong>&nbsp;This feature can help users find the apps and files they need more quickly.</li>\r\n<li><strong>Live Tiles:</strong>&nbsp;These dynamic tiles can display content from apps, such as weather updates or news headlines.</li>\r\n<li><strong>AI-powered performance optimization:</strong>&nbsp;This feature helps to optimize memory usage and battery life.</li>\r\n<li><strong>AI-powered security:</strong>&nbsp;This feature helps to detect and block malicious software.</li>\r\n</ul>\r\n<p><strong>How can AI integration benefit users?</strong></p>\r\n<p>AI integration in Windows 11 can benefit users in a number of ways, including:</p>\r\n<ul>\r\n<li><strong>Making tasks easier and more efficient:</strong>&nbsp;AI can help users with their tasks, such as typing, navigating, and editing. This can save users time and effort, and it can also help them to be more productive.</li>\r\n<li><strong>Making the operating system more personal and intuitive:</strong>&nbsp;AI can be used to personalize the operating system to each user\'s individual needs. This can make the operating system more user-friendly and efficient.</li>\r\n<li><strong>Improving the security of the operating system:</strong>&nbsp;AI can be used to detect and block malicious software. This can help to keep users\' data safe.</li>\r\n</ul>\r\n<p><strong>How will AI integration continue to evolve in Windows 11?</strong></p>\r\n<p>AI integration in Windows 11 is still evolving, and we can expect to see even more innovative ways that AI is used in the future. Some of the potential areas where AI could be used in Windows 11 include:</p>\r\n<ul>\r\n<li><strong>Personalizing the operating system:</strong>&nbsp;AI could be used to personalize the operating system to each user\'s individual needs. This could include things like suggesting apps and content that the user might be interested in, or adjusting the operating system\'s settings to match the user\'s preferences.</li>\r\n<li><strong>Improving the user experience:</strong>&nbsp;AI could be used to improve the user experience in a number of ways. This could include things like making the operating system more responsive, or providing more helpful feedback to users.</li>\r\n<li><strong>Making the operating system more secure:</strong>&nbsp;AI could be used to make the operating system more secure by detecting and blocking malicious software.</li>\r\n</ul>\r\n<p>Overall, AI integration is a powerful tool that can be used to make Windows 11 a more powerful and user-friendly operating system. As AI technology continues to develop, we can expect to see even more innovative ways that AI is used in Windows 11 in the future.</p>', 1, '2023-06-25', '2023-06-28 23:05:01'),
(3, 'New Blog Title', '<p>You can add your content here !</p>', 1, '2023-06-22', '2023-06-29 13:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`, `added`) VALUES
(1, 'admin', 'admin@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, '2023-06-28 09:45:51'),
(4, 'aviralmehrotra', 'aviralmehrotra@gmail.com', 'e66faad7a6327297127c4688e9338b494802a4e9', 1, '2023-06-28 22:29:36'),
(6, 'newuser123', 'aviral@mail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, '2023-06-29 13:26:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
