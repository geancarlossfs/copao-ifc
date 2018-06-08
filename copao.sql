-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Jun-2018 às 22:29
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtir`
--

CREATE TABLE `curtir` (
  `id_time` int(4) DEFAULT NULL,
  `id_usuario` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE `jogador` (
  `id_jogador` int(4) NOT NULL,
  `numero_camisa` varchar(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `gols` int(3) NOT NULL,
  `cartao_amarelo` int(3) NOT NULL,
  `cartao_vermelho` int(3) NOT NULL,
  `id_time` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`id_jogador`, `numero_camisa`, `nome`, `gols`, `cartao_amarelo`, `cartao_vermelho`, `id_time`) VALUES
(1, '7', 'João Vitor', 0, 0, 0, 1),
(2, '18', 'Asaph', 0, 0, 0, 1),
(3, '9', 'Vinicius', 0, 0, 0, 1),
(4, '8', 'Bryan', 0, 0, 0, 1),
(5, '19', 'Leonardo Edenir', 0, 0, 0, 1),
(6, '88', 'Russo', 0, 0, 0, 1),
(7, '99', 'Léo Vieira', 0, 0, 0, 1),
(8, '21', 'Marlon', 0, 0, 0, 1),
(9, '60', 'Christian', 0, 0, 0, 1),
(10, '10', 'André', 0, 0, 0, 1),
(11, '', '', 0, 0, 0, NULL),
(12, '16', 'Henrique', 0, 0, 0, 3),
(13, '27', 'Lucas', 0, 0, 0, 3),
(14, '3', 'Welliton', 0, 0, 0, 3),
(15, '8', 'Ruan', 0, 0, 0, 3),
(16, '5', 'Luciano', 0, 0, 0, 3),
(17, '21', 'Oberdan', 0, 0, 0, 3),
(18, '6', 'Leandro', 0, 0, 0, 3),
(19, '16', 'Henrique', 0, 0, 0, 3),
(20, '27', 'Lucas', 0, 0, 0, 3),
(21, '3', 'Welliton', 0, 0, 0, 3),
(22, '8', 'Ruan', 0, 0, 0, 3),
(23, '5', 'Luciano', 0, 0, 0, 3),
(24, '21', 'Oberdan', 0, 0, 0, 3),
(25, '6', 'Leandro', 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

CREATE TABLE `partida` (
  `id_partida` int(4) NOT NULL,
  `id_time_mandante` int(4) DEFAULT NULL,
  `id_time_visitante` int(4) DEFAULT NULL,
  `data` date NOT NULL,
  `resultado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `time`
--

CREATE TABLE `time` (
  `id_time` int(4) NOT NULL,
  `logo` varchar(25) NOT NULL,
  `nome_time` varchar(25) NOT NULL,
  `pontos` int(4) NOT NULL,
  `cor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `time`
--

INSERT INTO `time` (`id_time`, `logo`, `nome_time`, `pontos`, `cor`) VALUES
(1, '', 'Tigers Outbreak', 0, 'Laranja'),
(2, '', 'Abiduzidos', 0, 'Azul'),
(3, '', 'Solares', 0, 'Amarelo'),
(4, '', 'Vigaristas', 0, 'Roxo'),
(5, '', 'La Casa de Fuego', 0, 'Vermelho'),
(6, '', 'Maori', 0, 'Preto'),
(7, '', 'Servidores', 0, 'Branco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(4) NOT NULL,
  `tipo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(4) NOT NULL,
  `nome_usuario` varchar(25) NOT NULL,
  `id_tipo_usuario` int(4) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `senha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curtir`
--
ALTER TABLE `curtir`
  ADD KEY `id_time` (`id_time`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`id_jogador`),
  ADD KEY `id_time` (`id_time`);

--
-- Indexes for table `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`id_partida`),
  ADD KEY `id_time_mandante` (`id_time_mandante`),
  ADD KEY `id_time_visitante` (`id_time_visitante`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id_time`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jogador`
--
ALTER TABLE `jogador`
  MODIFY `id_jogador` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `partida`
--
ALTER TABLE `partida`
  MODIFY `id_partida` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id_time` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curtir`
--
ALTER TABLE `curtir`
  ADD CONSTRAINT `curtir_ibfk_1` FOREIGN KEY (`id_time`) REFERENCES `time` (`id_time`),
  ADD CONSTRAINT `curtir_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `jogador`
--
ALTER TABLE `jogador`
  ADD CONSTRAINT `jogador_ibfk_1` FOREIGN KEY (`id_time`) REFERENCES `time` (`id_time`);

--
-- Limitadores para a tabela `partida`
--
ALTER TABLE `partida`
  ADD CONSTRAINT `partida_ibfk_1` FOREIGN KEY (`id_time_mandante`) REFERENCES `time` (`id_time`),
  ADD CONSTRAINT `partida_ibfk_2` FOREIGN KEY (`id_time_visitante`) REFERENCES `time` (`id_time`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
