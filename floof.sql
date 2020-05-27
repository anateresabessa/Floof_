-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Maio-2020 às 14:10
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `floof`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca_consulta`
--

CREATE TABLE `marca_consulta` (
  `nif` int(11) NOT NULL,
  `preco_consulta` int(11) NOT NULL,
  `data_consulta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `num_consulta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marca_consulta`
--

INSERT INTO `marca_consulta` (`nif`, `preco_consulta`, `data_consulta`, `num_consulta`) VALUES
(222444870, 50, '2020-04-30 14:05:23', 1),
(932109845, 50, '2020-04-24 08:15:48', 2),
(222567390, 60, '2020-05-06 09:50:58', 4),
(265544386, 60, '2020-05-29 12:15:48', 5),
(286538202, 40, '2020-05-13 08:40:05', 7),
(268608239, 50, '2020-06-03 15:00:40', 9),
(245376152, 50, '2020-06-25 11:00:55', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `nome_produto` text NOT NULL,
  `preco` int(11) NOT NULL,
  `tipo_produto` text NOT NULL,
  `codigo` int(11) NOT NULL,
  `Fotografia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`nome_produto`, `preco`, `tipo_produto`, `codigo`, `Fotografia`) VALUES
('Yes!pH Champô anti-insetos para gatos', 7, 'beleza_gato', 2, ''),
('Fluorescente Wave Tropical River para água doce', 10, 'decoration_peixe', 8, ''),
('Royal Canin Maxi Adult', 20, 'comida_cao', 234, ''),
('Eheim Filtro externo de baixo consumo para aquários Ecco pro', 106, 'filtro_peixe', 432, ''),
('Alimento para plecos JBL Novo Pleco', 12, 'comida_peixe', 555, ''),
('Aquário Globe com cachoeira de Tetra - 6,8L', 81, 'aquario_peixe', 986, ''),
('Aquário de vidro Ciano Aqua preto - 15L', 30, 'aquario_peixe', 3542, ''),
('Escova de borracha com pontas metálicas', 7, 'beauty_cao', 4567, ''),
('Pack Yes!pH champô e perfume para cães e gatos', 22, 'beauty_cao', 5760, ''),
('Osso Greenies Grain Free Large raças grandes', 9, 'higiene_cao', 6543, ''),
('Limpador de ouvidos para cães e gatos Otifree', 7, 'higiene_cao', 7777, ''),
('Royal Canin Urinary Care Ração para gatos', 22, 'comida_gato', 8765, ''),
('Fonte para gatos e cães TK-Pet DeliBistró 3 em 1 com comedouro e doseador', 40, 'taca_gato', 9738, ''),
('Epato 1500 Plus protetor hepático', 26, 'medicamento_cao', 9812, ''),
('Royal Canin Babycat Instinctive', 8, 'treats_cao', 9823, ''),
('Termómetro digital para aquários e terrários', 3, 'temperatura_peixe', 9876, ''),
('Figura Gary decoração aquários - Vários modelos', 7, 'decoration_peixe', 12000, ''),
('Comedouro de aço inox TK-Pet I love my dog', 3, 'taca_cao', 12345, ''),
('Caverna para animais de estimação com formato de tartaruga', 36, 'acessorio_gato', 20202, ''),
('Pack de alimentação húmida para cães Breed Up Degustação', 8, 'treats_cao', 57645, ''),
('Trela extensível cães Flexi New Classic Basic Cor Preto', 8, 'acessorio_cao', 66663, ''),
('Tratamento desinfetante para peixes eSHa 2000', 9, 'medicamento_peixe', 66666, ''),
('Cama para cães TK-Pet Iris tipo berço acolchoada cor da ganga deluxe', 32, 'acessorio_cao', 78767, ''),
('Areia de diagnóstico de doenças urinárias gatos Sereno Cristal', 9, 'medicamento_gato', 83738, ''),
('Caixa de transporte para cães homologada IATA TK-Pet Apolo Plus', 68, 'acessorio_gato', 93293, ''),
('Pente para cães Yes!pH multi-cerdas especial pelo comprido', 5, 'beleza_gato', 96380, ''),
('Caixa de transporte para gatos Trendy Cats in Love', 24, 'acessorio_gato', 98652, ''),
('Whiskas Dentabits Dentes e gengivas limpas e sãs', 22, 'treats_gato', 98765, ''),
('Comedouro para cães TK-Pet especial anti-salpicaduras', 5, 'acessorio_cao', 98777, ''),
('Tratamento fungicida para peixes Exit', 5, 'medicamento_peixe', 234567, ''),
('Caixa de transporte para cães homologada IATA TK-Pet Apolo Plus', 68, 'acessorio_cao', 247000, ''),
('Arranhador para Gatos TK-PET Lafayette', 99, 'acessorio_gato', 949494, ''),
('Raiz natural Fingerwood para aquários', 14, 'decoration_peixe', 1234567, ''),
('Insecticida para Gatos', 9, 'medicamento_gato', 3297163, ''),
('Frontline Spot On gatos protecção total', 14, 'medicamento_gato', 5325253, ''),
('Rato de peluche TK-Pet', 3, 'acessorio_gato', 23456789, ''),
('Aquário Globe com cachoeira de Tetra - 6,8L', 81, 'aquario_peixe', 23456790, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `registo`
--

CREATE TABLE `registo` (
  `nome_utilizador` text NOT NULL,
  `nome_animal` text NOT NULL,
  `especie_animal` text NOT NULL,
  `email` varchar(512) NOT NULL,
  `contacto` int(11) NOT NULL DEFAULT 9,
  `password` varchar(512) NOT NULL,
  `morada` varchar(512) NOT NULL,
  `nif` int(11) NOT NULL DEFAULT 9
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `registo`
--

INSERT INTO `registo` (`nome_utilizador`, `nome_animal`, `especie_animal`, `email`, `contacto`, `password`, `morada`, `nif`) VALUES
('Ana Teresa Bessa', 'Nala', 'Gato', 'anateresa@gmail.com', 929873543, 'po2n469n', 'Penafiel', 109837297),
('Guilherme Lima', 'Nemo', 'Peixe', 'lima.guilherme@gmail.com', 934005678, 'jnwqjnfvn', 'Vila Real', 222222297),
('Alexandre Rodrigues', 'Caramelo', 'Cão', 'alexandrerodrigues@sapo.pt', 967548201, '0934fmq934n', 'Coimbra', 222444870),
('António Pires Toste', 'Survivor', 'peixe', 'pirestoste@hotmail.com', 964269363, 'owoncaipwdb9', 'Açores - Terceira', 222567390),
('Francisco Santos', 'Alberto', 'Cão', 'franciscosantos@hotmail.com', 923097008, '9i4imf0q9d', 'Marco de Canaveses', 234569242),
('Inês Carneiro', 'Amora', 'Cão', 'carneiroines@gmail.com', 916548293, 'andwpica9239', 'Lisboa', 245376152),
('Maria Amélia Sousa', 'Dori', 'Peixe', 'ameliasousa@hotmail.com', 9, '09132u5dew', 'Mirandela', 265544386),
('João Sousa', 'Tareco', 'Cão', 'joaosousa@gmail.com', 911175976, '2983r21@jsoanda', 'Algarve', 268608239),
('Raquel Chaves', 'Grace Kelly', 'Gato', 'raquelchaves@gmail.com', 923667543, '294oiufeq', 'Sintra', 286538202),
('Mafalda Sarmento', 'Zoe', 'Cão', 'mafalda@hotmail.com', 912345678, '9bgte4a', 'Guimarães', 912345678),
('Mariana Vieira', 'Risca', 'Gato', 'maiana@gmail.com', 934567892, 'powmsb5', 'Açores - Terceira', 932109845);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produto`
--

CREATE TABLE `venda_produto` (
  `nif` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda_produto`
--

INSERT INTO `venda_produto` (`nif`, `codigo`, `quantidade`) VALUES
(109837297, 98652, 1),
(222222297, 555, 3),
(222222297, 3542, 1),
(222444870, 78767, 1),
(222567390, 555, 6),
(234569242, 7777, 2),
(265544386, 12000, 1),
(286538202, 8765, 1),
(286538202, 83738, 1),
(286538202, 949494, 1),
(912345678, 4567, 2),
(912345678, 93293, 1),
(932109845, 5325253, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `marca_consulta`
--
ALTER TABLE `marca_consulta`
  ADD PRIMARY KEY (`num_consulta`),
  ADD UNIQUE KEY `num_consulta` (`num_consulta`),
  ADD KEY `marca_consulta_fk1` (`nif`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `registo`
--
ALTER TABLE `registo`
  ADD PRIMARY KEY (`nif`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contacto` (`contacto`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `nif` (`nif`);

--
-- Índices para tabela `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD PRIMARY KEY (`nif`,`codigo`),
  ADD KEY `venda_produto_fk2` (`codigo`),
  ADD KEY `venda_produto_fk1` (`nif`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `marca_consulta`
--
ALTER TABLE `marca_consulta`
  MODIFY `num_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23456791;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `marca_consulta`
--
ALTER TABLE `marca_consulta`
  ADD CONSTRAINT `marca_consulta_fk1` FOREIGN KEY (`nif`) REFERENCES `registo` (`nif`);

--
-- Limitadores para a tabela `venda_produto`
--
ALTER TABLE `venda_produto`
  ADD CONSTRAINT `venda_produto_fk1` FOREIGN KEY (`nif`) REFERENCES `registo` (`nif`),
  ADD CONSTRAINT `venda_produto_fk2` FOREIGN KEY (`codigo`) REFERENCES `produto` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
