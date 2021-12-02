-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2021 às 22:58
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `integrador`
--
CREATE DATABASE IF NOT EXISTS `integrador` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `integrador`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `usuario_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `data_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`usuario_id`, `email`, `usuario`, `senha`, `data_cadastro`) VALUES
(1, 'baroniluishenrique@gmail.com', '123', '123', '2021-11-20'),
(2, 'aaaaaaa@aaaaa.com', '1234', '1234', '2021-11-20'),
(3, '', '', '', '2021-11-26'),
(4, 'yipnear@gmail.com', 'yipnear', 'escola05', '2021-11-26'),
(5, 'yipnear@gmail.com', 'mememaker', 'escola05', '2021-11-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `Imagem` varchar(200) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `categoria` int(11) NOT NULL,
  `estoque` int(11) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`Imagem`, `codigo`, `nome`, `categoria`, `estoque`, `descricao`, `preco`) VALUES
('mouse1.png', 1, 'Mouse Super Gamer', 1, 10, 'Ac turpis egestas integer eget aliquet nibh praesent tristique magna. Id eu nisl nunc mi ipsum faucibus. Mauris nunc congue nisi vitae. Malesuada bibendum arcu vitae elementum curabitur. At imperdiet dui accumsan sit amet nulla. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse ultrices gravida dictum fusce ut placerat. Consequat nisl vel pretium lectus quam. Mauris ultrices eros in cursus turpis.', 159.99),
('headset1.png', 2, 'Headset Gamer Razer', 2, 12, 'Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse ultrices gravida dictum fusce ut placerat. Consequat nisl vel pretium lectus quam. Mauris ultrices eros in cursus turpis.', 129.99),
('headset2.jpg', 3, 'Headset Gamer Logitech', 2, 13, 'At imperdiet dui accumsan sit amet nulla. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse ultrices gravida dictum fusce ut placerat. Consequat nisl vel pretium lectus quam. Mauris ultrices eros in cursus turpis. Ac turpis egestas integer eget aliquet nibh praesent tristique magna. Id eu nisl nunc mi ipsum faucibus. Mauris nunc congue nisi vitae. Malesuada bibendum arcu vitae elementum curabitur. ', 159.99),
('mouseimagem.png', 4, 'Mouse', 1, 10, 'ABLUEALBEALUEALEB', 999),
('mouseRazer.png', 5, 'Mouse Razer Deathadder', 1, 37, 'Veja com seus próprios olhos o renascimento de um ícone com o Razer DeathAdder V2, um mouse ergonômico projetado com curvas mortais e linhas agressivas, uma arma que se manuseia como nenhuma outra. Com sensor e switches de última geração dentro de um formato mais leve, ele dá forma a uma nova era alto desempenho nos jogos.  Com mais de 10 milhões de unidades do Razer DeathAdder vendidas, o mais celebrado e premiado mouse gamer do mundo conquistou sua popularidade com seu design ergonômico excepcional.', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
