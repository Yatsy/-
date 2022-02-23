SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `autors` (
  `id` int(11) NOT NULL,
  `First_name` varchar(200) NOT NULL,
  `Last_Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `autors` (`id`, `First_name`, `Last_Name`) VALUES
(1, 'Тевис', 'Уолтер'),
(2, 'Вассму', 'Хербьерг'),
(3, 'Герберт', 'Фрэнк');

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `ISBN` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pages` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `ISBN`, `name`, `pages`, `date`) VALUES
(1, '978-5-17-134612-6', 'Ход королевы', 352, '2021-01-01'),
(2, '978-5-386-14012-0', 'Сто лет', 480, '2021-01-01'),
(3, '978-5-17-123226-9', 'Мессия Дюны. Дети Дюны', 736, '2021-01-01'),
(4, '978-5-17-134883-0', 'Еретики Дюны', 608, '2021-01-01');

CREATE TABLE `books_autors` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books_autors` (`id`, `book_id`, `autor_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 3);

CREATE TABLE `books_genre` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `books_genre` (`id`, `book_id`, `genre_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 3, 3),
(4, 4, 3);

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Проза'),
(2, 'История'),
(3, 'Фантастика'),
(4, 'Детектив');


ALTER TABLE `autors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `books_autors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `autor_id` (`autor_id`);

ALTER TABLE `books_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `autors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `books_autors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `books_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `books_autors`
  ADD CONSTRAINT `books_autors_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autors` (`id`),
  ADD CONSTRAINT `books_autors_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

ALTER TABLE `books_genre`
  ADD CONSTRAINT `books_genre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `books_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);
COMMIT;

