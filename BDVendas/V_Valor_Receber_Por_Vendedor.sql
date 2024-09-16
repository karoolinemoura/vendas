-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Ago-2024 às 13:54
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
-- Estrutura para vista `V_Valor_Receber_Por_Vendedor`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`id22402166_aulas_iefp`@`%` SQL SECURITY DEFINER VIEW `V_Valor_Receber_Por_Vendedor`  AS SELECT `v`.`ID_Vendedor` AS `ID_Vendedor`, `v`.`Nome` AS `Nome`, `v`.`codCidade` AS `codCidade`, `v`.`Vencimento` AS `Vencimento`, `v`.`Comissao` AS `Comissao`, `v`.`Vencimento`+ `v`.`Vencimento` * `v`.`Comissao` AS `ValorReceber` FROM `Tab_vendedor` AS `v` ;

--
-- VIEW `V_Valor_Receber_Por_Vendedor`
-- Dados: Nenhum
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
