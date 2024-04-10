-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-04-2024 a las 04:28:35
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaitachi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `codigo_barras` varchar(64) NOT NULL,
  `precio_compra` decimal(8,2) NOT NULL,
  `precio_venta` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `imagen` varchar(70) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `imagen`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'categoriawSpQP', 'imagen1.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(2, 'categoriauBCRd', 'imagen2.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(3, 'categoriatW4pS', 'imagen3.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(4, 'categoria0bInQ', 'imagen4.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(5, 'categoriaGlQcT', 'imagen5.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(6, 'categoria1x5T0', 'imagen6.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(7, 'categorialafMx', 'imagen7.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(8, 'categoriagqCHL', 'imagen8.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(9, 'categoriaDHBg4', 'imagen9.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(10, 'categoriapO6uv', 'imagen10.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(11, 'categoriavPOLV', 'imagen11.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(12, 'categoria9Run6', 'imagen12.jpg', 0, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(13, 'categoriaqp0lZ', 'imagen13.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(14, 'categoria0uwgN', 'imagen14.jpg', 1, '2024-04-10 07:07:45', '2024-04-10 07:07:45'),
(15, 'categorialJiqf', 'imagen15.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(16, 'categoriaBf1YG', 'imagen16.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(17, 'categorianLIAv', 'imagen17.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(18, 'categoriaMX6uL', 'imagen18.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(19, 'categoriaGh3rJ', 'imagen19.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(20, 'categoriaPvdnQ', 'imagen20.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(21, 'categoria5LhAw', 'imagen21.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(22, 'categoria2xScj', 'imagen22.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(23, 'categoria70s7V', 'imagen23.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(24, 'categoria656Zh', 'imagen24.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(25, 'categoriaOrI0C', 'imagen25.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(26, 'categoriaBKVS3', 'imagen26.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(27, 'categoriaa87QM', 'imagen27.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(28, 'categoriabvTeF', 'imagen28.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(29, 'categoriaVnQBf', 'imagen29.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(30, 'categoriayCmF3', 'imagen30.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(31, 'categoriasSkjV', 'imagen31.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(32, 'categoria0qz4d', 'imagen32.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(33, 'categoriaSKwFS', 'imagen33.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(34, 'categoriaXBsC7', 'imagen34.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(35, 'categoriaQ9zwa', 'imagen35.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(36, 'categoriaY3tfE', 'imagen36.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(37, 'categoriaB3TB8', 'imagen37.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(38, 'categoriaxOxCg', 'imagen38.jpg', 0, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(39, 'categoriaGS7mI', 'imagen39.jpg', 1, '2024-04-10 07:07:46', '2024-04-10 07:07:46'),
(40, 'categoriaBzmmV', 'imagen40.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(41, 'categoriaHX7Pg', 'imagen41.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(42, 'categoriaxwxCg', 'imagen42.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(43, 'categoriaJBK8P', 'imagen43.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(44, 'categoriaBx0C6', 'imagen44.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(45, 'categoriaV3SSm', 'imagen45.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(46, 'categoriahdeuI', 'imagen46.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(47, 'categoria6xfJG', 'imagen47.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(48, 'categoriakm1w6', 'imagen48.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(49, 'categoriafPCM9', 'imagen49.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(50, 'categoriajgauD', 'imagen50.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(51, 'categoriaSrS7p', 'imagen51.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(52, 'categoriaszx62', 'imagen52.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(53, 'categoriaxoBxZ', 'imagen53.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(54, 'categoria6NDMq', 'imagen54.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(55, 'categoriaHFJnf', 'imagen55.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(56, 'categoriaPTvbu', 'imagen56.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(57, 'categoriaZxZnH', 'imagen57.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(58, 'categoriaJe3wu', 'imagen58.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(59, 'categoriaFm3PM', 'imagen59.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(60, 'categoriaZt94y', 'imagen60.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(61, 'categoria3OXcC', 'imagen61.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(62, 'categoriaJJUAl', 'imagen62.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(63, 'categoriaFDWUJ', 'imagen63.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(64, 'categoriaGCSHn', 'imagen64.jpg', 0, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(65, 'categoria1xsiD', 'imagen65.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(66, 'categoriaLgi49', 'imagen66.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(67, 'categoriaOZ2lS', 'imagen67.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(68, 'categoriabLGUF', 'imagen68.jpg', 1, '2024-04-10 07:07:47', '2024-04-10 07:07:47'),
(69, 'categoriaaxCFW', 'imagen69.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(70, 'categoria5E9FX', 'imagen70.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(71, 'categoriafb81k', 'imagen71.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(72, 'categoriaH35mw', 'imagen72.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(73, 'categoriaYwJkm', 'imagen73.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(74, 'categoria19CFr', 'imagen74.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(75, 'categoriaL1v72', 'imagen75.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(76, 'categoriaMDcAx', 'imagen76.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(77, 'categoriarwDo8', 'imagen77.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(78, 'categoriaGcrJx', 'imagen78.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(79, 'categoriaaYEUK', 'imagen79.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(80, 'categoriaXpOIR', 'imagen80.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(81, 'categoriaTZIz0', 'imagen81.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(82, 'categoriaAKmMY', 'imagen82.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(83, 'categoria3F1KV', 'imagen83.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(84, 'categoriafnHZ2', 'imagen84.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(85, 'categoria2AIP2', 'imagen85.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(86, 'categoriafKEoF', 'imagen86.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(87, 'categoriaA4egJ', 'imagen87.jpg', 0, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(88, 'categoria96ZLR', 'imagen88.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(89, 'categoriarlDb8', 'imagen89.jpg', 1, '2024-04-10 07:07:48', '2024-04-10 07:07:48'),
(90, 'categoria4AEq1', 'imagen90.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(91, 'categoria2wFJV', 'imagen91.jpg', 1, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(92, 'categoriaFxGkQ', 'imagen92.jpg', 1, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(93, 'categoriaGcISn', 'imagen93.jpg', 1, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(94, 'categoriaLfpqU', 'imagen94.jpg', 1, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(95, 'categoriazPWs5', 'imagen95.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(96, 'categoriasC6tA', 'imagen96.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(97, 'categoriaoZT9j', 'imagen97.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(98, 'categoriaFGW9r', 'imagen98.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(99, 'categoriaOJVX3', 'imagen99.jpg', 1, '2024-04-10 07:07:49', '2024-04-10 07:07:49'),
(100, 'categorianurKm', 'imagen100.jpg', 0, '2024-04-10 07:07:49', '2024-04-10 07:07:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1),
(16, '2024_04_10_002615_create_categoria_table', 1),
(17, '2024_04_10_020959_create_articulos_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
