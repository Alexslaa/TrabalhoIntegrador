-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2021 às 17:05
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
(5, 'yipnear@gmail.com', 'mememaker', 'escola05', '2021-11-26'),
(6, 'vitorames20@gmail.com', 'teste', '123456', '2021-12-03');

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
('mouse-1.png', 7, 'Mouse Gamer Logitech G203 LIGHTSYNC RGB', 1, 25, 'O G203 LIGHTSYNC vem pronto para jogar com um sensor de 8.000 DPI e cores RGB LIGHTSYNC personalizáveis. A iluminação RGB LIGHTSYNC pode ser personalizada com efeitos ou padrões de ondas de cores em aproximadamente 16,8 milhões de cores para se adequar ao seu estilo, configuração e humor. O sensor de nível avançado para jogos responde com precisão aos seus movimentos e você pode personalizar as configurações para se adequar à sensibilidade desejada.* O design simples de 6 botões e o formato clássico para jogos formam um design confortável, testado e admirado, com botões programáveis para simplificar tarefas. Os botões esquerdo e direito possuem um sistema exclusivo de tensionamento de botões por mola de metal da Logitech G para oferecer confiabilidade, desempenho e uma sensação de precisão. *Recursos avançados requerem o software Logitech G HUB disponível em logitechG.com/GHUB.', 117),
('mouse-2.png', 8, 'Mouse Gamer Logitech G403 HERO', 1, 38, 'O G403 HERO Gaming Mouse apresenta o sensor HERO 25K de última geração, com rastreamento 1: 1, mais de 400 IPS e sensibilidade máxima de 400- 25.600 DPI - além de suavização, filtragem ou aceleração zero. A iluminação RGB de espectro total responde à ação do jogo, áudio e cor da tela. Personalize os efeitos de iluminação de aproximadamente 16,8 milhões de cores com o software Logitech G HUB e sincronize com seus equipamentos G. O G403 HERO é confortavelmente projetado para jogos com uma forma que é fácil de segurar e controlar, usando materiais de alta qualidade, construção leve (87g), alças de borracha e um peso removível de 10g. Usando o G HUB, configure 6 botões programáveis para simplificar as ações do jogo.', 189),
('mouse-3.png', 9, 'Mouse HP Gamer USB M160 Preto', 1, 13, 'Características: Resolução de 1000 DPI Plug & Play Cabo: 1,3m de comprimento, PVC 3 botões Iluminação Multicores Sistema operacional: Windows XP / Windows7 / Windows 8 / Windows10', 46),
('mouse-4.png', 10, 'Fortrek PRO M7 RGB - Mouse Gamer, Preto', 1, 44, 'Led: Rgb Com 16.8milhões De Cores (ajustável Pelo Software) - Switch: Huano - Material: Plástico Abs - Acabamento: Emborrachado Com Base De Baixa Fricção - Dimensões Do Mouse: 125x57x38cm - Peso Do Mouse: 135g', 62),
('cadeira-1.png', 11, 'Cadeira Gamer Preta e Vermelha Elements', 3, 14, 'Cadeira Gamer Elements Veda IGNIS (Couro PU/Assento Espuma Injetada/Costura Fio Egípcio/Almofada Cervical e Lombar) - Vermelho/Preto', 1.675),
('cadeira-2.png', 12, 'Cadeira Gamer MoobX Nitro', 3, 13, 'Cadeira Gamer NITRO Preto e Azul As cadeiras gamer da linha NITRO são a opção ideal para os games mais desafiadores e irados. Sinta a adrenalina a cada jogo! Com design inspirado nos bancos dos super carros de corrida com capa de material sintética e costuras que imitam tecidos em estilo carbono. Seu estofamento possui boa densidade que trazem maior firmeza às áreas de contato e assegura uma experiência incrível de conforto para aproveitar melhor a longa duração dos jogos. Com design de assentos de corrida com capa de material sintético e costuras semelhantes a carbono. Seu estofamento possuí preenchimento firme nas áreas de contato assegura uma experiência confortável enquanto está sentado durante longas horas. INFORMAÇÃO TÉCNICA: - Função basculante com parte traseira reclinável, com ajuste de até 180. - Apoio de cabeça menor e almofada para lombar que aumenta o conforto e suporte no dia a dia. - Assentos especiais com espuma injetada de 50Kg/m - Cilindro com 100mm de regulagem de al', 999),
('cadeira-3.png', 13, 'Cadeira Gamer MX1 Giratória', 3, 11, 'A Cadeira Gamer MX1 é recomendada para gamers, pois necessitam de uma cadeira ergonômica e confortável. Escolhida também por profissionais que passam muito tempo sentado em frente ao computador. Com design que presa pelo conforto, garante ao jogador longas partidas. Costruída em materiais premium, superfície em couro e estrutura metálica garante durabilidade ao produto.', 925),
('cadeira-4.png', 14, 'Cadeira Gamer XZONE', 3, 5, 'Resistência, durabilidade e garantia de 1 ano! A Cadeira Gamer CGR-01 da X-ZONE possui espuma injetada de alta densidade e design ergonômico. Superconfortável, conta com almofadas para a lombar e pescoço e um apoio estofado para o braço. Suas rodas de alta resistência garantem fácil movimentação em um giro de 360º. Seu encosto reclinável pode ser ajustado de 0º a 155º, atendendo às suas necessidades e o estofamento de couro sintético PU oferece maior durabilidade e melhor acabamento ao produto. E não acabou! A altura de assento da cadeira é ajustável com molas a gás para facilitar ao elevar e abaixar a cadeira, economizando tempo e energia. A linha de produtos X-ZONE tem uma missão: dar um UP na experiência dos gamers. A marca chega ao mercado com um portfólio de hardwares e equipamentos desenvolvidos para trazer mais precisão, alta performance, conforto e design exclusivo. Pronta para criar novos produtos e atender aos apaixonados por games, a marca X-ZONE está sempre buscando inovaçõ', 868),
('head-1.png', 15, 'Headset Sem Fio ASTRO Gaming A50', 2, 20, 'Experimente o lendário desempenho dos headsets A50 em sua nova geração, com a conveniência e a liberdade sem fios, atualizado com a qualidade de som totalmente imersiva do ASTRO Audio V2. O Astro A50 Wireless + Base Station para PlayStation 4 e PC oferece acústica, ergonomia, conforto e durabilidade topo de linha que os jogadores exigem. A nova base de carregamento proporciona comunicação de voz clara e de baixa latência, ao mesmo tempo que simplifica o pareamento e o carregamento dos fones de ouvido. O software ASTRO Command Center permite que gamers e streamers sintonizem todos os parâmetros de entrada e saída de áudio do A50 com precisão para sua configuração personalizada. Sinta a imersão de áudio absoluta com o Astro A50 Wireless Headset + Base Station.', 1.906),
('head-2.png', 16, 'Headphone Fone de Ouvido Havit HV-H2232d', 2, 11, 'Gaming Headphone Havit HV-H2232d, Design simples e elegante, os 2 fones possuem iluminação RGB, microfone: ?4.0 * 1, 5mm, resposta de frequência: 20 Hz – 20kHz, sensibilidade: 109db 3dB, Impedância: 21 15% ?, conector USB (apenas para iluminação).', 90),
('head-3.png', 17, 'Headset Gamer RGB Blackfire Preto FORTREK', 2, 55, 'Tem produtos em oferta nas diversas categorias no site da Amazon, mas se o que você quer é a melhor oportunidade para comprar um Headset Gamer Fortrek, na cor preta, a uma condição mais que especial, essa é a hora certa. Se você adora jogar e está procurando um headset próprio para gamers, esse fone é um investimento sem preocupações para a experiência do seu entretenimento. Com comprimento de 1,9m têxtil trançado, o Headset Gamer RGB Blackfire da Fortrek tem responsividade de 38 dB e pesa apenas 450 gramas. Aproveite para comprar o Headset Gamer Fortrek em condições especiais no site da Amazon!', 135),
('head-4.png', 18, 'Fone de Ouvido Headset Gamer Hyperx Cloud Stinger', 2, 12, 'O HyperX Cloud Stinger é o headset ideal para jogadores que procuram leveza, conforto, qualidade de som superior e maior praticidade. Com apenas 275 gramas, ele é confortável no seu pescoço e seus fones de ouvido giram em um angulo de 90 graus para um melhor encaixe. Suas unidades direcionais de 50 mm posicionam o som diretamente no ouvido para precisão do áudio e qualidade de som de nível de jogos. para máximo conforto em sessões de jogos prolongadas, ele apresenta espuma memory foam de alta qualidade exclusiva HyperX. Sua tira ajustável de aço, controle de volume intuitivo no fone de ouvido e microfone com controle para mudo e cancelamento de ruído facilitam sua utilização, e sua compatibilidade com múltiplas plataformas permite que você tenha o mesmo conforto e a mesma experiência de áudio em pcs ou consoles.', 350);

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
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
