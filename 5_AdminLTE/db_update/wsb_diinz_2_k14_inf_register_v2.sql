-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2023, 09:25
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
  `avatar` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `email`, `city_id`, `firstName`, `lastName`, `birthday`, `avatar`, `password`, `created_at`) VALUES
(1, 'jan@o2.pl', 2, 'Janusz', 'Nowak', '2023-03-04', '', 'pass', '2023-04-12 10:56:51'),
(17, 'qq@o2.pl', 2, 'j', 'h', '2023-01-01', '', '$argon2id$v=19$m=65536,t=4,p=1$aWwuTU5QNDRPUVpBbnJxcw$a0wHGHY4kUNkeEyibWDt4qLEJ96veReina0jCGii8Cs', '2023-04-26 09:23:09'),
(19, 'qq@o2.pl1', 2, 'kk', 'jj', '2023-01-02', '', '$argon2id$v=19$m=65536,t=4,p=1$NmN4V1M5R2JtNmZ4YXlrSg$s5kR4SOc7rSMnDrfEnv1zlctt4aYWptjW+AdCRRItVM', '2023-04-26 09:42:32'),
(20, 'paw@o2.pl', 2, 'Krystyna', 'Pawlak', '2023-01-01', '', '$argon2id$v=19$m=65536,t=4,p=1$T0I4TjJZZWhqeWdBTmU2Nw$6bnFPCySLfmnLpNLgWLfPovuoEdiug0n8rVnRkw5F6M', '2023-04-26 09:49:26'),
(21, 'kkkk@a.pl', 1, 'k', 'j', '2023-01-01', '', '$argon2id$v=19$m=65536,t=4,p=1$RTd0YXlCaDAwTndmZXlUdA$4y3X0E+vNHD8Anj2Twbtgf5hEjVePTO3jlK3uaPq8Z4', '2023-04-26 10:34:08'),
(22, 'kkkk@a.plk', 1, 'k', 'j', '2023-01-01', '', '$argon2id$v=19$m=65536,t=4,p=1$UlM1ZnFHbE51OS9mRGptRA$u+1rgVar06NRwgxaePBZNfRxYtKhL1n7nyk5xbP/hC4', '2023-04-26 10:34:32'),
(23, 'lklk@o2.pl', 1, 'j', 'kk', '2023-01-01', '', '$argon2id$v=19$m=65536,t=4,p=1$S1JHb1BpdEtOZUZsWGh2Vw$eQ9quJAGAFKLt5qhEe96E1erU9xuI6FDnDbRBIQ/fSg', '2023-04-26 10:44:51'),
(24, 'kkkjjj@o2.pl', 2, 'Krystyna', 'Test', '2023-01-01', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$RS5wYUVscHo5R1hXMzF2VQ$tHS7MiknVZtAir4dZl/tRRhnlBxlub6fFxE7GiVSleM', '2023-04-26 11:04:41'),
(25, 'kkkjjj@o2.pl1', 2, 'Krystyna', 'Test', '2023-01-01', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$YnNkdVo2WUNZai9wMnpLQg$SxVZEHe/fyrsff4mDav5Up3Hn/csFI04OlXBV3hmBAE', '2023-04-26 11:05:07'),
(26, 'k@o2.pl', 1, 'kk', 'll', '2023-01-01', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$VE1zcVpVallPbVZUaXkwbg$XNJxSLZYAQE8wtzjLHdFXpq0Zr95i/MDUzkWuASL16k', '2023-04-26 11:38:10'),
(27, 'k@o2.pl11', 1, 'kk', 'll', '2023-01-01', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$dXRIOGVtSzY4QnBrQ0NmRw$2WMM4FV0nQxb5/6GNk0xf9eqx662mSSHrkRvmqgl5wU', '2023-04-26 11:39:03'),
(28, 'test12@wp.pl', 2, 'Test10_05', 'Test', '2023-01-01', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$d3htajYvV1JHUXRwL1NrOA$12Meq9gi+AlNuQJZEGkjPY7IRw20DNNc3/WwbJLaCJ8', '2023-05-10 09:21:59'),
(29, 'user@wp.pl', 1, 'username', 'userlastname', '2023-12-31', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$RzAuamZETkM0Z2pKaXgueA$lm8QPZYZVE2IkMYkq+TcncKH9ohsavg8eFLIygsZ6EY', '2023-05-10 09:23:41'),
(30, 'k@oo.pl', 1, 'man', 'test', '2023-12-31', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$OFdsSUcyVmZySzFpMHBQdA$eJAa0iAgTKFdDpi+0nWLXHTI5XWpKKepdir46PidrXk', '2023-05-10 09:24:42'),
(31, 'kkkobieta@o2.pl', 1, 'kobieta', 'k', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$N1FFOWhZMDJ2SjhhdnFZTw$XQxyZhRjERphn8zAm3NAKDL9ZYzsVXWOfo1v+YDUM7M', '2023-05-10 09:25:11');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
