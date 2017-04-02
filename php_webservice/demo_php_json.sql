CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `fabricantes` (`id`, `nome`) VALUES
(1, 'FORD'),
(2, 'GM'),
(3, 'FIAT'),
(4, 'HONDA');


CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `id_fab` int(11) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `modelos` (`id`, `id_fab`, `descricao`) VALUES
(1, 1, 'KA'),
(2, 1, 'F-250'),
(3, 1, 'FIESTA'),
(4, 1, 'FUSION'),
(5, 1, 'PAMPA'),
(6, 1, 'F-1000'),
(7, 2, 'CORSA'),
(8, 2, 'CELTA'),
(9, 2, 'D-20'),
(10, 2, 'S-10'),
(11, 2, 'PRISMA'),
(12, 2, 'COBALT'),
(13, 2, 'D-40'),
(14, 3, 'UNO'),
(15, 3, 'MAREA'),
(16, 3, 'TIPO'),
(17, 3, 'TEMPRA'),
(18, 3, 'LINEA'),
(19, 3, 'SIENA'),
(20, 3, 'PALIO'),
(21, 4, 'CIVIC'),
(22, 4, 'CITY'),
(23, 4, 'H-RV');

ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fabricante` (`id_fab`);

ALTER TABLE `fabricantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `modelos`
  ADD CONSTRAINT `fk_fabricante` FOREIGN KEY (`id_fab`) REFERENCES `fabricantes` (`id`) ON DELETE CASCADE;