-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jul-2021 às 21:25
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste-akna`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `listaprodutos`
--

CREATE TABLE `listaprodutos` (
  `id` int(11) NOT NULL,
  `mes` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `produto` varchar(255) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `listaprodutos`
--

INSERT INTO `listaprodutos` (`id`, `mes`, `categoria`, `produto`, `quantidade`) VALUES
(1, 'janeiro', 'alimentos', 'Arroz', 200),
(2, 'janeiro', 'alimentos', 'Feijão', 150),
(3, 'janeiro', 'alimentos', 'Pão de forma', 100),
(4, 'janeiro', 'alimentos', 'Nutella', 50),
(5, 'janeiro', 'higiene_pessoal', 'Papel Higiênico', 1000),
(6, 'janeiro', 'higiene_pessoal', 'Creme dental', 500),
(7, 'janeiro', 'higiene_pessoal', 'Sabonete Protex', 500),
(8, 'janeiro', 'higiene_pessoal', 'Escova de dente', 500),
(9, 'janeiro', 'limpeza', 'Desinfetante', 100),
(10, 'janeiro', 'limpeza', 'Veja multiuso', 50),
(11, 'janeiro', 'limpeza', 'Sabão em pó', 50),
(12, 'fevereiro', 'alimentos', 'Geléria de morango', 250),
(13, 'fevereiro', 'alimentos', 'Pão de forma', 50),
(14, 'fevereiro', 'alimentos', 'Queijo minas', 50),
(15, 'fevereiro', 'higiene_pessoal', 'Papel Higiênico', 1000),
(16, 'fevereiro', 'higiene_pessoal', 'Creme dental', 500),
(17, 'fevereiro', 'higiene_pessoal', 'Sabonete Dove', 500),
(18, 'fevereiro', 'limpeza', 'Rodo', 301),
(19, 'fevereiro', 'limpeza', 'Pano de chão', 300),
(20, 'marco', 'alimentos', 'Ovos', 1200),
(21, 'marco', 'alimentos', 'Iogurte', 500),
(22, 'marco', 'alimentos', 'Pasta de Amendoim', 500),
(23, 'marco', 'higiene_pessoal', 'Enxaguante bocal', 500),
(24, 'marco', 'limpeza', 'Detergente', 100),
(25, 'marco', 'limpeza', 'Sabão em pó', 100),
(26, 'abril', 'alimentos', 'Filé Mignon', 350),
(27, 'abril', 'alimentos', 'Chocolate ao leite', 100),
(28, 'abril', 'alimentos', 'Doritos', 50),
(29, 'abril', 'higiene_pessoal', 'Fio dental', 500),
(30, 'abril', 'higiene_pessoal', 'Escova de dente', 500),
(31, 'abril', 'higiene_pessoal', 'Creme dental', 500),
(32, 'abril', 'limpeza', 'Esponja de aço', 100),
(33, 'maio', 'alimentos', 'Morango', 10001),
(34, 'maio', 'alimentos', 'Leite desnatado', 2000),
(35, 'maio', 'alimentos', 'Brócolis', 1000),
(36, 'maio', 'alimentos', 'Tomate', 1000),
(37, 'maio', 'alimentos', 'Arroz integral', 500),
(38, 'maio', 'alimentos', 'Feijão', 500),
(39, 'maio', 'alimentos', 'Filé de frango', 500),
(40, 'maio', 'alimentos', 'Berinjela', 100),
(41, 'maio', 'alimentos', 'Pepino', 100),
(42, 'maio', 'higiene_pessoal', 'Protex', 500),
(43, 'maio', 'higiene_pessoal', 'Papel Higiênico', 500),
(44, 'maio', 'higiene_pessoal', 'Shampoo', 500),
(45, 'maio', 'limpeza', 'Diabo verde', 100),
(46, 'maio', 'limpeza', 'MOP', 100);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `listaprodutos`
--
ALTER TABLE `listaprodutos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `listaprodutos`
--
ALTER TABLE `listaprodutos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
