-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2021 às 18:39
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `project_control`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `idproject` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projects`
--

INSERT INTO `projects` (`idproject`, `name`, `budget`, `user`) VALUES
(16, 'Testando Edit', 2000, 'luan'),
(20, 'Test With New User', 120, 'luancpereira'),
(24, 'Teste Manoel', 20000, 'manoel'),
(29, 'Testando Projeto', 2000, 'admin'),
(30, 'Test User Luan', 1200, 'luan');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`iduser`, `user`, `password`) VALUES
(2, 'admin', '$2b$10$tnSiiXMQhBe9vLiOz1qKW.7FEGZNVZTpJaE1Z8YFr/dXG2iVZcH2.'),
(3, 'luan', '$2b$10$hcBqi9/qgiX2YLi4z4vBdOgOPXETz06Hk6odPTZ7W3oN9aRSJpn/W'),
(5, 'manoel', '$2b$10$KZ.FKoxBkYKZvGWb54O4/.CtIogNBh3X3nPXSPJioVk0oPAS35bsO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`idproject`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `projects`
--
ALTER TABLE `projects`
  MODIFY `idproject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
