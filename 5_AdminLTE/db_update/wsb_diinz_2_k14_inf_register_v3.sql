-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Maj 2023, 09:45
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
  `additional_email` varchar(60) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `email`, `additional_email`, `city_id`, `firstName`, `lastName`, `birthday`, `avatar`, `password`, `created_at`) VALUES
(1, 'jan@o2.pl', '', 1, 'Janusz', 'Nowak', '2023-01-01', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$VXI2ZWZIQTJOSGIwNm4veQ$q/Gd3FZaTwmzdAchH1E0iUBVWlHH8v8axU3G1s4iDWQ', '2023-05-17 09:11:23'),
(2, 'jan@o2.pl1', '', 1, 'Janusz1', 'Nowak', '2023-01-01', './img/man.png', '$argon2id$v=19$m=65536,t=4,p=1$Mm1Sbnl4NFdzWnhXMUYuWg$mF1qlpCrkF6oLZVkS3DMygpFbbzlT/YKcVYbVZArLD4', '2023-05-17 09:13:14'),
(3, 'k@o2.pl', '', 1, 'Krystyna', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$UW5SMzAubFE2dmd6alQuRA$7EBFd6yaPpYNDPmjawV2lRCB0l8UtDyy/IDaimdEL3o', '2023-05-17 09:30:01'),
(4, 'anna@wp.pl', '', 2, 'Anna', 'Pawlik', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$Z3Z5aHMzeDg3czZzNS9oSw$hfHEhbA7Mx+9s/6Ecp+oUoq5SR4f8CXGU6vOUW9S2YY', '2023-05-17 09:43:48'),
(5, 'k@o2.pl2', NULL, 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$M2hQM255Q1JpaXk0ZjRCeQ$wwLiYj07gcS4H0j03nLl0On4QspLWUD6ffM4klzzEKw', '2023-05-17 09:55:36'),
(6, 'k@o2.pl24', '0', 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$MS5nWTNVNGczSnpFRUZoSw$LUsSdWNyejEDKE5ERH94MmPaIq3GV2FJWleiCWrkWmc', '2023-05-17 09:58:13'),
(7, 'k@o2.pl245', 'k@o2.pl23', 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$c1d5UlFtcHZ6NzZqelJ0YQ$E4nJ0tqUsK+76jMxEOH5++2dqFwpBuHCQPQLiOJcSqA', '2023-05-17 09:59:38'),
(8, 'k@o2.pl2456', '', 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$VGd6RXFwd3ZTUGd5Mk50aA$En9eNnc/F0EAVpPrIAgw42PUAxGhmP6JTrElDZHmEws', '2023-05-17 10:00:27'),
(9, 'k@o2.pl24567', NULL, 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$Z3pvdlR6YnMzY1VTZm5tTg$8AJKI59nwmJRkKWMUlrQBIAx5YLiVMtNSJF8t0i3OiI', '2023-05-17 10:02:48'),
(10, 'k@o2.pl245678', 'k@o2.pl23', 1, 'Krystyna2', 'Nowak2', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$Uy5qRmF3TGdHMkNwVGZWYw$SeeRnD/T4V1n4ww9MCmFwLyKUqJa9bMwtJKr1twyrrU', '2023-05-17 10:03:40'),
(11, 'k@o2.pl3', 'k@o2.pl23', 1, 'Krystyna', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$a0VUR3YwS2ovSGFuZHhhWg$v7nVatg9Av2DgMZVewGBnVwX3vPXKupfZQGdo9EFsts', '2023-05-17 10:55:08'),
(12, 'k@o2.pl9', 'k@o2.pl91', 1, '           j<u>an</u>usz\\\'    ', 'No<b>w</b>ak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$VU5lMmFoMkxMTmJuWDNiUg$KotNZaG/wjGH8UOhUko4n2EzeoNgJOsyxOWDb2iiyjM', '2023-05-17 11:11:36'),
(13, 'pp@02.pl', 'pp@02.pl1', 2, 'Paweł', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$WVZmYWRNdzQ4VHgzZFMvSA$qvO6j3tf767hmpKJPmJnT2BYnCpdH3wT1Ppb2WQ/bJs', '2023-05-24 08:57:52'),
(14, 'anan@o2.pl', 'anan@o2.pl1', 1, 'Anna', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$eDVHL1hYTXJmeUpwZ3BVMQ$omvjmc/KMyJl4rS2MpLh5FJylCTqurz2A7f3jCJtgzo', '2023-05-24 09:28:33'),
(15, 'anan@o2.pl1', 'anan@o2.pl1', 1, 'Anna', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$LjZ0eGRkdW9BQ1NmWFpybw$8XDaVtWBJplu3Y22oBuDlJyE4p+JSe7oe37aiHkhsDs', '2023-05-24 09:31:00'),
(16, 'anan@o2.pl12', 'anan@o2.pl1', 1, 'Anna', 'Nowak', '2023-12-31', './img/woman.png', '$argon2id$v=19$m=65536,t=4,p=1$VGdzUUlwZ0svY3JQVWlWTA$vKfzojhZ18ILxghtNXGv+2klkW78eygDe0CFSvsXyFs', '2023-05-24 09:36:09');

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
