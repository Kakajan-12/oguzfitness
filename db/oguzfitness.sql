-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2023 г., 10:40
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oguzfitness`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `text_en` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `title`, `title_ru`, `title_en`, `text`, `text_ru`, `text_en`) VALUES
(1, 'WHAT IS FUNCTIONAL', 'WHAT IS FUNCTIONAL ru', 'WHAT IS FUNCTIONAL en', 'Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!', 'Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!', 'Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!Our state of the art gyms provide you with a great place to work out in, whether you are there to burn off some calories or are training for something more specific. Why not visit your nearest Gym Center and take a look? We’re here to help you!');

-- --------------------------------------------------------

--
-- Структура таблицы `children`
--

CREATE TABLE `children` (
  `id` int NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `time_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleru` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleen` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `textru` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `texten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `monday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saturday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sunday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `classes`
--

INSERT INTO `classes` (`id`, `time_table`, `image`, `icon`, `title`, `titleru`, `titleen`, `text`, `textru`, `texten`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 'boevoy', '2.jpg', 'flaticon-tools-and-utensils-1', 'Söweş zaly', 'Боевой зал', 'Battle Hall', 'They also provide insights about the profession’s most colorful personalities and powerful institutions, as well as original commentary on breaking legal developments.The resources managed in logistics can include physical items such as food, materials, animals, equipment, and liquids.', 'ru They also provide insights about the profession’s most colorful personalities and powerful institutions, as well as original commentary on breaking legal developments.The resources managed in logistics can include physical items such as food, materials, animals, equipment, and liquids.', 'en They also provide insights about the profession’s most colorful personalities and powerful institutions, as well as original commentary on breaking legal developments.The resources managed in logistics can include physical items such as food, materials, animals, equipment, and liquids.', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', NULL),
(2, 'detskiy', '1.jpg', 'flaticon-muscle', 'Çagalar zaly', 'Детский зал', 'Children\'s room', 'fdghjkl', 'fdgh,jkl', 'fbghmjkl', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', '10:00-20:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `combat`
--

CREATE TABLE `combat` (
  `id` int NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `location`, `location_ru`, `location_en`, `tel1`, `tel2`, `mail`) VALUES
(1, 'ashgabat, turkmenistan', 'ashgabat, turkmenistan ru', 'ashgabat, turkmenistan en', '+99363227969', '+99363227969', 'info@oguzfitness.com');

-- --------------------------------------------------------

--
-- Структура таблицы `dance`
--

CREATE TABLE `dance` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `dance`
--

INSERT INTO `dance` (`id`, `name`, `name_ru`, `name_en`, `time`) VALUES
(1, 'individual', NULL, NULL, '9:00-10:00'),
(2, NULL, NULL, NULL, NULL),
(3, 'individual', NULL, NULL, '9:00-10:30');

-- --------------------------------------------------------

--
-- Структура таблицы `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `login`
--

INSERT INTO `login` (`id`, `login`, `password`) VALUES
(1, 'admin', 'secret');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `text_en` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `image`, `category`, `category_ru`, `category_en`, `date`, `title`, `title_ru`, `title_en`, `text`, `text_ru`, `text_en`) VALUES
(1, '1.jpg', 'fitness', 'fitness', 'fitness', '11.12.2023', '1-nji news', 'aSDASDFSAF', 'afdsfas', 'sdafsafsadfasdfasdf', 'fsadfsadfsafsaf', 'asfdsafsadfsafsaf'),
(2, '1.jpg', 'fghj', 'fcbvgnhmbnj', 'vngbm', 'cbvnm', '2-nji news', 'cbvnbmn', 'bvcnbmn', 'cbvnbmnm', 'vnbmn', 'gvhbj,nkl'),
(3, '2.jpg', 'hkjkl;', 'vgjh,jk.l', 'vjghjkl', 'vjhjk', '3-nji news', 'jvgh', 'kjkjhk', 'jkhjk', 'gh,jk', 'mhbj,nk'),
(4, '3.jpg', 'gjhjkm', 'hgjhj,k', 'gjhjk', 'lhgh', '4-nji news', 'ghjk', 'hghjk', 'ghm,njkm', 'ghbm,njkm', 'gvhmb,njkm,.');

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE `price` (
  `id` int NOT NULL,
  `cat_id` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_nameru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_nameen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `plus1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus1_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus2_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus3_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus4_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus1_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus2_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus3_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plus4_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `cat_id`, `image`, `plan_name`, `plan_nameru`, `plan_nameen`, `month`, `price`, `plus1`, `plus2`, `plus3`, `plus4`, `plus1_ru`, `plus2_ru`, `plus3_ru`, `plus4_ru`, `plus1_en`, `plus2_en`, `plus3_en`, `plus4_en`) VALUES
(1, 1, 'price-1.jpg', 'test', 'test ru', 'test en', 1, 99, 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus'),
(2, 2, 'price-2.jpg', '2', '2', '2', 2, 2, 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus', 'plus');

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prof_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `image`, `name`, `prof`, `prof_ru`, `prof_en`) VALUES
(1, 'price-1.jpg', 'plany planyeew', 'teacher', 'teacher ru', 'teacher en');

-- --------------------------------------------------------

--
-- Структура таблицы `training`
--

CREATE TABLE `training` (
  `id` int NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `combat`
--
ALTER TABLE `combat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dance`
--
ALTER TABLE `dance`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `children`
--
ALTER TABLE `children`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `combat`
--
ALTER TABLE `combat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `dance`
--
ALTER TABLE `dance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `price`
--
ALTER TABLE `price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `training`
--
ALTER TABLE `training`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
