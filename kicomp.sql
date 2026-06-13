-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 04:57 AM
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
-- Database: `kicomp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'WiFi', '2025-02-11 18:54:21', '2025-02-11 18:54:21'),
(6, 'Bluetooth', '2025-02-11 18:55:05', '2025-02-11 18:55:05'),
(7, 'Switch', '2025-02-11 18:55:44', '2025-02-11 18:55:44'),
(8, 'PCI', '2025-02-11 18:56:05', '2025-02-11 18:56:05'),
(9, 'Router', '2025-02-11 18:56:27', '2025-02-11 18:56:27'),
(10, 'Fiber Optic', '2025-02-11 18:56:51', '2025-02-11 18:56:51'),
(11, 'Laser Pointer', '2025-02-11 19:00:56', '2025-02-11 19:00:56'),
(12, 'Webcam', '2025-02-11 19:01:16', '2025-02-11 19:01:16'),
(13, 'Mousepad', '2025-02-11 19:01:37', '2025-02-11 19:01:37'),
(14, 'Keyboard', '2025-02-11 19:37:13', '2025-02-11 19:37:13'),
(15, 'Mouse', '2025-02-11 19:37:28', '2025-02-11 19:37:28'),
(16, 'HDMI', '2025-02-11 21:14:07', '2025-02-11 21:14:07'),
(17, 'Port', '2025-02-11 21:14:21', '2025-02-11 21:14:21'),
(18, 'Connector', '2025-02-11 21:15:03', '2025-02-11 21:15:03'),
(19, 'USB', '2025-02-11 21:16:12', '2025-02-11 21:16:12'),
(20, 'Adapter', '2025-02-11 21:22:45', '2025-02-11 21:22:45'),
(21, 'Memory', '2025-02-11 21:40:41', '2025-02-11 21:40:41'),
(22, 'Converter', '2025-02-12 19:59:21', '2025-02-12 19:59:21'),
(23, 'Protector', '2025-02-12 20:12:45', '2025-02-12 20:12:45'),
(24, 'Kabel', '2025-02-12 20:21:22', '2025-02-12 20:21:22'),
(25, 'Charger', '2025-02-12 20:41:33', '2025-02-12 20:41:33'),
(26, 'Headset', '2025-02-16 08:50:11', '2025-02-16 08:50:11'),
(27, 'VGA', '2025-02-16 08:50:44', '2025-02-16 08:50:44'),
(28, 'Motherboard', '2025-02-16 08:51:11', '2025-02-16 08:51:11'),
(31, 'Tinta Printer', '2025-02-16 09:02:13', '2025-02-16 09:02:13'),
(32, 'Kabel HDMI', '2025-02-16 09:15:31', '2025-02-16 09:15:31'),
(33, 'Kabel VGA', '2025-02-16 09:15:50', '2025-02-16 09:15:50'),
(34, 'Splitter', '2025-02-16 09:31:36', '2025-02-16 09:31:36'),
(35, 'HDTV', '2025-02-16 09:32:08', '2025-02-16 09:32:08'),
(37, 'Fan', '2025-02-16 09:34:11', '2025-02-16 09:34:11'),
(38, 'Baterai', '2025-02-16 09:35:56', '2025-02-16 09:35:56'),
(39, 'Cleaner', '2025-02-16 09:37:04', '2025-02-16 09:37:04'),
(40, 'IDE', '2025-02-16 09:37:46', '2025-02-16 09:37:46'),
(41, 'Floppy', '2025-02-16 09:38:58', '2025-02-16 09:38:58'),
(43, 'Cooling Fan', '2025-05-23 23:44:26', '2025-05-23 23:44:26'),
(46, 'CCTV', '2025-05-27 09:44:39', '2025-05-27 12:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '5b2d6f10-214c-4173-b834-6e2fa0661d56', 'database', 'default', '{\"uuid\":\"5b2d6f10-214c-4173-b834-6e2fa0661d56\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:2:\\\"in\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46'),
(2, '221907d2-7411-4d77-b795-f537ca3fd55a', 'database', 'default', '{\"uuid\":\"221907d2-7411-4d77-b795-f537ca3fd55a\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:2:\\\"in\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46'),
(3, 'e12172a9-7382-4e88-bfba-ba9f1c90c679', 'database', 'default', '{\"uuid\":\"e12172a9-7382-4e88-bfba-ba9f1c90c679\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:2:\\\"in\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46'),
(4, 'deb21f96-76de-4d24-afa8-d25f29bfda7d', 'database', 'default', '{\"uuid\":\"deb21f96-76de-4d24-afa8-d25f29bfda7d\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:2:\\\"in\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46'),
(5, '558b0c72-a21e-452c-b52a-940540dd5b1f', 'database', 'default', '{\"uuid\":\"558b0c72-a21e-452c-b52a-940540dd5b1f\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:2:\\\"in\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(6, '23cc52a3-dce1-4841-84b3-bca8e0f43aa2', 'database', 'default', '{\"uuid\":\"23cc52a3-dce1-4841-84b3-bca8e0f43aa2\",\"displayName\":\"App\\\\Events\\\\StockUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:23:\\\"App\\\\Events\\\\StockUpdated\\\":2:{s:7:\\\"product\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Product\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:4:\\\"type\\\";s:3:\\\"out\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: Call to undefined method App\\Events\\StockUpdated::broadcastOn() in C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:79\nStack trace:\n#0 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#1 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(126): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#7 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(130): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#10 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(170): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#11 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(127): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#14 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(442): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(392): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(178): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(149): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(132): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(694): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(1094): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(342): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\symfony\\console\\Application.php(193): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1231): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\Users\\husain\\Desktop\\Project PKL\\kicomp\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#34 {main}', '2025-02-11 08:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_10_021258_add_role_to_users_table', 2),
(5, '2025_02_10_022743_create_categories_table', 3),
(6, '2025_02_10_022956_create_products_table', 3),
(7, '2025_02_10_023500_create_transactions_table', 3),
(8, '2025_02_11_132455_create_notifications_table', 4),
(9, '2025_05_24_161313_add_payment_fields_to_transactions_table', 5),
(10, '2025_05_27_123316_add_product_price_to_transactions_table', 6),
(11, '2025_05_27_130755_add_price_total_paid_to_transactions_table', 7),
(12, '2025_05_31_162657_add_change_to_transactions_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0806bcf4-7e0c-4da9-a421-70df7ce2613f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":172,\"product_name\":\"RJ 45 \\/ Cat 6\",\"quantity\":10,\"type\":\"in\",\"stock\":998,\"price\":\"7500.00\",\"role\":\"admin\",\"message\":\"Produk RJ 45 \\/ Cat 6 ditambahkan sebanyak 10.\"}', '2025-05-27 09:42:41', '2025-05-27 09:40:31', '2025-05-27 09:42:41'),
('0d3521bf-0f7b-4e96-adc9-e8f058213f6f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":1,\"type\":\"in\",\"stock\":16,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz ditambahkan sebanyak 1.\"}', NULL, '2025-05-27 13:53:11', '2025-05-27 13:53:11'),
('0e3d5a22-f3b6-4f6f-b386-c85ac186751b', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":16,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', NULL, '2025-05-24 06:41:31', '2025-05-24 06:41:31'),
('13c689a6-ba60-470e-bd8c-9475c1271756', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":5,\"type\":\"in\",\"stock\":16,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 5.\"}', NULL, '2025-05-24 06:41:31', '2025-05-24 06:41:31'),
('1b87ff5b-e945-42ec-b4fe-1fdee0e6dcda', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":1,\"type\":\"out\",\"stock\":14,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 1.\"}', NULL, '2025-05-27 06:16:59', '2025-05-27 06:16:59'),
('1bc83f5a-a05b-4fd1-90f6-22891e8a9760', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":16,\"product_name\":\"SILK-GLIDING\",\"quantity\":1,\"type\":\"out\",\"stock\":3,\"price\":\"60000.00\",\"role\":\"admin\",\"message\":\"Produk SILK-GLIDING dikurangi sebanyak 1.\"}', NULL, '2025-05-31 11:07:45', '2025-05-31 11:07:45'),
('1d968971-eec8-4985-b055-49d508e6ed98', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":167,\"product_name\":\"Kabel HDD IDE ASUS\",\"quantity\":\"4\",\"type\":\"out\",\"stock\":10,\"price\":\"15000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel HDD IDE ASUS dikurangi sebanyak 4.\"}', '2025-05-24 06:33:49', '2025-03-08 09:57:04', '2025-05-24 06:33:49'),
('2496fc6b-a0a6-453f-af6a-e840a93893dd', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":12,\"type\":\"in\",\"stock\":12,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz ditambahkan sebanyak 12.\"}', NULL, '2025-05-31 16:37:19', '2025-05-31 16:37:19'),
('249ff8b4-dd4a-45ba-90f2-6869665e8c1f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":20,\"type\":\"in\",\"stock\":20,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz ditambahkan sebanyak 20.\"}', '2025-05-27 13:48:50', '2025-05-27 13:48:12', '2025-05-27 13:48:50'),
('32c1cde4-60af-4ff8-8986-6ed206cb59d5', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":2,\"type\":\"in\",\"stock\":14,\"price\":\"100000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool ditambahkan sebanyak 2.\"}', NULL, '2025-05-27 06:40:31', '2025-05-27 06:40:31'),
('3676b20a-23e2-4f97-95e8-92f9ed8d762f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":10,\"type\":\"out\",\"stock\":20,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 10.\"}', '2025-05-24 06:33:49', '2025-05-24 00:03:02', '2025-05-24 06:33:49'),
('3a69d54a-ed92-447a-94c4-f4937c1a120f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":1,\"type\":\"out\",\"stock\":19,\"price\":\"250000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 1.\"}', NULL, '2025-05-31 16:26:05', '2025-05-31 16:26:05'),
('400968bc-1d9c-4a95-b733-84aff69b1c28', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', NULL, '2025-05-24 09:31:33', '2025-05-24 09:31:33'),
('49f5f81e-9035-492d-91de-edf322a66e5c', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":5,\"product_name\":\"TP-Link Wireless USB\",\"quantity\":\"1\",\"type\":\"out\",\"stock\":0,\"price\":\"150000.00\",\"role\":\"admin\",\"message\":\"Produk TP-Link Wireless USB dikurangi sebanyak 1.\"}', '2025-03-24 19:08:42', '2025-02-14 01:23:20', '2025-03-24 19:08:42'),
('4a951d2b-073b-44cc-9cd6-52a0eeb2dae6', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":2,\"type\":\"in\",\"stock\":18,\"price\":\"250000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool ditambahkan sebanyak 2.\"}', NULL, '2025-05-27 13:53:25', '2025-05-27 13:53:25'),
('5740a932-9be6-45fb-b44a-0c2aece02e7e', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":1,\"type\":\"out\",\"stock\":18,\"price\":\"250000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 1.\"}', NULL, '2025-06-01 02:54:16', '2025-06-01 02:54:16'),
('5b5998e5-d8e1-4aff-a76f-60994b792bde', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":5,\"type\":\"out\",\"stock\":10,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS dikurangi sebanyak 5.\"}', NULL, '2025-05-24 07:32:51', '2025-05-24 07:32:51'),
('632620bb-2d8c-4639-ab6b-c4331ded97c3', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"out\",\"stock\":9,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 1.\"}', '2025-05-25 09:30:18', '2025-05-25 09:23:43', '2025-05-25 09:30:18'),
('6c2880ab-22d1-4f1b-b734-b971ccfce29f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":2,\"type\":\"out\",\"stock\":16,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS dikurangi sebanyak 2.\"}', NULL, '2025-05-27 13:54:20', '2025-05-27 13:54:20'),
('6c589aa2-786a-4cd1-921c-357400385b56', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":3,\"type\":\"out\",\"stock\":15,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 3.\"}', '2025-05-24 06:33:49', '2025-05-24 02:04:18', '2025-05-24 06:33:49'),
('71d6c2a4-bc07-4f8b-a685-e1a65284ee50', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":14,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', NULL, '2025-05-27 13:55:36', '2025-05-27 13:55:36'),
('74fef910-24c9-4d55-9b97-2fd39b07e2de', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":5,\"type\":\"in\",\"stock\":10,\"price\":\"350000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz ditambahkan sebanyak 5.\"}', NULL, '2025-05-27 13:31:17', '2025-05-27 13:31:17'),
('766c793d-8dca-41c8-8910-e6f5b8bbb47b', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"cctv ezviz\",\"quantity\":1,\"type\":\"out\",\"stock\":1,\"price\":\"350000.00\",\"role\":\"admin\",\"message\":\"Produk cctv ezviz dikurangi sebanyak 1.\"}', '2025-05-27 12:57:35', '2025-05-27 09:48:07', '2025-05-27 12:57:35'),
('7a77826a-cccb-4418-842a-9a71ccf443fd', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":5,\"type\":\"out\",\"stock\":15,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz dikurangi sebanyak 5.\"}', NULL, '2025-05-27 13:50:17', '2025-05-27 13:50:17'),
('7a7fd9d9-1c37-4684-b3de-8c9b8afcc15a', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":\"5\",\"type\":\"in\",\"stock\":15,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS ditambahkan sebanyak 5.\"}', '2025-05-24 06:33:49', '2025-03-24 19:32:27', '2025-05-24 06:33:49'),
('858b9fbb-3125-4044-86ba-dcc3139625ee', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":5,\"product_name\":\"TP-Link Wireless USB\",\"quantity\":1,\"type\":\"out\",\"stock\":5,\"price\":\"150000.00\",\"role\":\"admin\",\"message\":\"Produk TP-Link Wireless USB dikurangi sebanyak 1.\"}', NULL, '2025-05-31 11:06:44', '2025-05-31 11:06:44'),
('90c33d80-1919-4c05-95f8-dee613edca26', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"out\",\"stock\":9,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 1.\"}', NULL, '2025-05-24 08:51:36', '2025-05-24 08:51:36'),
('928bf3d1-4329-47e7-ac62-45cfe7b2002e', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":4,\"type\":\"in\",\"stock\":18,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS ditambahkan sebanyak 4.\"}', NULL, '2025-05-27 13:53:50', '2025-05-27 13:53:50'),
('92dd648c-6b2b-47c4-bddf-635515a8cbab', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":\"3\",\"type\":\"in\",\"stock\":5,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS ditambahkan sebanyak 3.\"}', '2025-05-24 06:33:49', '2025-03-08 09:56:11', '2025-05-24 06:33:49'),
('950899ad-4a02-4146-9fe4-b2f88b67f5eb', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":3,\"type\":\"in\",\"stock\":17,\"price\":\"100000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool ditambahkan sebanyak 3.\"}', NULL, '2025-05-27 06:40:48', '2025-05-27 06:40:48'),
('951a6e25-43f8-4221-86c9-00b0d3753258', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":\"5\",\"type\":\"in\",\"stock\":10,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS ditambahkan sebanyak 5.\"}', '2025-05-24 06:33:49', '2025-03-24 19:08:15', '2025-05-24 06:33:49'),
('98cb82aa-54c3-4c92-bf5e-6076c48864b3', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":2,\"type\":\"out\",\"stock\":12,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 2.\"}', NULL, '2025-05-24 06:54:34', '2025-05-24 06:54:34'),
('9a5ee8d7-1b20-4be8-a198-d8d226b66f2a', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":2,\"type\":\"out\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 2.\"}', NULL, '2025-05-24 08:39:57', '2025-05-24 08:39:57'),
('9ccbc48e-1eaa-4fbb-9c3f-0dae05f72040', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":3,\"type\":\"in\",\"stock\":13,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 3.\"}', NULL, '2025-05-27 13:55:14', '2025-05-27 13:55:14'),
('9f5ca5e1-a654-425d-857b-e991bca9f86c', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":2,\"type\":\"out\",\"stock\":18,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 2.\"}', '2025-05-24 06:33:49', '2025-05-24 00:03:29', '2025-05-24 06:33:49'),
('a08c9dca-6ee4-4ad7-876b-0ccc3511f3b1', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":10,\"type\":\"in\",\"stock\":20,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool ditambahkan sebanyak 10.\"}', NULL, '2025-05-27 05:08:31', '2025-05-27 05:08:31'),
('a9fe59a7-68cf-4a6f-8c89-a23e63140efd', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":15,\"type\":\"out\",\"stock\":0,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz dikurangi sebanyak 15.\"}', NULL, '2025-05-28 07:17:03', '2025-05-28 07:17:03'),
('ae382bd3-ba06-4f2d-be98-5f9f8dae7940', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":172,\"product_name\":\"RJ 45 \\/ Cat 6\",\"quantity\":12,\"type\":\"out\",\"stock\":988,\"price\":\"7500.00\",\"role\":\"admin\",\"message\":\"Produk RJ 45 \\/ Cat 6 dikurangi sebanyak 12.\"}', NULL, '2025-05-27 09:39:10', '2025-05-27 09:39:10'),
('b3e02a2b-0c0f-41ce-8370-48f17ff33743', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', '2025-05-25 09:41:35', '2025-05-25 09:41:30', '2025-05-25 09:41:35'),
('b66959a2-8d52-441f-9836-996d59b5776e', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":2,\"type\":\"out\",\"stock\":14,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 2.\"}', NULL, '2025-05-24 06:43:53', '2025-05-24 06:43:53'),
('ba6e26fe-4c32-4569-a3ed-687c8f2a5b7b', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":2,\"type\":\"in\",\"stock\":20,\"price\":\"250000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool ditambahkan sebanyak 2.\"}', NULL, '2025-05-27 13:56:26', '2025-05-27 13:56:26'),
('c9317c77-2859-4518-9774-8a88caa5d77b', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":11,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', NULL, '2025-05-24 09:31:54', '2025-05-24 09:31:54'),
('cf36c835-ad99-466f-bdc0-974b706a2a43', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":20,\"type\":\"in\",\"stock\":20,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 20.\"}', '2025-05-24 06:33:49', '2025-05-24 00:03:02', '2025-05-24 06:33:49'),
('d3bd42ec-ce4f-44af-ace3-3a67cdbb3b6d', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":1,\"type\":\"out\",\"stock\":16,\"price\":\"250000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 1.\"}', NULL, '2025-05-27 13:49:43', '2025-05-27 13:49:43'),
('db666ed2-1361-4121-8c9d-cfaac30fe37f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":10,\"type\":\"out\",\"stock\":0,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz dikurangi sebanyak 10.\"}', NULL, '2025-05-27 13:47:40', '2025-05-27 13:47:40'),
('e2541684-b326-4fd3-9c20-3f70baa2db30', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":173,\"product_name\":\"CCTV Ezviz\",\"quantity\":16,\"type\":\"out\",\"stock\":0,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk CCTV Ezviz dikurangi sebanyak 16.\"}', NULL, '2025-05-28 06:28:00', '2025-05-28 06:28:00'),
('e812ad03-0768-43cc-8725-6632cdeacc01', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"in\",\"stock\":11,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad ditambahkan sebanyak 1.\"}', NULL, '2025-05-25 09:41:54', '2025-05-25 09:41:54'),
('ea6faa4d-fe41-43e2-a5b4-33ea96d3d791', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":5,\"product_name\":\"TP-Link Wireless USB\",\"quantity\":6,\"type\":\"in\",\"stock\":6,\"price\":\"150000.00\",\"role\":\"admin\",\"message\":\"Produk TP-Link Wireless USB ditambahkan sebanyak 6.\"}', NULL, '2025-05-31 11:06:27', '2025-05-31 11:06:27'),
('efa265d3-7098-48c6-9cf8-914402941a49', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":5,\"type\":\"out\",\"stock\":15,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 5.\"}', NULL, '2025-05-27 05:10:41', '2025-05-27 05:10:41'),
('f50d8f66-f411-4759-b947-e20f875c77bb', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":2,\"type\":\"out\",\"stock\":12,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 2.\"}', NULL, '2025-05-27 06:24:56', '2025-05-27 06:24:56'),
('f610ef1b-798f-4b1f-9be1-9451d9dca514', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":5,\"type\":\"out\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 5.\"}', '2025-05-24 06:33:49', '2025-05-24 02:04:53', '2025-05-24 06:33:49'),
('f76f2178-f78a-4b49-b700-7721d845ca29', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"out\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 1.\"}', '2025-05-27 06:23:51', '2025-05-24 09:56:07', '2025-05-27 06:23:51'),
('f82e103c-af3f-4637-9cdd-9b3383744cd7', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":165,\"product_name\":\"Adapter LG TV\",\"quantity\":2,\"type\":\"in\",\"stock\":3,\"price\":\"190000.00\",\"role\":\"admin\",\"message\":\"Produk Adapter LG TV ditambahkan sebanyak 2.\"}', NULL, '2025-05-27 13:55:55', '2025-05-27 13:55:55'),
('f86e4dd4-2f78-468c-b03e-2ead68d1bd8f', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":168,\"product_name\":\"Kabel Floppy ASUS\",\"quantity\":4,\"type\":\"in\",\"stock\":14,\"price\":\"25000.00\",\"role\":\"admin\",\"message\":\"Produk Kabel Floppy ASUS ditambahkan sebanyak 4.\"}', NULL, '2025-05-27 13:53:49', '2025-05-27 13:53:49'),
('f8f87f81-8392-4d39-b11a-e9fc04ee0a41', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":170,\"product_name\":\"Cooling Pad\",\"quantity\":1,\"type\":\"out\",\"stock\":10,\"price\":\"200000.00\",\"role\":\"admin\",\"message\":\"Produk Cooling Pad dikurangi sebanyak 1.\"}', NULL, '2025-05-26 12:31:26', '2025-05-26 12:31:26'),
('fa189a7f-a581-4195-a39d-f1cc7c425eeb', 'App\\Notifications\\StockUpdatedNotification', 'App\\Models\\User', 1, '{\"product_id\":171,\"product_name\":\"Fan DeepCool\",\"quantity\":2,\"type\":\"out\",\"stock\":10,\"price\":\"300000.00\",\"role\":\"admin\",\"message\":\"Produk Fan DeepCool dikurangi sebanyak 2.\"}', '2025-05-25 17:55:22', '2025-05-25 17:55:11', '2025-05-25 17:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `category_id`, `price`, `created_at`, `updated_at`) VALUES
(5, 'TP-Link Wireless USB', 5, 5, 150000.00, '2025-02-11 19:03:46', '2025-05-31 11:06:44'),
(6, 'TP-Link Bluetooth 5.0 USB Adapter', 1, 6, 115000.00, '2025-02-11 19:08:32', '2025-02-11 19:08:32'),
(7, 'Switch 5 Port', 2, 7, 125000.00, '2025-02-11 19:09:42', '2025-02-11 19:09:42'),
(8, 'Switch 8 Port', 1, 7, 135000.00, '2025-02-11 19:10:43', '2025-02-11 19:10:43'),
(9, 'TP-Link Switch 8 Port', 1, 7, 15000.00, '2025-02-11 19:12:38', '2025-02-11 19:12:38'),
(10, 'TP-Link Wireless N PCI Express Adapter', 1, 5, 195000.00, '2025-02-11 19:15:44', '2025-02-11 19:15:44'),
(11, 'NetLINK Fiber Optic Device', 1, 10, 135000.00, '2025-02-11 19:18:30', '2025-02-11 19:18:30'),
(12, 'M-Tech USB', 1, 11, 125000.00, '2025-02-11 19:19:23', '2025-02-11 19:19:23'),
(13, 'HD Camera Webcam', 1, 12, 375000.00, '2025-02-11 19:20:38', '2025-02-11 19:20:38'),
(14, 'WILD WOLF', 3, 13, 25000.00, '2025-02-11 19:29:59', '2025-02-11 19:29:59'),
(15, 'ROBOT', 2, 13, 15000.00, '2025-02-11 19:30:43', '2025-02-11 19:30:43'),
(16, 'SILK-GLIDING', 3, 13, 60000.00, '2025-02-11 19:32:02', '2025-05-31 11:07:45'),
(17, 'Imperion SLEDGEHAMER 7', 1, 14, 117000.00, '2025-02-11 19:44:00', '2025-02-11 19:44:00'),
(18, 'Imperion SLEDGEHAMER 10', 1, 14, 125000.00, '2025-02-11 19:45:27', '2025-02-11 19:45:27'),
(19, 'Rexus Battlefire', 1, 14, 155000.00, '2025-02-11 19:48:22', '2025-02-11 19:48:22'),
(20, 'Rexus Battlefire', 1, 14, 158000.00, '2025-02-11 19:51:57', '2025-02-11 19:51:57'),
(21, 'Raptor Cypher', 2, 14, 100000.00, '2025-02-11 19:54:04', '2025-02-11 19:54:04'),
(22, 'Foomee', 2, 14, 140000.00, '2025-02-11 19:55:11', '2025-02-11 19:55:11'),
(23, 'NYK NEMESIS', 1, 14, 150000.00, '2025-02-11 19:58:34', '2025-02-11 19:58:34'),
(24, 'NYK SACRED', 1, 14, 120000.00, '2025-02-11 20:00:13', '2025-02-11 20:00:13'),
(25, 'Logitech', 1, 14, 192000.00, '2025-02-11 20:02:19', '2025-02-11 20:02:19'),
(26, 'NYK Gaming Explore', 1, 14, 115000.00, '2025-02-11 20:03:04', '2025-02-11 20:03:04'),
(27, 'Genius', 3, 14, 100000.00, '2025-02-11 20:03:59', '2025-02-11 20:03:59'),
(28, 'R-ONE', 3, 14, 85000.00, '2025-02-11 20:05:06', '2025-02-11 20:05:06'),
(29, 'Octus Natural', 13, 14, 60000.00, '2025-02-11 20:06:04', '2025-02-11 20:06:04'),
(30, 'Mouse DELL ideacentre DPI 1200', 2, 15, 60000.00, '2025-02-11 20:10:08', '2025-02-11 20:10:08'),
(31, 'Mouse HP invent Blue Navigation DPI 1200', 1, 15, 100000.00, '2025-02-11 20:13:07', '2025-02-11 20:13:07'),
(32, 'ASUS Fashion Mouse 1200CPI', 2, 15, 35000.00, '2025-02-11 20:15:32', '2025-02-11 20:15:32'),
(33, 'Acer Optical Mouse', 1, 15, 40000.00, '2025-02-11 20:17:14', '2025-02-11 20:17:14'),
(34, 'Mouse Havit', 1, 15, 100000.00, '2025-02-11 20:19:21', '2025-02-11 20:19:21'),
(35, 'Genius Cam Mouse', 1, 15, 130000.00, '2025-02-11 20:21:20', '2025-02-11 20:21:20'),
(36, 'Mouse Nextor W515', 1, 15, 70000.00, '2025-02-11 20:22:18', '2025-02-11 20:22:18'),
(37, 'Mouse Nextor Wireless', 1, 15, 50000.00, '2025-02-11 20:23:12', '2025-02-11 20:23:12'),
(38, 'Mouse PROFTECH G20', 2, 15, 65000.00, '2025-02-11 20:24:13', '2025-02-11 20:24:13'),
(39, 'Mouse Prolink PMW5007', 2, 15, 150000.00, '2025-02-11 20:25:22', '2025-02-11 20:25:22'),
(40, 'Mouse Philips M104', 1, 15, 45000.00, '2025-02-11 20:26:26', '2025-02-11 20:26:26'),
(41, 'Mouse Prolink PMC1006', 1, 15, 95000.00, '2025-02-11 20:28:23', '2025-02-11 20:28:23'),
(42, 'Colorful Optical Mouse', 1, 15, 70000.00, '2025-02-11 20:29:43', '2025-02-11 20:29:43'),
(43, 'Mouse Philips M204', 1, 15, 75000.00, '2025-02-11 20:31:09', '2025-02-11 20:31:09'),
(44, 'R-One M101', 1, 15, 20000.00, '2025-02-11 20:32:10', '2025-02-11 20:32:10'),
(45, 'Mouse Votre KM-310', 1, 15, 10000.00, '2025-02-11 20:32:53', '2025-02-11 20:32:53'),
(46, 'Fantech Go Wireless Mouse', 2, 15, 67000.00, '2025-02-11 20:33:57', '2025-02-11 20:33:57'),
(47, 'Mouse GKC K-ONE', 1, 15, 85000.00, '2025-02-11 20:34:36', '2025-02-11 20:34:36'),
(48, 'Mouse R-One W187', 1, 15, 70000.00, '2025-02-11 20:37:18', '2025-02-11 20:37:18'),
(49, 'Cliptec RZS 852', 1, 15, 50000.00, '2025-02-11 20:39:10', '2025-02-11 20:39:10'),
(50, 'Advance Wm502', 1, 15, 50000.00, '2025-02-11 20:39:42', '2025-02-11 20:39:42'),
(51, 'Mouse Eyota Wireless', 1, 15, 50000.00, '2025-02-11 20:40:27', '2025-02-11 20:40:27'),
(52, 'GKC K-ONE DPI 1600', 1, 15, 50000.00, '2025-02-11 20:41:11', '2025-02-11 20:41:11'),
(53, 'Logitech B100', 4, 15, 85000.00, '2025-02-11 20:41:56', '2025-02-11 20:41:56'),
(54, 'Logitech M90', 4, 15, 85000.00, '2025-02-11 20:42:23', '2025-02-11 20:42:23'),
(55, 'Genius NX - 7007', 1, 15, 95000.00, '2025-02-11 20:44:48', '2025-02-11 20:44:48'),
(56, 'Genius NX - 8008S', 1, 15, 145000.00, '2025-02-11 20:45:27', '2025-02-11 20:45:27'),
(57, 'Genius NX - 7010', 1, 15, 165000.00, '2025-02-11 20:46:14', '2025-02-11 20:46:14'),
(58, 'Genius NX-7000', 1, 15, 85000.00, '2025-02-11 20:47:27', '2025-02-11 20:47:27'),
(59, 'Genius DX - 120', 4, 15, 85000.00, '2025-02-11 20:48:14', '2025-02-11 20:48:14'),
(60, 'Genius NetScroll 120', 3, 15, 75000.00, '2025-02-11 20:48:59', '2025-02-11 20:48:59'),
(61, 'Robot M370', 1, 15, 67000.00, '2025-02-11 20:49:55', '2025-02-11 20:49:55'),
(62, 'Robot M220', 2, 15, 100000.00, '2025-02-11 20:50:32', '2025-02-11 20:50:32'),
(63, 'Robot M210', 2, 15, 100000.00, '2025-02-11 20:52:50', '2025-02-11 20:52:50'),
(64, 'Robot M205', 1, 15, 45000.00, '2025-02-11 20:53:41', '2025-02-11 20:53:41'),
(65, 'Robot M102', 1, 15, 60000.00, '2025-02-11 20:56:02', '2025-02-11 20:56:02'),
(66, 'Robot M130', 1, 15, 80000.00, '2025-02-11 20:56:36', '2025-02-11 20:56:36'),
(67, 'DST M710', 3, 15, 60000.00, '2025-02-11 20:57:26', '2025-02-11 20:57:26'),
(68, 'HP Gaming Mouse M260', 1, 15, 76000.00, '2025-02-11 20:59:17', '2025-02-11 20:59:17'),
(69, 'HP Gaming Mouse M160', 2, 15, 60000.00, '2025-02-11 21:01:04', '2025-02-11 21:01:04'),
(70, 'A4TECH Wireless Mouse OP-720', 1, 15, 85000.00, '2025-02-11 21:01:32', '2025-02-11 21:01:32'),
(71, 'Wor Wolf Dark Warior', 1, 15, 95000.00, '2025-02-11 21:03:20', '2025-02-11 21:03:20'),
(72, 'HEATZ Gaming mouse ZM55', 1, 15, 85000.00, '2025-02-11 21:04:20', '2025-02-11 21:04:20'),
(73, 'Havic Magic Eagle HV-MS691', 1, 15, 50000.00, '2025-02-11 21:05:25', '2025-02-11 21:05:25'),
(74, 'USB PS II 2 PLAYER CONVERTOR', 2, 19, 40000.00, '2025-02-11 21:16:40', '2025-02-11 21:16:40'),
(75, 'Kabel HDMI to HDMI', 2, 16, 35000.00, '2025-02-11 21:18:30', '2025-02-11 21:18:30'),
(76, 'kabel HDMI Spliter', 1, 16, 55000.00, '2025-02-11 21:19:05', '2025-02-11 21:19:05'),
(77, 'SENGGELAN HDMI HDTV to splitter', 2, 16, 65000.00, '2025-02-11 21:20:12', '2025-02-11 21:20:12'),
(78, 'HDTV to VGA Adapter', 1, 20, 50000.00, '2025-02-11 21:23:25', '2025-02-11 21:23:25'),
(79, 'VGA to HDMI', 1, 16, 95000.00, '2025-02-11 21:23:46', '2025-02-11 21:23:46'),
(80, 'Type C to multi HDMI', 1, 16, 180000.00, '2025-02-11 21:25:43', '2025-02-11 21:25:43'),
(81, 'HDTV by cat-5e/6 cable', 4, 17, 45000.00, '2025-02-11 21:27:21', '2025-02-11 21:27:21'),
(82, 'HI-SPEED USB Hub 2.0 4 port', 1, 19, 25000.00, '2025-02-11 21:28:20', '2025-02-11 21:28:20'),
(83, 'USB Hub 3.0 4 port', 1, 19, 65000.00, '2025-02-11 21:29:47', '2025-02-11 21:29:47'),
(84, 'INK ROLLER IR40T', 2, 18, 30000.00, '2025-02-11 21:31:07', '2025-02-11 21:31:07'),
(85, 'OTG Sound untuk mobil', 5, 18, 25000.00, '2025-02-11 21:32:15', '2025-02-11 21:32:15'),
(86, 'OTG Micro Zbox', 1, 18, 15000.00, '2025-02-11 21:33:01', '2025-02-11 21:33:01'),
(87, 'R-ONE OTG type C', 1, 18, 15000.00, '2025-02-11 21:33:54', '2025-02-11 21:33:54'),
(88, 'Adapter MicroSD', 5, 20, 10000.00, '2025-02-11 21:34:46', '2025-02-11 21:34:46'),
(89, 'Card Reader rotari 4 port', 2, 19, 15000.00, '2025-02-11 21:37:40', '2025-02-11 21:37:40'),
(90, 'Type C Audio', 1, 19, 20000.00, '2025-02-11 21:39:41', '2025-02-11 21:39:41'),
(91, 'iETOP USB ALL IN ONE MEMORY CARD UHS-II', 3, 21, 65000.00, '2025-02-11 21:41:13', '2025-02-11 21:41:13'),
(92, 'Wireless Music Earphone', 4, 19, 35000.00, '2025-02-11 21:42:21', '2025-02-11 21:42:21'),
(93, 'Wireless MUSIC RECEIVER', 4, 19, 35000.00, '2025-02-11 21:44:42', '2025-02-11 21:44:42'),
(94, 'USB Virtual 7', 3, 19, 40000.00, '2025-02-11 21:47:14', '2025-02-11 21:47:14'),
(95, 'Kabel USB male to male', 2, 19, 25000.00, '2025-02-11 21:47:55', '2025-02-11 21:47:55'),
(96, 'Kabel USB female to male', 5, 19, 25000.00, '2025-02-11 21:48:34', '2025-02-11 21:57:07'),
(97, 'Kabel data Micro USB', 4, 19, 25000.00, '2025-02-11 21:49:19', '2025-02-11 21:49:19'),
(98, 'kabel 5P 30 cm Websong', 2, 18, 25000.00, '2025-02-11 21:51:28', '2025-02-11 21:51:28'),
(99, 'Kabel HDD Eksternal USB 3.0', 1, 18, 40000.00, '2025-02-11 21:52:55', '2025-02-11 21:52:55'),
(100, 'HDMI to HDMI L', 9, 16, 30000.00, '2025-02-12 19:54:00', '2025-02-12 19:54:00'),
(101, 'HDMI female to female', 6, 17, 25000.00, '2025-02-12 19:55:15', '2025-02-12 19:57:41'),
(102, 'HDMI male to male', 2, 17, 25000.00, '2025-02-12 19:56:13', '2025-02-12 19:57:26'),
(103, 'DVI to HDMI 24H', 3, 22, 35000.00, '2025-02-12 19:59:48', '2025-02-12 19:59:48'),
(104, 'DVI to HDMI  24+5', 2, 22, 35000.00, '2025-02-12 20:01:21', '2025-02-12 20:01:21'),
(105, 'Sambungan VGA', 2, 18, 20000.00, '2025-02-12 20:02:34', '2025-02-12 20:02:34'),
(106, 'DVI to VGA 24+5', 6, 22, 30000.00, '2025-02-12 20:03:41', '2025-02-12 20:03:41'),
(107, 'DVI to VGA 24+1', 2, 22, 30000.00, '2025-02-12 20:04:19', '2025-02-12 20:04:19'),
(108, 'HDMI Micro to HDMI', 3, 22, 25000.00, '2025-02-12 20:05:04', '2025-02-12 20:05:04'),
(109, 'Centro USB 2.0 Ethernet Adapter', 2, 19, 65000.00, '2025-02-12 20:06:17', '2025-02-12 20:06:17'),
(110, 'USB 2.0 Wireless 150 Mbps', 1, 19, 75000.00, '2025-02-12 20:07:41', '2025-02-12 20:07:41'),
(111, 'Wireless USB Adapter', 2, 19, 75000.00, '2025-02-12 20:08:53', '2025-02-12 20:08:53'),
(112, 'USB HUB HI-SPEED 2.0', 1, 19, 35000.00, '2025-02-12 20:09:31', '2025-02-12 20:09:31'),
(113, 'Connector Fiber optic', 1, 18, 15000.00, '2025-02-12 20:10:10', '2025-02-12 20:10:10'),
(114, 'NOTE BOOK KEYBOARD PROTECTIVEFILM 15 inch', 1, 23, 20000.00, '2025-02-12 20:13:44', '2025-02-12 20:13:44'),
(115, 'NOTE BOOK KEYBOARD PROTECTIVEFILM 11 inch', 4, 23, 15000.00, '2025-02-12 20:15:55', '2025-02-12 20:15:55'),
(116, 'NOTE BOOK KEYBOARD PROTECTIVEFILM 10 inch', 4, 23, 10000.00, '2025-02-12 20:16:32', '2025-02-12 20:16:32'),
(117, 'Kabel Floppy', 1, 24, 20000.00, '2025-02-12 20:22:06', '2025-02-12 20:22:06'),
(118, 'Barel fo isi 2', 6, 17, 10000.00, '2025-02-12 20:23:26', '2025-02-12 20:23:26'),
(119, 'Rj45 cat 6', 3, 18, 10000.00, '2025-02-12 20:25:25', '2025-02-12 20:25:25'),
(120, 'Rj45 cat 5', 1, 18, 10000.00, '2025-02-12 20:26:09', '2025-02-12 20:26:09'),
(121, 'Barel Split', 5, 17, 10000.00, '2025-02-12 20:26:56', '2025-02-12 20:26:56'),
(122, 'Senggelan kabel USB 5 pin to male', 1, 19, 30000.00, '2025-02-12 20:27:49', '2025-02-12 20:27:49'),
(123, 'Senggelan kabel USB Micro to USB Female', 1, 19, 30000.00, '2025-02-12 20:29:23', '2025-02-12 20:29:23'),
(124, 'Audio Splitter', 2, 18, 20000.00, '2025-02-12 20:34:02', '2025-02-12 20:34:02'),
(125, 'Accessories port for earphones and microphone', 27, 18, 15000.00, '2025-02-12 20:36:09', '2025-02-12 20:36:09'),
(126, 'Zbox data cable 3.4A', 1, 24, 35000.00, '2025-02-12 20:39:16', '2025-02-12 20:39:16'),
(127, 'H&K Power Expert', 1, 25, 25000.00, '2025-02-12 20:42:19', '2025-02-12 20:42:19'),
(128, 'GMA LCD USB CHARGER', 1, 25, 30000.00, '2025-02-12 20:49:59', '2025-02-12 20:49:59'),
(129, 'H&K SUPER Quality USB Charger', 1, 25, 25000.00, '2025-02-12 20:50:56', '2025-02-12 20:50:56'),
(130, 'Longway RCA to RCA', 2, 24, 15000.00, '2025-02-12 20:53:55', '2025-02-12 20:53:55'),
(131, 'Longway Sound Up to RCA', 1, 24, 15000.00, '2025-02-12 20:54:39', '2025-02-12 20:54:39'),
(132, 'Kabel power Printer', 5, 24, 30000.00, '2025-02-12 20:55:34', '2025-02-12 20:55:34'),
(133, 'Kabel LPTI', 2, 24, 65000.00, '2025-02-12 20:56:33', '2025-02-12 20:56:33'),
(134, 'USB 20 Cabble 28AWG+24AWG GAUGE male to male', 1, 19, 25000.00, '2025-02-12 20:58:20', '2025-02-12 20:58:20'),
(135, 'OTG Return', 2, 22, 10000.00, '2025-02-12 21:00:11', '2025-02-12 21:00:11'),
(136, 'Rexus Vonix F26M', 2, 26, 150000.00, '2025-02-16 08:52:30', '2025-02-16 08:52:30'),
(137, 'Rexus Vonix F22', 6, 26, 140000.00, '2025-02-16 08:52:54', '2025-02-16 08:52:54'),
(138, 'USB Adapter TP-Link 150 Mbps', 1, 20, 150000.00, '2025-02-16 08:54:34', '2025-02-16 08:54:34'),
(139, 'Nvidia GeForce VenomRX GT610 2GB DDR3', 3, 27, 325000.00, '2025-02-16 08:56:45', '2025-02-16 08:58:22'),
(140, 'Motherboard Intel H61 VenomRX', 3, 28, 270000.00, '2025-02-16 08:59:35', '2025-02-16 08:59:35'),
(141, 'Brother BTD60BK', 2, 31, 115000.00, '2025-02-16 09:06:11', '2025-02-16 09:06:11'),
(142, 'Brother BT5000M', 2, 31, 110000.00, '2025-02-16 09:06:52', '2025-02-16 09:06:52'),
(143, 'HP GT53', 1, 31, 110000.00, '2025-02-16 09:08:06', '2025-02-16 09:08:06'),
(144, 'HP GT52', 3, 31, 110000.00, '2025-02-16 09:08:38', '2025-02-16 09:08:38'),
(145, 'EPSON 003', 7, 31, 100000.00, '2025-02-16 09:09:00', '2025-02-16 09:09:00'),
(146, 'EPSON 664', 3, 31, 100000.00, '2025-02-16 09:09:30', '2025-02-16 09:10:22'),
(147, 'PIXMA 790 BK/M/C/Y', 4, 31, 140000.00, '2025-02-16 09:10:48', '2025-02-16 09:10:48'),
(148, 'Maxigraph MX 0080 B/C/Y/M', 7, 31, 30000.00, '2025-02-16 09:12:07', '2025-02-16 09:12:07'),
(149, 'HP INK ADVANTAGE 46', 2, 31, 163000.00, '2025-02-16 09:13:08', '2025-02-16 09:13:08'),
(150, 'HP INK ADVANTAGE 703', 3, 31, 165000.00, '2025-02-16 09:13:39', '2025-02-16 09:13:39'),
(151, 'EPSON RIBBON CARTRIDGE PITA LX', 6, 31, 75000.00, '2025-02-16 09:14:00', '2025-02-16 09:14:00'),
(152, 'Fullmark Nylon Printer Ribbon', 5, 31, 40000.00, '2025-02-16 09:14:26', '2025-02-16 09:14:26'),
(153, 'Kabel HDMI 1,5m', 6, 32, 40000.00, '2025-02-16 09:16:31', '2025-02-16 09:16:31'),
(154, 'Kabel HDMI 3m', 5, 32, 50000.00, '2025-02-16 09:16:54', '2025-02-16 09:16:54'),
(155, 'Kabel HDMI 5m', 4, 32, 60000.00, '2025-02-16 09:17:28', '2025-02-16 09:17:28'),
(156, 'Kabel HDMI 15m', 2, 32, 150000.00, '2025-02-16 09:17:59', '2025-02-16 09:17:59'),
(157, 'NETLINE 5M VGA M/M CABLE', 1, 33, 100000.00, '2025-02-16 09:20:35', '2025-02-16 09:20:35'),
(158, 'SGL SHENGGELAN 3m', 2, 33, 75000.00, '2025-02-16 09:30:03', '2025-02-16 09:30:03'),
(159, 'VGA SPLITTER 200MHz 4 port', 2, 34, 125000.00, '2025-02-16 09:31:27', '2025-02-16 09:31:47'),
(160, 'HDTV 2.0 Cable', 1, 35, 85000.00, '2025-02-16 09:32:40', '2025-02-16 09:32:40'),
(161, 'Premium HDMI Cable 2.0', 3, 16, 75000.00, '2025-02-16 09:33:05', '2025-02-16 09:33:05'),
(162, 'HDTV to VGA Adapter', 3, 22, 50000.00, '2025-02-16 09:33:28', '2025-02-16 09:33:28'),
(163, 'Fan M-Tech mini', 4, 37, 20000.00, '2025-02-16 09:34:45', '2025-02-16 09:34:54'),
(164, 'Baterai HP OA04', 1, 38, 650000.00, '2025-02-16 09:35:44', '2025-02-16 09:36:09'),
(165, 'Adapter LG TV', 3, 20, 190000.00, '2025-02-16 09:36:29', '2025-05-27 13:55:55'),
(166, 'Screen Cleaning Kit', 3, 39, 20000.00, '2025-02-16 09:37:25', '2025-02-16 09:37:25'),
(167, 'Kabel HDD IDE ASUS', 10, 40, 15000.00, '2025-02-16 09:38:20', '2025-03-08 09:57:04'),
(168, 'Kabel Floppy ASUS', 16, 41, 25000.00, '2025-02-16 09:39:27', '2025-05-27 13:54:20'),
(170, 'Cooling Pad', 14, 43, 200000.00, '2025-05-23 23:44:49', '2025-05-27 13:55:36'),
(171, 'Fan DeepCool', 18, 37, 250000.00, '2025-05-25 14:56:38', '2025-06-01 02:54:13'),
(173, 'CCTV Ezviz', 10, 46, 300000.00, '2025-05-27 09:45:39', '2025-06-01 01:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('M2dQPdNerZmcowbc1IEv60xZDdmrblwNPQ0ciyw4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid280cjNBVVoxd2lRT0hZRkZ5ckpFM09uNGlPUkdLcUJMamF5empDTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319', 1748746558);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `total_price` decimal(15,2) NOT NULL,
  `paid_amount` decimal(15,2) DEFAULT NULL,
  `change` decimal(12,2) DEFAULT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `type`, `quantity`, `price`, `total_price`, `paid_amount`, `change`, `transaction_date`, `created_at`, `updated_at`) VALUES
(49, 171, 'out', 1, 300000.00, 300000.00, 300000.00, NULL, '2025-05-27 06:16:59', '2025-05-27 06:16:59', '2025-05-27 06:16:59'),
(50, 171, 'out', 2, 300000.00, 600000.00, 700000.00, NULL, '2025-05-27 06:24:56', '2025-05-27 06:24:56', '2025-05-27 06:24:56'),
(51, 171, 'in', 2, 100000.00, 200000.00, 0.00, NULL, '2025-05-27 06:40:31', '2025-05-27 06:40:31', '2025-05-27 06:40:31'),
(55, 173, 'out', 1, 350000.00, 350000.00, 360000.00, NULL, '2025-05-27 09:48:07', '2025-05-27 09:48:07', '2025-05-27 09:48:07'),
(56, 173, 'in', 5, 350000.00, 1750000.00, 0.00, NULL, '2025-05-27 13:31:17', '2025-05-27 13:31:17', '2025-05-27 13:31:17'),
(57, 173, 'out', 10, 300000.00, 3000000.00, 3000000.00, NULL, '2025-05-27 13:47:39', '2025-05-27 13:47:40', '2025-05-27 13:47:40'),
(58, 173, 'in', 20, 300000.00, 6000000.00, 0.00, NULL, '2025-05-27 13:48:00', '2025-05-27 13:48:12', '2025-05-27 13:48:12'),
(59, 171, 'out', 1, 250000.00, 250000.00, 250000.00, NULL, '2025-05-27 13:49:43', '2025-05-27 13:49:43', '2025-05-27 13:49:43'),
(60, 173, 'out', 5, 300000.00, 1500000.00, 1500000.00, NULL, '2025-05-27 13:50:17', '2025-05-27 13:50:17', '2025-05-27 13:50:17'),
(61, 173, 'in', 1, 300000.00, 300000.00, 0.00, NULL, '2025-05-27 13:53:11', '2025-05-27 13:53:11', '2025-05-27 13:53:11'),
(62, 171, 'in', 2, 250000.00, 500000.00, 0.00, NULL, '2025-05-27 13:53:25', '2025-05-27 13:53:25', '2025-05-27 13:53:25'),
(63, 168, 'in', 4, 25000.00, 100000.00, 0.00, NULL, '2025-05-27 13:53:00', '2025-05-27 13:53:49', '2025-05-27 13:53:49'),
(64, 168, 'in', 4, 25000.00, 100000.00, 0.00, NULL, '2025-05-27 13:53:00', '2025-05-27 13:53:50', '2025-05-27 13:53:50'),
(65, 168, 'out', 2, 25000.00, 50000.00, 50000.00, NULL, '2025-05-27 13:54:20', '2025-05-27 13:54:20', '2025-05-27 13:54:20'),
(66, 170, 'in', 3, 200000.00, 600000.00, 0.00, NULL, '2025-05-27 13:55:14', '2025-05-27 13:55:14', '2025-05-27 13:55:14'),
(67, 170, 'in', 1, 200000.00, 200000.00, 0.00, NULL, '2025-05-27 13:55:36', '2025-05-27 13:55:36', '2025-05-27 13:55:36'),
(68, 165, 'in', 2, 190000.00, 380000.00, 0.00, NULL, '2025-05-27 13:55:55', '2025-05-27 13:55:55', '2025-05-27 13:55:55'),
(69, 171, 'in', 2, 250000.00, 500000.00, 0.00, NULL, '2025-05-27 13:56:26', '2025-05-27 13:56:26', '2025-05-27 13:56:26'),
(70, 173, 'out', 16, 300000.00, 4800000.00, 5000000.00, NULL, '2025-05-28 06:27:58', '2025-05-28 06:27:58', '2025-05-28 06:27:58'),
(71, 173, 'out', 15, 300000.00, 4500000.00, 4500000.00, NULL, '2025-05-28 07:17:03', '2025-05-28 07:17:03', '2025-05-28 07:17:03'),
(72, 5, 'in', 6, 150000.00, 900000.00, 0.00, NULL, '2025-05-31 11:06:24', '2025-05-31 11:06:24', '2025-05-31 11:06:24'),
(73, 5, 'out', 1, 150000.00, 150000.00, 170000.00, NULL, '2025-05-31 11:06:44', '2025-05-31 11:06:44', '2025-05-31 11:06:44'),
(74, 16, 'out', 1, 60000.00, 60000.00, 100000.00, NULL, '2025-05-31 11:07:45', '2025-05-31 11:07:45', '2025-05-31 11:07:45'),
(75, 171, 'out', 1, 250000.00, 250000.00, 300000.00, NULL, '2025-05-31 16:26:05', '2025-05-31 16:26:05', '2025-05-31 16:26:05'),
(76, 173, 'in', 12, 300000.00, 3600000.00, 0.00, NULL, '2025-05-31 16:37:19', '2025-05-31 16:37:19', '2025-05-31 16:37:19'),
(77, 171, 'out', 1, 250000.00, 250000.00, 300000.00, NULL, '2025-06-01 02:54:13', '2025-06-01 02:54:13', '2025-06-01 02:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'moderator',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@kicomp.com', 'admin', '2025-02-10 13:31:04', '$2y$12$KmGApvHg0T1pv82aVNXTpu5jm3xFk2bO3OQUubwb0Inid0jg9DNF6', NULL, '2025-02-10 13:31:04', '2025-02-10 13:31:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
