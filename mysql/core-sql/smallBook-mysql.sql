DROP DATABASE IF EXISTS smallBook;
CREATE DATABASE smallBook;
USE smallBook;--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `lang` varchar(100) DEFAULT NULL,
  `publication_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `books` VALUES (1,'SPARQL Tutorial', 42.50, 0.20, 'good', 'en', '2014-06-05 16:47:52'),(2, 'The Semantic Web', 23.00, 0.25, 'bad', 'en', '2011-12-08 11:30:00'), (3, 'Crime and Punishment', 33.50,0.20, 'good', 'en', '2015-09-21 07:23:06'), (4, 'The Logic Book: Introduction, Second Edition',10.00, 0.15, 'good', 'en', '1970-11-05 06:50:00');

