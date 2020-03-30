-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 30 2020 г., 10:35
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webgrossbuh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `ID` bigint(20) NOT NULL,
  `AUTHOR` varchar(255) DEFAULT NULL,
  `MONTH` varchar(255) DEFAULT NULL,
  `NUMBER` int(11) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`ID`, `AUTHOR`, `MONTH`, `NUMBER`, `TITLE`, `TOTAL`, `YEAR`) VALUES
(21, 'FIE Perfect Pluss', '1', 1, 'горячая вода', 279, 2020),
(22, 'OU Ivanov', '1', 2, 'Расходы на транспорт', 500, 2020),
(23, 'Perfect pluss', '2', 3, 'Отопление', 500, 2020),
(24, 'Gerbert Uels', '1', 123456, 'Volvo', 300, 2020);

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FORM` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`ID`, `ADDRESS`, `EMAIL`, `FORM`, `NAME`) VALUES
(7, 'Kangelaste 50', 'admin@admin.ee', 'FIE', 'admin'),
(8, 'Sillamae', 'lora-tih@inbox.ru', 'FIE', 'Larissa'),
(51, 'Narva', 'on@mail.ru', 'OU', 'Ольга'),
(53, 'Kangelaste 45', 'vika@mail.ru', 'FIE', 'Vika'),
(54, 'Sillamae Kesk 39', 'ivanov@inbox.ru', 'OU', 'Ivanov'),
(60, 'Sillamae Kesk 53', 'pod@mail.ru', 'OU', 'PodalV'),
(61, 'Sillamae Kesk 39a', 'Nika@inbox.ru', 'FIE', 'NikolTih');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `ID` bigint(20) NOT NULL,
  `PAYMENTDATE` datetime DEFAULT NULL,
  `TAKEON` datetime DEFAULT NULL,
  `ACCOUNT_ID` bigint(20) DEFAULT NULL,
  `COMPANY_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`ID`, `PAYMENTDATE`, `TAKEON`, `ACCOUNT_ID`, `COMPANY_ID`) VALUES
(24, NULL, '2020-03-29 17:44:12', 21, 8),
(25, NULL, '2020-03-29 17:45:44', 21, 7),
(26, NULL, '2020-03-29 17:49:37', 22, 53),
(27, NULL, '2020-03-29 17:53:33', 22, 54),
(28, NULL, '2020-03-29 17:54:46', 21, 8),
(29, NULL, '2020-03-30 08:48:21', 21, 7),
(30, NULL, '2020-03-30 08:48:46', 21, 7),
(31, NULL, '2020-03-30 09:17:12', 21, 54),
(32, NULL, '2020-03-30 09:27:10', 23, 51),
(33, NULL, '2020-03-30 09:42:27', 22, 53),
(34, NULL, '2020-03-30 09:45:06', 21, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SALTS` varchar(255) DEFAULT NULL,
  `COMPANY_ID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID`, `LOGIN`, `PASSWORD`, `SALTS`, `COMPANY_ID`) VALUES
(4, 'admin', '24245cad558561434e80373ea6f8225f82c5ad73edfe239032b959aa22f68da1', '533eb08498ae8e3b2a5e7bac2f72a02b', 7),
(5, 'Larissa', 'a7897116aa3e72a0f4b3faee94d191aa86ec488d968ca4b92999206e58c700e9', 'f0716ec2db82ef1c4cddb4a039fcbc13', 8),
(7, 'OlgaN', 'fbb9a00ec65c185a9a3afcac5d44c78ddb3bead625bf36f26556c4ddd1d62c68', 'da44f2f3aa2855e5fc12d0d1a7ab6b20', 51),
(8, 'VikaB', '6a39d4686628c4e2992a3184539c7634e76e91af90711cabc5b65d37fdd0b991', 'd15c32c2528f6a3d296fcba72c2c6b95', 53),
(9, 'Ivanov', 'b44eed0ac232c155cea887bdfcb64a5ce17d902515f5237ba5afdd13b07b5c12', '32fccaace91501ecc193f73e58e44dd9', 54),
(10, 'PodalV', '6c9ff220f1b07641ab8d34cf25239d84828e336b2ff68e976806c119b8ba48c6', '3d3b103340c8fdf9670be681da9da475', 60),
(11, 'NikolTih', '4e16361c20b4ef8162c6d1a4e4a32776add697bd09fa6056c83b6f87be743ecb', '148c88036743e0a09f433d2a613f1051', 61);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ADDRESS` (`ADDRESS`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_HISTORY_COMPANY_ID` (`COMPANY_ID`),
  ADD KEY `FK_HISTORY_ACCOUNT_ID` (`ACCOUNT_ID`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_USER_COMPANY_ID` (`COMPANY_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `company`
--
ALTER TABLE `company`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_HISTORY_ACCOUNT_ID` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ID`),
  ADD CONSTRAINT `FK_HISTORY_COMPANY_ID` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`ID`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_USER_COMPANY_ID` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
