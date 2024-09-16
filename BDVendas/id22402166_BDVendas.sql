-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Ago-2024 às 13:41
-- Versão do servidor: 10.5.20-MariaDB
-- versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id22402166_karoolinemoura`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Tab_cidade`
--

CREATE TABLE `Tab_cidade` (
  `codCidade` int(11) NOT NULL,
  `descCidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Tab_cidade`
--

INSERT INTO `Tab_cidade` (`codCidade`, `descCidade`) VALUES
(1, 'Porto'),
(2, 'Lisboa'),
(3, 'Coimbra'),
(4, 'Faro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Tab_vendedor`
--

CREATE TABLE `Tab_vendedor` (
  `ID_Vendedor` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `codCidade` int(11) DEFAULT NULL,
  `Vencimento` decimal(10,2) DEFAULT NULL,
  `Comissao` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `Tab_vendedor`
--

INSERT INTO `Tab_vendedor` (`ID_Vendedor`, `Nome`, `codCidade`, `Vencimento`, `Comissao`) VALUES
(5001, 'Andreia Silva', 2, 1000.00, 0.15),
(5002, 'Carla Costa', 1, 1200.00, 0.13),
(5003, 'Carlos Santos', 2, 1100.00, 0.13),
(5004, 'José Castro', 1, 1300.00, 0.14),
(5005, 'João Sousa', 3, 1000.00, 0.15),
(5006, 'Maria Silva', 3, 1100.00, 0.14),
(5007, 'Mário Sousa', 1, 1200.00, 0.13),
(5008, 'Pedro Santos', 2, 1100.00, 0.14);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Tab_cidade`
--
ALTER TABLE `Tab_cidade`
  ADD PRIMARY KEY (`codCidade`);

--
-- Índices para tabela `Tab_vendedor`
--
ALTER TABLE `Tab_vendedor`
  ADD PRIMARY KEY (`ID_Vendedor`),
  ADD KEY `codCidade` (`codCidade`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `Tab_vendedor`
--
ALTER TABLE `Tab_vendedor`
  ADD CONSTRAINT `Tab_vendedor_ibfk_1` FOREIGN KEY (`codCidade`) REFERENCES `Tab_cidade` (`codCidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
