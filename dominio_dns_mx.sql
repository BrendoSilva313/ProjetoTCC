-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/08/2024 às 13:35
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dominio_dns_mx`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dominios_dns`
--

CREATE TABLE `dominios_dns` (
  `id` int(11) NOT NULL,
  `dominio` varchar(255) NOT NULL,
  `dns` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dominios_dns`
--

INSERT INTO `dominios_dns` (`id`, `dominio`, `dns`) VALUES
(1, 'abin.gov.br', 'abin.gov.br'),
(2, 'acessoainformacao.gov.br', 'acessoainformacao.gov.br'),
(3, 'acessoinformacao.gov.br', 'acessoinformacao.gov.br'),
(4, 'acraiz.gov.br', 'acraiz.gov.br'),
(5, 'aeb.gov.br', 'aeb.gov.br'),
(6, 'agenciacamara.gov.br', 'agenciacamara.gov.br'),
(7, 'agespacial.gov.br', 'agespacial.gov.br'),
(8, 'agricultura.gov.br', 'agricultura.gov.br'),
(9, 'agritempo.gov.br', 'agritempo.gov.br'),
(10, 'agro.gov.br', 'agro.gov.br'),
(11, 'agrolivre.gov.br', 'agrolivre.gov.br'),
(12, 'almoxarifadovirtual.gov.br', 'almoxarifadovirtual.gov.br'),
(13, 'amapa.gov.br', 'amapa.gov.br'),
(14, 'ana.gov.br', 'ana.gov.br'),
(15, 'anapost.gov.br', 'anapost.gov.br'),
(16, 'anatel.gov.br', 'anatel.gov.br'),
(17, 'ancine.gov.br', 'ancine.gov.br'),
(18, 'aneel.gov.br', 'aneel.gov.br'),
(19, 'anp.gov.br', 'anp.gov.br'),
(20, 'ans.gov.br', 'ans.gov.br'),
(21, 'anvisa.gov.br', 'anvisa.gov.br'),
(22, 'api.gov.br', 'api.gov.br'),
(23, 'app.gov.br', 'app.gov.br'),
(24, 'aprendendoaexportar.gov.br', 'aprendendoaexportar.gov.br'),
(25, 'artesanatobrasileiro.gov.br', 'artesanatobrasileiro.gov.br'),
(26, 'avancar.gov.br', 'avancar.gov.br'),
(27, 'avasus.gov.br', 'avasus.gov.br'),
(28, 'avisabr.gov.br', 'avisabr.gov.br'),
(29, 'bn.gov.br', 'bn.gov.br'),
(30, 'brasil.gov.br', 'brasil.gov.br'),
(31, 'brasildigital.gov.br', 'brasildigital.gov.br'),
(32, 'caged.gov.br', 'caged.gov.br'),
(33, 'camara.gov.br', 'camara.gov.br'),
(34, 'camaradosdeputados.gov.br', 'camaradosdeputados.gov.br'),
(35, 'camex.gov.br', 'camex.gov.br'),
(36, 'casacivil.gov.br', 'casacivil.gov.br'),
(37, 'casamilitar.gov.br', 'casamilitar.gov.br'),
(38, 'cbh.gov.br', 'cbh.gov.br'),
(39, 'ccom.gov.br', 'ccom.gov.br'),
(40, 'cd.gov.br', 'cd.gov.br'),
(41, 'ceasa.gov.br', 'ceasa.gov.br'),
(42, 'cef.gov.br', 'cef.gov.br'),
(43, 'cepesc.gov.br', 'cepesc.gov.br'),
(44, 'cgu.gov.br', 'cgu.gov.br'),
(45, 'cnj.gov.br', 'cnj.gov.br'),
(46, 'codomar.gov.br', 'codomar.gov.br'),
(47, 'comexresponde.gov.br', 'comexresponde.gov.br'),
(48, 'compraspublicasbrasil.gov.br', 'compraspublicasbrasil.gov.br'),
(49, 'conab.gov.br', 'conab.gov.br'),
(50, 'conecta.gov.br', 'conecta.gov.br'),
(51, 'contaspublicas.gov.br', 'contaspublicas.gov.br'),
(52, 'convenios.gov.br', 'convenios.gov.br'),
(53, 'coren-sp.gov.br', 'coren-sp.gov.br'),
(54, 'corenpr.gov.br', 'corenpr.gov.br'),
(55, 'corensp.gov.br', 'corensp.gov.br'),
(56, 'corregedorias.gov.br', 'corregedorias.gov.br'),
(57, 'correio.gov.br', 'correio.gov.br'),
(58, 'correios.gov.br', 'correios.gov.br'),
(59, 'crmvmg.gov.br', 'crmvmg.gov.br'),
(60, 'crmvsp.gov.br', 'crmvsp.gov.br'),
(61, 'ctir.gov.br', 'ctir.gov.br'),
(62, 'cultura.gov.br', 'cultura.gov.br'),
(63, 'dados.gov.br', 'dados.gov.br'),
(64, 'defesa.gov.br', 'defesa.gov.br'),
(65, 'denatran.gov.br', 'denatran.gov.br'),
(66, 'deputado.gov.br', 'deputado.gov.br'),
(67, 'desenrola.gov.br', 'desenrola.gov.br'),
(68, 'desenvolvimento.gov.br', 'desenvolvimento.gov.br'),
(69, 'dni.gov.br', 'dni.gov.br'),
(70, 'dpu.gov.br', 'dpu.gov.br'),
(71, 'dte.gov.br', 'dte.gov.br'),
(72, 'e-post.gov.br', 'e-post.gov.br'),
(73, 'e-sic.gov.br', 'e-sic.gov.br'),
(74, 'economia.gov.br', 'economia.gov.br'),
(75, 'ect.gov.br', 'ect.gov.br'),
(76, 'edemocracia.gov.br', 'edemocracia.gov.br'),
(77, 'embrapa.gov.br', 'embrapa.gov.br'),
(78, 'enap.gov.br', 'enap.gov.br'),
(79, 'environment.gov.br', 'environment.gov.br'),
(80, 'epl.gov.br', 'epl.gov.br'),
(81, 'epost.gov.br', 'epost.gov.br'),
(82, 'esic.gov.br', 'esic.gov.br'),
(83, 'esmpu.gov.br', 'esmpu.gov.br'),
(84, 'eufiscalizo.gov.br', 'eufiscalizo.gov.br'),
(85, 'exportadoresbrasilenos.gov.br', 'exportadoresbrasilenos.gov.br'),
(86, 'fat.gov.br', 'fat.gov.br'),
(87, 'fazenda.gov.br', 'fazenda.gov.br'),
(88, 'fnde.gov.br', 'fnde.gov.br'),
(89, 'forumpermanente.gov.br', 'forumpermanente.gov.br'),
(90, 'gestao.gov.br', 'gestao.gov.br'),
(91, 'governo.gov.br', 'governo.gov.br'),
(92, 'governoeletronico.gov.br', 'governoeletronico.gov.br'),
(93, 'gsi.gov.br', 'gsi.gov.br'),
(94, 'icpbrasil.gov.br', 'icpbrasil.gov.br'),
(95, 'in.gov.br', 'in.gov.br'),
(96, 'ines.gov.br', 'ines.gov.br '),
(97, 'info.gov.br', 'info.gov.br'),
(98, 'informacao.gov.br', 'informacao.gov.br'),
(99, 'infraero.gov.br', 'infraero.gov.br'),
(100, 'infrasa.gov.br', 'infrasa.gov.br'),
(101, 'inmet.gov.br', 'inmet.gov.br'),
(102, 'inova.gov.br', 'inova.gov.br'),
(103, 'interlegis.gov.br', 'interlegis.gov.br'),
(104, 'investidor.gov.br', 'investidor.gov.br'),
(105, 'ipea.gov.br', 'ipea.gov.br'),
(106, 'ipeadata.gov.br', 'ipeadata.gov.br'),
(107, 'itamaraty.gov.br', 'itamaraty.gov.br'),
(108, 'jfal.gov.br', 'jfal.gov.br'),
(109, 'jfce.gov.br', 'jfce.gov.br'),
(110, 'jfpr.gov.br', 'jfpr.gov.br'),
(111, 'jfsc.gov.br', 'jfsc.gov.br'),
(112, 'jfse.gov.br', 'jfse.gov.br'),
(113, 'lai.gov.br', 'lai.gov.br'),
(114, 'lexml.gov.br', 'lexml.gov.br'),
(115, 'logisticabrasil.gov.br', 'logisticabrasil.gov.br'),
(116, 'logisticsbrazil.gov.br', 'logisticsbrazil.gov.br'),
(117, 'ma.gov.br', 'ma.gov.br'),
(118, 'mcom.gov.br', 'mcom.gov.br'),
(119, 'mcti.gov.br', 'mcti.gov.br'),
(120, 'mda.gov.br', 'mda.gov.br'),
(121, 'mdic.gov.br', 'mdic.gov.br'),
(122, 'mercosul.gov.br', 'mercosul.gov.br'),
(123, 'mestradoprofissional.gov.br', 'mestradoprofissional.gov.br'),
(124, 'mma.gov.br', 'mma.gov.br'),
(125, 'mme.gov.br', 'mme.gov.br'),
(126, 'mpa.gov.br', 'mpa.gov.br'),
(127, 'mre.gov.br', 'mre.gov.br'),
(128, 'mte.gov.br', 'mte.gov.br'),
(129, 'mtecbo.gov.br', 'mtecbo.gov.br'),
(130, 'mtp.gov.br', 'mtp.gov.br'),
(131, 'mtps.gov.br', 'mtps.gov.br'),
(132, 'nuvem.gov.br', 'nuvem.gov.br'),
(133, 'opeixeeaartedepescar.gov.br', 'opeixeeaartedepescar.gov.br'),
(134, 'ouvidoria.gov.br', 'ouvidoria.gov.br'),
(135, 'pac.gov.br', 'pac.gov.br'),
(136, 'paineis.gov.br', 'paineis.gov.br'),
(137, 'pesquisa.gov.br', 'pesquisa.gov.br'),
(138, 'planalto.gov.br', 'planalto.gov.br'),
(139, 'planejamento.gov.br', 'planejamento.gov.br'),
(140, 'plataformamaisbrasil.gov.br', 'plataformamaisbrasil.gov.br'),
(141, 'plenarinho.gov.br', 'plenarinho.gov.br'),
(142, 'policiafederal.gov.br', 'policiafederal.gov.br'),
(143, 'portalconsular.gov.br', 'portalconsular.gov.br'),
(144, 'portalcoren-rs.gov.br', 'portalcoren-rs.gov.br'),
(145, 'portaldasaguas.gov.br', 'portaldasaguas.gov.br'),
(146, 'portaldatransparencia.gov.br', 'portaldatransparencia.gov.br'),
(147, 'portalmaisbrasil.gov.br', 'portalmaisbrasil.gov.br'),
(148, 'portaltransparencia.gov.br', 'portaltransparencia.gov.br'),
(149, 'povosindigenas.gov.br', 'povosindigenas.gov.br'),
(150, 'presidencia.gov.br', 'presidencia.gov.br'),
(151, 'prf.gov.br', 'prf.gov.br'),
(152, 'processoeletronico.gov.br', 'processoeletronico.gov.br'),
(153, 'programaarpa.gov.br', 'programaarpa.gov.br'),
(154, 'protegeer.gov.br', 'protegeer.gov.br'),
(155, 'publicgovernance.gov.br', 'publicgovernance.gov.br'),
(156, 'radiocamara.gov.br', 'radiocamara.gov.br'),
(157, 'recadastramento.gov.br', 'recadastramento.gov.br'),
(158, 'receita.gov.br', 'receita.gov.br'),
(159, 'receitafederal.gov.br', 'receitafederal.gov.br'),
(160, 'rede.gov.br', 'rede.gov.br'),
(161, 'redecontrole.gov.br', 'redecontrole.gov.br'),
(162, 'rededecontrole.gov.br', 'rededecontrole.gov.br'),
(163, 'reformapostal.gov.br', 'reformapostal.gov.br'),
(164, 'relacoesexteriores.gov.br', 'relacoesexteriores.gov.br'),
(165, 'rexp.gov.br', 'rexp.gov.br'),
(166, 'rfb.gov.br', 'rfb.gov.br'),
(167, 'ro.gov.br', 'ro.gov.br'),
(168, 'sc.gov.br', 'sc.gov.br'),
(169, 'scnet.gov.br', 'scnet.gov.br'),
(170, 'secgeral.gov.br', 'secgeral.gov.br'),
(171, 'secretaria-geral.gov.br', 'secretaria-geral.gov.br'),
(172, 'secretariadegoverno.gov.br', 'secretariadegoverno.gov.br'),
(173, 'secretariageral.gov.br', 'secretariageral.gov.br'),
(174, 'segov.gov.br', 'segov.gov.br'),
(175, 'seiatos.gov.br', 'seiatos.gov.br'),
(176, 'sembarreiras.gov.br', 'sembarreiras.gov.br'),
(177, 'seminariobrasildigital.gov.br', 'seminariobrasildigital.gov.br'),
(178, 'servicos.gov.br', 'servicos.gov.br'),
(179, 'servidor.gov.br', 'servidor.gov.br'),
(180, 'sg.gov.br', 'sg.gov.br'),
(181, 'sgov.gov.br', 'sgov.gov.br'),
(182, 'sic.gov.br', 'sic.gov.br'),
(183, 'sinir.gov.br', 'sinir.gov.br'),
(184, 'sisbin.gov.br', 'sisbin.gov.br'),
(185, 'sisgen.gov.br', 'sisgen.gov.br'),
(186, 'sisp.gov.br', 'sisp.gov.br'),
(187, 'sistema.gov.br', 'sistema.gov.br'),
(188, 'snirh.gov.br', 'snirh.gov.br'),
(189, 'snisb.gov.br', 'snisb.gov.br'),
(190, 'softwarepublico.gov.br', 'softwarepublico.gov.br'),
(191, 'sp-trt.gov.br', 'sp-trt.gov.br'),
(192, 'sptrt.gov.br', 'sptrt.gov.br'),
(193, 'startuppoint.gov.br', 'startuppoint.gov.br'),
(194, 'stm.gov.br', 'stm.gov.br'),
(195, 'taxigov.gov.br', 'taxigov.gov.br'),
(196, 'taxigov2.gov.br', 'taxigov2.gov.br'),
(197, 'tcu.gov.br', 'tcu.gov.br'),
(198, 'terraclass.gov.br', 'terraclass.gov.br'),
(199, 'ticontrole.gov.br', 'ticontrole.gov.br'),
(200, 'tjmg.gov.br', 'tjmg.gov.br'),
(201, 'to.gov.br', 'to.gov.br'),
(202, 'trabalho.gov.br', 'trabalho.gov.br'),
(203, 'transparencia.gov.br', 'transparencia.gov.br'),
(204, 'transparenciapublica.gov.br', 'transparenciapublica.gov.br'),
(205, 'tribunaiscplp.gov.br', 'tribunaiscplp.gov.br'),
(206, 'trt-02.gov.br', 'trt-02.gov.br'),
(207, 'trt-sp.gov.br', 'trt-sp.gov.br'),
(208, 'trt01.gov.br', 'trt01.gov.br'),
(209, 'trt02.gov.br', 'trt02.gov.br'),
(210, 'trt05.gov.br', 'trt05.gov.br'),
(211, 'trt12.gov.br', 'trt12.gov.br'),
(212, 'trt19.gov.br', 'trt19.gov.br'),
(213, 'trt2.gov.br', 'trt2.gov.br'),
(214, 'trt23.gov.br', 'trt23.gov.br'),
(215, 'trt3.gov.br', 'trt3.gov.br'),
(216, 'trtrio.gov.br', 'trtrio.gov.br'),
(217, 'trtsp.gov.br', 'trtsp.gov.br'),
(218, 'trtwap.gov.br', 'trtwap.gov.br'),
(219, 'turismo.gov.br', 'turismo.gov.br'),
(220, 'unasus.gov.br', 'unasus.gov.br'),
(221, 'vice-presidencia.gov.br', 'vice-presidencia.gov.br'),
(222, 'vicepresidenciadarepublica.gov.br', 'vicepresidenciadarepublica.gov.br'),
(223, 'vitrinedoexportador.gov.br', 'vitrinedoexportador.gov.br'),
(224, 'vlibras.gov.br', 'vlibras.gov.br'),
(225, 'vls.gov.br', 'vls.gov.br'),
(226, 'webambiente.gov.br', 'webambiente.gov.br'),
(227, 'wikilegis.gov.br', 'wikilegis.gov.br'),
(228, 'www.gov.br', 'www.gov.br'),
(229, 'xn--avanar-zua.gov.br', 'xn--avanar-zua.gov.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mx_records`
--

CREATE TABLE `mx_records` (
  `id` int(11) NOT NULL,
  `dominio_id` int(11) DEFAULT NULL,
  `mx_record` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mx_records`
--

INSERT INTO `mx_records` (`id`, `dominio_id`, `mx_record`, `ip`, `cidade`, `regiao`, `pais`) VALUES
(1, 1, 'mx02.abin.gov.br.', '200.198.220.17', 'Brasília', 'Federal District', 'BR'),
(2, 1, 'mx01.abin.gov.br.', '200.198.220.7', 'Brasília', 'Federal District', 'BR'),
(3, 4, 'mx.acraiz.gov.br.', '200.130.30.6', 'Brasília', 'Federal District', 'BR'),
(4, 4, 'mx.acraiz.gov.br.', '200.130.30.6', 'Brasília', 'Federal District', 'BR'),
(5, 5, 'aeb-gov-br.mail.protection.outlook.com.', '52.101.42.9', 'Moses Lake', 'Washington', 'US'),
(6, 8, 'cluster1.us.messagelabs.com.', '67.219.247.204', 'San Jose', 'California', 'US'),
(7, 8, 'cluster1a.us.messagelabs.com.', '52.207.128.88', 'Ashburn', 'Virginia', 'US'),
(8, 10, 'cluster1a.us.messagelabs.com.', '52.207.128.88', 'Ashburn', 'Virginia', 'US'),
(9, 10, 'cluster1.us.messagelabs.com.', '67.219.247.204', 'San Jose', 'California', 'US'),
(10, 13, 'alt4.aspmx.l.google.com.', '142.251.9.27', 'Hamburg', 'Hamburg', 'DE'),
(11, 13, 'aspmx.l.google.com.', '64.233.190.26', 'Santiago', 'Santiago Metropolitan', 'CL'),
(12, 13, 'alt1.aspmx.l.google.com.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(13, 13, 'alt3.aspmx.l.google.com.', '142.250.153.26', 'Delfzijl', 'Groningen', 'NL'),
(14, 13, 'alt2.aspmx.l.google.com.', '142.250.27.27', 'Amsterdam', 'North Holland', 'NL'),
(15, 14, 'ana-gov-br.mail.protection.outlook.com.', '52.101.41.4', 'San Jose', 'California', 'US'),
(16, 16, 'anatel-gov-br.in.tmes.trendmicro.com.', '18.208.22.77', 'Ashburn', 'Virginia', 'US'),
(17, 17, 'ancine-gov-br.mail.protection.outlook.com.', '52.101.41.21', 'San Jose', 'California', 'US'),
(18, 18, 'coulomb.aneel.gov.br.', '200.198.220.179', 'Brasília', 'Federal District', 'BR'),
(19, 18, 'master.aneel.gov.br.', '200.198.220.178', 'Brasília', 'Federal District', 'BR'),
(20, 18, 'agent.aneel.gov.br.', '200.198.220.179', 'Brasília', 'Federal District', 'BR'),
(21, 18, 'mailsrv.aneel.gov.br.', '200.198.220.179', 'Brasília', 'Federal District', 'BR'),
(22, 19, 'anp-gov-br.mail.protection.outlook.com.', '52.101.41.56', 'San Jose', 'California', 'US'),
(23, 20, 'ans-gov-br.mail.protection.outlook.com.', '52.101.9.2', 'Ashburn', 'Virginia', 'US'),
(24, 21, 'cluster1a.us.messagelabs.com.', '52.207.128.88', 'Ashburn', 'Virginia', 'US'),
(25, 21, 'cluster1.us.messagelabs.com.', '67.219.247.204', 'San Jose', 'California', 'US'),
(26, 23, 'protection.serpro.gov.br.', '161.148.50.251', 'Brasília', 'Federal District', 'BR'),
(27, 29, 'mail.bn.gov.br.', '177.223.196.192', 'Rio de Janeiro', 'Rio de Janeiro', 'BR'),
(28, 29, 'correio.bn.gov.br.', '177.223.196.154', 'Rio de Janeiro', 'Rio de Janeiro', 'BR'),
(29, 29, 'bn-gov-br.mail.protection.outlook.com.', '52.101.200.0', 'Rio de Janeiro', 'Rio de Janeiro', 'BR'),
(30, 30, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(31, 30, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(32, 33, 'souzinha2.camara.gov.br.', '200.219.133.162', 'Brasília', 'Federal District', 'BR'),
(33, 33, 'souzinha1.camara.gov.br.', '200.219.133.161', 'Brasília', 'Federal District', 'BR'),
(34, 33, 'souzinha3.camara.gov.br.', '200.219.133.163', 'Brasília', 'Federal District', 'BR'),
(35, 36, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(36, 36, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(37, 37, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(38, 37, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(39, 38, 'sucuri.snisb.gov.br.', '177.15.65.152', 'Brasília', 'Federal District', 'BR'),
(40, 38, 'bonito.snisb.gov.br.', '177.15.65.189', 'Brasília', 'Federal District', 'BR'),
(41, 42, 'hercules1.cef.gov.br.', '200.201.166.106', 'Rio de Janeiro', 'Rio de Janeiro', 'BR'),
(42, 43, 'mx02.abin.gov.br.', '200.198.220.17', 'Brasília', 'Federal District', 'BR'),
(43, 43, 'mx01.abin.gov.br.', '200.198.220.7', 'Brasília', 'Federal District', 'BR'),
(44, 44, 'cgu-gov-br.mail.protection.outlook.com.', '52.101.10.5', 'Boydton', 'Virginia', 'US'),
(45, 49, 'mailin.conab.gov.br.', '160.238.29.68', 'Brasília', 'Federal District', 'BR'),
(46, 53, 'corensp-gov-br01c.mail.protection.outlook.com.', '52.101.10.5', 'Boydton', 'Virginia', 'US'),
(47, 54, 'aspmx.l.google.com.', '142.251.0.26', 'Santiago', 'Santiago Metropolitan', 'CL'),
(48, 54, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(49, 54, 'alt3.aspmx.l.google.com.', '142.250.153.26', 'Delfzijl', 'Groningen', 'NL'),
(50, 54, 'alt1.aspmx.l.google.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(51, 54, 'alt4.aspmx.l.google.com.', '142.251.9.27', 'Hamburg', 'Hamburg', 'DE'),
(52, 55, 'ec2-54-232-52-172.sa-east-1.compute.amazonaws.com.', '54.232.52.172', 'São Paulo', 'São Paulo', 'BR'),
(53, 55, 'mail.corensp.gov.br.', '201.49.109.39', 'São Paulo', 'São Paulo', 'BR'),
(54, 59, 'lastmx.spamexperts.net.', '38.89.254.156', 'Elk Grove Village', 'Illinois', 'US'),
(55, 59, 'mx.spamexperts.com.', '38.89.254.156', 'Elk Grove Village', 'Illinois', 'US'),
(56, 59, 'fallbackmx.spamexperts.eu.', '38.111.198.185', 'El Segundo', 'California', 'US'),
(57, 60, 'mx.a.locaweb.com.br.', '186.202.4.42', 'São Paulo', 'São Paulo', 'BR'),
(58, 60, 'mx.b.locaweb.com.br.', '177.153.23.242', 'São Paulo', 'São Paulo', 'BR'),
(59, 60, 'mx.core.locaweb.com.br.', '177.153.23.241', 'São Paulo', 'São Paulo', 'BR'),
(60, 60, 'mx.jk.locaweb.com.br.', '200.234.204.130', 'São Paulo', 'São Paulo', 'BR'),
(61, 61, 'luminol.ctir.gov.br.', '200.160.7.164', 'São Paulo', 'São Paulo', 'BR'),
(62, 62, 'cultura-gov-br.mail.protection.outlook.com.', '52.101.40.1', 'Cheyenne', 'Wyoming', 'US'),
(63, 63, 'protection.serpro.gov.br.', '161.148.50.251', 'Brasília', 'Federal District', 'BR'),
(64, 64, 'silicio.defesa.gov.br.', '200.198.192.140', 'Brasília', 'Federal District', 'BR'),
(65, 65, 'mail02.transportes.gov.br.', '200.198.212.165', 'Brasília', 'Federal District', 'BR'),
(66, 65, 'mail01.transportes.gov.br.', '200.198.212.164', 'Brasília', 'Federal District', 'BR'),
(67, 66, 'souzinha3.camara.gov.br.', '200.219.133.163', 'Brasília', 'Federal District', 'BR'),
(68, 66, 'souzinha1.camara.gov.br.', '200.219.133.161', 'Brasília', 'Federal District', 'BR'),
(69, 66, 'souzinha2.camara.gov.br.', '200.219.133.162', 'Brasília', 'Federal District', 'BR'),
(70, 70, 'mail.dpu.def.br.', '201.33.171.133', 'Duque de Caxias', 'Rio de Janeiro', 'BR'),
(71, 70, 'dpu-gov-br.mail.protection.outlook.com.', '52.101.194.4', 'Chicago', 'Illinois', 'US'),
(72, 71, 'mx01.abin.gov.br.', '200.198.220.7', 'Brasília', 'Federal District', 'BR'),
(73, 71, 'mx02.abin.gov.br.', '200.198.220.17', 'Brasília', 'Federal District', 'BR'),
(74, 74, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(75, 74, 'economia-mx-balancer.mlicloud.com.', '187.108.197.247', 'São Paulo', 'São Paulo', 'BR'),
(76, 74, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(77, 78, 'alt1.aspmx.l.google.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(78, 78, 'aspmx.l.google.com.', '142.251.0.26', 'Santiago', 'Santiago Metropolitan', 'CL'),
(79, 78, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(80, 78, 'aspmx3.googlemail.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(81, 78, 'aspmx2.googlemail.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(82, 80, 'epl-gov-br.mail.protection.outlook.com.', '52.101.41.56', 'San Jose', 'California', 'US'),
(83, 87, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(84, 87, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(85, 87, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(86, 87, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(87, 88, 'fnde-gov-br.mail.protection.outlook.com.', '52.101.11.13', 'San Antonio', 'Texas', 'US'),
(88, 90, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(89, 90, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(90, 90, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(91, 90, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(92, 91, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(93, 91, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(94, 93, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(95, 93, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(96, 94, 'mx.acraiz.gov.br.', '200.130.30.6', 'Brasília', 'Federal District', 'BR'),
(97, 94, 'mx.icpbrasil.gov.br.', '200.130.30.6', 'Brasília', 'Federal District', 'BR'),
(98, 95, 'asmg.in.gov.br.', '200.198.216.24', 'Brasília', 'Federal District', 'BR'),
(99, 96, 'aspmx.l.google.com.', '142.251.0.26', 'Santiago', 'Santiago Metropolitan', 'CL'),
(100, 96, 'alt1.aspmx.l.google.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(101, 96, 'alt4.aspmx.l.google.com.', '142.251.9.27', 'Hamburg', 'Hamburg', 'DE'),
(102, 96, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(103, 96, 'alt3.aspmx.l.google.com.', '142.250.153.26', 'Delfzijl', 'Groningen', 'NL'),
(104, 99, 'mail.infraero.gov.br.', '45.171.50.29', 'Brasília', 'Federal District', 'BR'),
(105, 100, 'infrasa-gov-br.mail.protection.outlook.com.', '52.101.9.12', 'Ashburn', 'Virginia', 'US'),
(106, 101, 'hermes.inmet.gov.br.', '200.130.106.242', 'Brasília', 'Federal District', 'BR'),
(107, 103, 'naumailmtain2.interlegis.leg.br.', '201.54.51.145', 'São Paulo', 'São Paulo', 'BR'),
(108, 103, 'naumailmtain3.interlegis.leg.br.', '201.54.51.147', 'São Paulo', 'São Paulo', 'BR'),
(109, 103, 'naumailmtain1.interlegis.leg.br.', '201.54.51.144', 'São Paulo', 'São Paulo', 'BR'),
(110, 105, 'ipea.in.tmes.trendmicro.com.', '18.208.22.80', 'Ashburn', 'Virginia', 'US'),
(111, 106, 'mailmaster4.ipea.gov.br.', '45.171.102.3', 'Brasília', 'Federal District', 'BR'),
(112, 107, 'itamaraty-gov-br.mail.protection.outlook.com.', '52.101.198.1', 'São Paulo', 'São Paulo', 'BR'),
(113, 109, 'jfce-gov-br.mail.protection.outlook.com.', '52.101.198.1', 'São Paulo', 'São Paulo', 'BR'),
(114, 110, 'ALT1.ASPMX.L.GOOGLE.COM.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(115, 110, 'ALT4.ASPMX.L.GOOGLE.COM.', '142.251.9.27', 'Hamburg', 'Hamburg', 'DE'),
(116, 110, 'ALT2.ASPMX.L.GOOGLE.COM.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(117, 110, 'ASPMX.L.GOOGLE.COM.', '142.251.0.26', 'Santiago', 'Santiago Metropolitan', 'CL'),
(118, 110, 'ALT3.ASPMX.L.GOOGLE.COM.', '142.250.153.26', 'Delfzijl', 'Groningen', 'NL'),
(119, 117, 'mx1.srvmail.ma.gov.br.', '181.191.91.198', 'São Luís', 'Maranhão', 'BR'),
(120, 118, 'mcom-gov-br.mail.protection.outlook.com.', '52.101.9.5', 'Ashburn', 'Virginia', 'US'),
(121, 119, 'mcti-gov-br.mail.protection.outlook.com.', '52.101.198.0', 'São Paulo', 'São Paulo', 'BR'),
(122, 120, 'cluster1a.us.messagelabs.com.', '52.207.128.88', 'Ashburn', 'Virginia', 'US'),
(123, 120, 'cluster1.us.messagelabs.com.', '67.219.246.215', 'Ashburn', 'Virginia', 'US'),
(124, 121, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(125, 121, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(126, 121, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(127, 121, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(128, 123, 'mailmaster4.ipea.gov.br.', '45.171.102.3', 'Brasília', 'Federal District', 'BR'),
(129, 124, 'mail.mma.gov.br.', '45.231.205.18', 'Brasília', 'Federal District', 'BR'),
(130, 124, 'mail01.mma.gov.br.', '45.231.205.19', 'Brasília', 'Federal District', 'BR'),
(131, 124, 'mma-gov-br.mail.protection.outlook.com.', '52.101.10.6', 'Boydton', 'Virginia', 'US'),
(132, 125, 'mail.mme.gov.br.', '200.9.252.22', 'Brasília', 'Federal District', 'BR'),
(133, 125, 'correio2.mme.gov.br.', '200.9.252.142', 'Brasília', 'Federal District', 'BR'),
(134, 126, 'cluster1a.us.messagelabs.com.', '52.207.128.88', 'Ashburn', 'Virginia', 'US'),
(135, 126, 'cluster1.us.messagelabs.com.', '67.219.246.215', 'Ashburn', 'Virginia', 'US'),
(136, 127, 'mailmx.mre.gov.br.', '189.85.94.116', 'Brasília', 'Federal District', 'BR'),
(137, 128, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(138, 128, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(139, 128, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(140, 128, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(141, 130, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(142, 130, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(143, 130, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(144, 130, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(145, 138, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(146, 138, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(147, 139, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(148, 139, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(149, 139, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(150, 139, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(151, 141, 'souzinha1.camara.gov.br.', '200.219.133.161', 'Brasília', 'Federal District', 'BR'),
(152, 141, 'souzinha3.camara.gov.br.', '200.219.133.163', 'Brasília', 'Federal District', 'BR'),
(153, 141, 'souzinha2.camara.gov.br.', '200.219.133.162', 'Brasília', 'Federal District', 'BR'),
(154, 144, 'alt4.aspmx.l.google.com.', '142.251.9.26', 'Hamburg', 'Hamburg', 'DE'),
(155, 144, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(156, 144, 'aspmx.l.google.com.', '142.250.0.27', 'Santiago', 'Santiago Metropolitan', 'CL'),
(157, 144, 'alt1.aspmx.l.google.com.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(158, 144, 'alt3.aspmx.l.google.com.', '142.250.153.27', 'Delfzijl', 'Groningen', 'NL'),
(159, 145, 'sucuri.snisb.gov.br.', '177.15.65.152', 'Brasília', 'Federal District', 'BR'),
(160, 145, 'bonito.snisb.gov.br.', '177.15.65.189', 'Brasília', 'Federal District', 'BR'),
(161, 149, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(162, 149, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(163, 149, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(164, 149, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(165, 150, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(166, 150, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(167, 151, 'alt4.aspmx.l.google.com.', '142.251.9.26', 'Hamburg', 'Hamburg', 'DE'),
(168, 151, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(169, 151, 'aspmx.l.google.com.', '142.250.0.27', 'Santiago', 'Santiago Metropolitan', 'CL'),
(170, 151, 'alt3.aspmx.l.google.com.', '142.250.153.27', 'Delfzijl', 'Groningen', 'NL'),
(171, 151, 'alt1.aspmx.l.google.com.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(172, 161, 'redecontrole-gov-br.mail.protection.outlook.com.', '52.101.10.8', 'Boydton', 'Virginia', 'US'),
(173, 162, 'rededecontrole-gov-br.mail.protection.outlook.com.', '52.101.194.19', 'Chicago', 'Illinois', 'US'),
(174, 166, 'rfb-gov-br.mail.protection.outlook.com.', '52.101.42.10', 'Moses Lake', 'Washington', 'US'),
(175, 168, 'ALT2.ASPMX.L.GOOGLE.COM.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(176, 168, 'ASPMX2.GOOGLEMAIL.COM.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(177, 168, 'ALT1.ASPMX.L.GOOGLE.COM.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(178, 168, 'ASPMX3.GOOGLEMAIL.COM.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(179, 168, 'ASPMX.L.GOOGLE.COM.', '142.250.0.27', 'Santiago', 'Santiago Metropolitan', 'CL'),
(180, 170, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(181, 170, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(182, 171, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(183, 171, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(184, 172, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(185, 172, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(186, 173, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(187, 173, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(188, 174, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(189, 174, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(190, 178, 'protection.serpro.gov.br.', '161.148.50.251', 'Brasília', 'Federal District', 'BR'),
(191, 180, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(192, 180, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(193, 181, 'esa02.presidencia.gov.br.', '170.246.255.52', 'Brasília', 'Federal District', 'BR'),
(194, 181, 'esa01.presidencia.gov.br.', '170.246.255.51', 'Brasília', 'Federal District', 'BR'),
(195, 186, 'mx.zoho.com.', '204.141.43.44', 'Seattle', 'Washington', 'US'),
(196, 186, 'mx2.zoho.com.', '136.143.183.44', 'Dallas', 'Texas', 'US'),
(197, 186, 'mx3.zoho.com.', '204.141.43.44', 'Seattle', 'Washington', 'US'),
(198, 189, 'sucuri.snisb.gov.br.', '177.15.65.152', 'Brasília', 'Federal District', 'BR'),
(199, 189, 'bonito.snisb.gov.br.', '177.15.65.189', 'Brasília', 'Federal District', 'BR'),
(200, 195, 'protection.serpro.gov.br.', '161.148.50.251', 'Brasília', 'Federal District', 'BR'),
(201, 197, 'tcu-gov-br.mail.protection.outlook.com.', '52.101.11.15', 'San Antonio', 'Texas', 'US'),
(202, 199, 'ticontrole-gov-br.mail.protection.outlook.com.', '52.101.9.17', 'Ashburn', 'Virginia', 'US'),
(203, 200, 'antispam03.pensomail.com.br.', '177.185.1.106', 'São Paulo', 'São Paulo', 'BR'),
(204, 201, 'smtp.to.gov.br.', '191.223.64.19', 'Palmas', 'Tocantins', 'BR'),
(205, 202, 'dc02-economia-mx01.mlicloud.com.', '186.227.197.37', 'João Pessoa', 'Paraíba', 'BR'),
(206, 202, 'dc02-economia-mx02.mlicloud.com.', '187.45.183.227', 'João Pessoa', 'Paraíba', 'BR'),
(207, 202, 'mte-mx03.mlicloud.com.', '187.108.197.246', 'São Paulo', 'São Paulo', 'BR'),
(208, 202, 'mte-mx04.mlicloud.com.', '187.108.197.187', 'São Paulo', 'São Paulo', 'BR'),
(209, 211, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(210, 211, 'alt1.aspmx.l.google.com.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(211, 211, 'aspmx2.googlemail.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(212, 211, 'aspmx.l.google.com.', '142.250.0.27', 'Santiago', 'Santiago Metropolitan', 'CL'),
(213, 211, 'aspmx3.googlemail.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(214, 214, 'mail.trt23.gov.br.', '201.182.224.203', 'Cuiabá', 'Mato Grosso', 'BR'),
(215, 216, 'aspmx2.googlemail.com.', '64.233.184.27', 'Brussels', 'Brussels Capital', 'BE'),
(216, 216, 'aspmx.l.google.com.', '142.250.0.27', 'Santiago', 'Santiago Metropolitan', 'CL'),
(217, 216, 'aspmx3.googlemail.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(218, 216, 'alt2.aspmx.l.google.com.', '142.250.27.26', 'Amsterdam', 'North Holland', 'NL'),
(219, 216, 'alt1.aspmx.l.google.com.', '64.233.184.26', 'Brussels', 'Brussels Capital', 'BE'),
(220, 219, 'turismo-gov-br.mail.protection.outlook.com.', '52.101.41.0', 'San Jose', 'California', 'US'),
(221, 220, 'unasus-gov-br.mail.protection.outlook.com.', '52.101.40.0', 'Cheyenne', 'Wyoming', 'US');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `dominios_dns`
--
ALTER TABLE `dominios_dns`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `mx_records`
--
ALTER TABLE `mx_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dominio_id` (`dominio_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dominios_dns`
--
ALTER TABLE `dominios_dns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT de tabela `mx_records`
--
ALTER TABLE `mx_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `mx_records`
--
ALTER TABLE `mx_records`
  ADD CONSTRAINT `mx_records_ibfk_1` FOREIGN KEY (`dominio_id`) REFERENCES `dominios_dns` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
