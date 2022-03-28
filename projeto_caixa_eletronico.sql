-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Mar-2022 às 17:19
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_caixa_eletronico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

CREATE TABLE `contas` (
  `id` int(11) NOT NULL,
  `titular` varchar(100) DEFAULT NULL,
  `agencia` int(11) DEFAULT NULL,
  `conta` int(11) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `saldo` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`id`, `titular`, `agencia`, `conta`, `senha`, `saldo`) VALUES
(1, 'helio', 123, 123, '202cb962ac59075b964b07152d234b70', 2061.16),
(2, 'joao', 345, 23, '202cb962ac59075b964b07152d234b70', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(11) NOT NULL,
  `id_conta` int(11) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data_operacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id`, `id_conta`, `tipo`, `valor`, `data_operacao`) VALUES
(1, 2, 1, 20, '2022-03-25 20:08:02'),
(2, 2, 1, 20, '2022-03-25 20:08:53'),
(3, 2, 1, 20, '2022-03-25 20:09:19'),
(4, 2, 1, 10, '2019-07-07 00:00:00'),
(5, 2, 0, 300, '2022-03-28 11:32:16'),
(6, 1, 0, 200, '2022-03-28 11:36:54'),
(7, 1, 0, 200, '2022-03-28 11:38:46'),
(8, 1, 0, 200, '2022-03-28 11:39:52'),
(9, 1, 0, 200, '2022-03-28 11:40:41'),
(10, 1, 0, 200, '2022-03-28 11:41:20'),
(11, 1, 1, 100, '2022-03-28 11:41:36'),
(12, 1, 1, 100, '2022-03-28 11:43:34'),
(13, 1, 1, 100, '2022-03-28 11:43:35'),
(14, 1, 1, 100, '2022-03-28 11:43:35'),
(15, 1, 1, 100, '2022-03-28 11:43:35'),
(16, 1, 1, 100, '2022-03-28 11:43:35'),
(17, 1, 1, 100, '2022-03-28 11:43:36'),
(18, 1, 1, 100, '2022-03-28 11:43:56'),
(19, 1, 0, 600, '2022-03-28 11:44:10'),
(20, 1, 0, 600, '2022-03-28 11:44:29'),
(21, 1, 0, 50.5, '2022-03-28 11:44:42'),
(22, 1, 1, 12.34, '2022-03-28 11:46:38'),
(23, 1, 0, 500, '2022-03-28 11:49:04'),
(24, 1, 0, 123, '2022-03-28 11:50:46'),
(25, 1, 1, 300, '2022-03-28 11:52:45');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
