-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Kwi 2023, 09:16
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wsb_diinz_2_k14_inf_register`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`) VALUES
(1, 1, 'Poznań'),
(2, 1, 'Gniezno'),
(3, 2, 'Stargard');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `states`
--

INSERT INTO `states` (`id`, `state`) VALUES
(1, 'Wielkopolskie'),
(2, 'Zachodniopomorskie'),
(3, 'Śląskie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `city_id`, `firstName`, `lastName`, `birthday`, `password`, `created_at`) VALUES
(1, 'jan@o2.pl', 2, 'Janusz', 'Nowak', '2023-03-04', 'pass', '2023-04-12 10:56:51'),
(3, 'jan@o2.pl1', 1, 'Jan', 'Nowak', '2023-01-01', 'k', '2023-04-12 11:05:25'),
(4, 't@o2.pl', 1, 'Tomasz', 'Nowak', '2023-01-01', 't', '2023-04-19 08:56:12'),
(6, 't@o2.pl1', 1, 'Tomasz', 'Nowak', '2023-01-01', 't', '2023-04-19 09:03:00'),
(7, 't@o2.pl12', 1, '', 'Nowak', '2023-01-01', 't', '2023-04-19 09:03:22'),
(8, 'k@o2.pl', 1, 'k', 'j', '2023-01-01', 'k', '2023-04-19 10:08:31'),
(9, 'j@2o2.pl', 1, 'j???', 'h', '2023-02-01', 'k', '2023-04-19 10:35:31'),
(10, 'j@2o2.plk', 1, 'j???', 'h', '2023-02-01', 'k', '2023-04-19 10:44:28'),
(11, 'kk@02.pl', 1, 'Tomasz', 'Nowak', '2023-01-01', 'k', '2023-04-19 10:46:28'),
(12, 'i@o2.pl1', 1, 'test', 'test1', '2023-01-02', '$argon2id$v=19$m=65536,t=4,p=1$c2pRd1JqL0ZxQjZaUVR2RQ$mVsZfC+twUeAAb2c4b8AqH9GX9FkUDE4R99iijtyDK0', '2023-04-19 10:57:55'),
(13, 'jannowak@o2.pl', 3, 'Jan', 'Nowak', '2023-12-31', '$argon2id$v=19$m=65536,t=4,p=1$VXNzbEF6a0k0Q294ZEpJVg$ZHoG114iup3jnMVLj0GKCNXtMHmeOcrA9u/a/GaEwk4', '2023-04-19 11:17:10'),
(14, 'janusz10@o2.pl', 2, 'Janusz', 'Testowy', '2023-04-10', '$argon2id$v=19$m=65536,t=4,p=1$bEJiZVJBZ1pwdHYwSS4vTw$v5hgB4RHUcdrBN7PBj4Po1FgToIlYQDbKaV8VecgOVA', '2023-04-19 11:33:20'),
(16, 'k@o2.plll', 1, 'Krystyna', 'nowak', '2023-01-01', '$argon2id$v=19$m=65536,t=4,p=1$M2hjZER1QUp6VjlCa25LVA$qaO5BBRaD2jkA7r30qgzHWO62MqPoj/4KBB2QKaIM4Y', '2023-04-19 13:14:41');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indeksy dla tabeli `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Ograniczenia dla tabeli `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
