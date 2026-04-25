-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/04/2026 às 16:53
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `database_courses`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'published',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `workload` int(11) DEFAULT NULL,
  `target_audience` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `modality` varchar(100) DEFAULT NULL,
  `category` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `instructor`, `price`, `image_url`, `status`, `created_at`, `workload`, `target_audience`, `format`, `level`, `modality`, `category`) VALUES
(1, 'Introdução à Psicologia Positiva', 'Descubra os fundamentos da psicologia positiva e aprenda a aplicar os seus princípios para uma vida mais feliz e realizada.', 'Dra. Sofia Almeida', 179.90, '/assets/img-courses/6903bcfbeb576-pexels-shvets-production-7176318.jpg', 'published', '2025-10-15 19:46:11', 40, 'Estudantes de psicologia, terapeutas e público geral.', 'Vídeo-aulas e leituras', 'Iniciante', 'Online', 0),
(2, 'Técnicas de Mindfulness para Redução de Stress', 'Aprenda práticas de mindfulness e meditação para gerir o stress do dia a dia, aumentar o foco e promover o bem-estar mental.', 'Dr. Marcos Oliveira', 199.50, '/assets/img-courses/690204c0676ec-iStock-1322900689-1-768x512.jpg', 'published', '2025-10-15 19:46:11', 30, 'Qualquer pessoa que queira reduzir o stress.', 'Áudios guiados', 'Iniciante', 'Online', 1),
(3, 'Comunicação Não-Violenta nas Relações', 'Transforme as suas relações através de uma comunicação mais empática e eficaz.', 'Clara Mendes', 249.90, '/assets/img-courses/690205108d3f1-Artigo-Comunicacao-Nao-Violenta-scaled-2-768x432.webp', 'published', '2025-10-15 19:46:11', 25, 'Todos os interessados em melhorar a comunicação.', 'Vídeos e exercícios práticos', 'Intermediário', 'Online', 1),
(4, 'Fundamentos da Terapia de Casal', 'Um curso essencial para terapeutas que desejam compreender as dinâmicas dos relacionamentos.', 'Dr. Ricardo Bastos', 349.00, '/assets/img-courses/690206123a19f-Captura de tela 2025-10-29 091802.png', 'published', '2025-10-15 19:46:11', 50, 'Psicólogos e terapeutas', 'Estudo de casos', 'Avançado', 'Online', 0),
(5, 'Inteligência Emocional: Teoria e Prática', 'Desenvolva a sua inteligência emocional para tomar melhores decisões e melhorar as suas relações.', 'Beatriz Costa', 219.90, '/assets/img-courses/6902095f857a4-Capturadetela2025-10-29093206.png', 'published', '2025-10-15 19:46:11', 35, 'Profissionais e estudantes de todas as áreas.', 'Aulas teóricas e práticas', 'Todos os níveis', 'Online', 0),
(6, 'Psicologia do Desenvolvimento Infantil', 'Explore as fases do desenvolvimento infantil, desde o nascimento até à adolescência.', 'Dra. Helena Martins', 299.00, '/assets/img-courses/69020855263e1-mother-and-baby-daughter-giving-high-fives.jpg', 'published', '2025-10-15 19:46:11', 60, 'Pais, educadores e profissionais da saúde infantil.', 'Vídeo-aulas', 'Intermediário', 'Online', 1),
(7, 'Como Lidar com a Ansiedade Social', 'Este curso oferece ferramentas práticas baseadas na TCC para gerir e superar a ansiedade social.', 'Felipe Rocha', 219.90, '/assets/img-courses/690208ab9f7ca-ansiedade-social-1-980x481.jpg', 'published', '2025-10-15 19:46:11', 22, 'Pessoas com ansiedade social.', 'Exercícios práticos', 'Todos os níveis', 'Online', 1),
(8, 'Neurociência para Terapeutas', 'Compreenda como o cérebro funciona e de que forma a neurociência pode enriquecer a prática clínica.', 'Dr. Lucas Farias', 399.00, '/assets/img-courses/6903bd15b0e1a-pexels-googledeepmind-17483868.jpg', 'published', '2025-10-15 19:46:11', 100, 'Psicólogos, psiquiatras e neurocientistas.', 'Aulas expositivas', 'Avançado', 'Online', 0),
(9, 'O Poder do Hábito', 'Aprenda como os hábitos são formados e como pode criar rotinas positivas para alcançar os seus objetivos.', 'Júlia Nunes', 159.50, '/assets/img-courses/690209aba0a0c-171053742565f4bad1e6c90_1710537425_3x2_lg.jpg', 'published', '2025-10-15 19:46:11', 25, 'Qualquer pessoa interessada em desenvolvimento pessoal.', 'Ferramentas de planejamento', 'Iniciante', 'Online', 0),
(10, 'Terapia de Aceitação e Compromisso (ACT)', 'Uma introdução aos conceitos da Terapia de Aceitação e Compromisso para aumentar a flexibilidade psicológica.', 'Mariana Esteves', 279.90, '/assets/img-courses/69020a0e6d129-Capturadetela2025-10-29093515.png', 'published', '2025-10-15 19:46:11', 45, 'Terapeutas e estudantes de psicologia.', 'Aulas e meditações guiadas', 'Intermediário', 'Online', 0),
(11, 'Gestão de Tempo para Terapeutas', 'Aprenda a organizar sua agenda, otimizar atendimentos e aumentar sua produtividade sem sacrificar o bem-estar.', 'Dra. Ana Carolina', 229.00, '/assets/img-courses/69014f65b1625-pexels-negativespace-34587.jpg', 'published', '2025-10-16 23:29:50', 20, 'Terapeutas, psicólogos e profissionais da saúde mental.', 'Vídeo-aulas e exercícios práticos.', 'Intermediário', 'Online', 1),
(12, 'Marketing Digital para Psicólogos', 'Descubra como divulgar seu trabalho de forma ética e eficaz, atraindo os pacientes certos para sua clínica.', 'Prof. Ricardo Gomes', 350.00, '/assets/img-courses/6901520de9aee-pexels-picjumbo-com-55570-196655.jpg', 'published', '2025-10-16 23:29:50', 30, 'Psicólogos, terapeutas e estudantes de psicologia.', 'Aulas ao vivo e gravadas.', 'Todos os níveis', 'Online', 1),
(13, 'Workshop: Introdução à Terapia Cognitivo-Comportamental (TCC)', 'Um workshop intensivo sobre os conceitos e técnicas fundamentais da TCC.', 'Dr. Felipe Moreira', 99.90, '/assets/img-courses/6903bfc1e2203-pexels-shvets-production-7176030.jpg', 'published', '2025-10-16 23:29:50', 8, 'Estudantes e profissionais iniciantes em psicologia.', 'Online Ao Vivo', 'Iniciante', 'Workshop', 0),
(14, 'Workshop: Ferramentas de Avaliação Psicológica', 'Conheça e pratique o uso de importantes ferramentas de avaliação no contexto clínico.', 'Dra. Letícia Barros', 120.00, '/assets/img-courses/6903be224375f-Semttulo2.png', 'published', '2025-10-16 23:29:50', 10, 'Psicólogos e estudantes avançados.', 'Prático e Interativo', 'Intermediário', 'Workshop', 0),
(15, 'Workshop: Primeiros Socorros Psicológicos', 'Aprenda a oferecer suporte inicial a pessoas em crise ou sofrimento agudo.', 'Enf. Mário Sérgio', 79.00, '/assets/img-courses/6902072cef279-Captura de tela 2025-10-29 092248.png', 'published', '2025-10-16 23:29:50', 6, 'Público geral, profissionais da saúde e educação.', 'Teórico-prático', 'Básico', 'Workshop', 1),
(16, 'Workshop: Ética e Redes Sociais na Psicologia', 'Navegue pelos desafios éticos da presença digital do psicólogo.', 'Dra. Patrícia Valente', 150.00, '/assets/img-courses/6903bfddd70cb-CUIDADOS.TICOS-2_1_.png', 'published', '2025-10-16 23:29:50', 4, 'Psicólogos e estudantes de psicologia.', 'Expositivo com discussão de casos', 'Todos os níveis', 'Workshop', 1),
(17, 'teste', 'teste', 'teste', 100.00, NULL, 'published', '2026-04-25 12:05:51', 45, 'todos', 'presencial', '1', 'TCC', 0),
(18, 'teste', 'teste', 'teste', 2000.00, NULL, 'published', '2026-04-25 12:52:59', 50, 'todos', 'on-line', '109', 'todos', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_lessons`
--

CREATE TABLE `course_lessons` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content_type` enum('video','text','pdf') NOT NULL DEFAULT 'video',
  `content_path` varchar(512) DEFAULT NULL,
  `content_text` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `module_id`, `title`, `content_type`, `content_path`, `content_text`, `order`, `created_at`) VALUES
(35, 21, 'Boas-vindas ao Curso', 'video', '9uK-j281-Yc', NULL, 1, '2025-10-27 01:00:43'),
(36, 21, 'O que é Felicidade? (Texto)', 'text', NULL, 'Nesta lição, exploramos o conceito de felicidade segundo Martin Seligman...', 2, '2025-10-27 01:00:43'),
(37, 21, 'Os Pilares do Bem-Estar (PERMA)', 'video', '1qD9je_dK0I', NULL, 3, '2025-10-27 01:00:43'),
(38, 22, 'Exercício da Gratidão', 'video', 'W-z-48nnx8o', NULL, 1, '2025-10-27 01:00:43'),
(39, 22, 'Material de Apoio (PDF)', 'pdf', '/assets/docs/psicologia_positiva.pdf', NULL, 2, '2025-10-27 01:00:43'),
(40, 22, 'Conclusão', 'text', NULL, 'Parabéns por concluir o curso! Esperamos que aplique estes conceitos no seu dia a dia.', 3, '2025-10-27 01:00:43'),
(41, 23, 'Atenção Plena: O Básico', 'video', 'gMo8-s-kG1g', NULL, 1, '2025-10-27 01:00:43'),
(42, 23, 'Benefícios Comprovados do Mindfulness', 'text', NULL, 'A prática regular de mindfulness tem demonstrado...', 2, '2025-10-27 01:00:43'),
(43, 24, 'Meditação Guiada de 5 Minutos (Respiração)', 'video', 'ZToiI-z-bPU', NULL, 1, '2025-10-27 01:00:43'),
(44, 24, 'Scan Corporal (10 Minutos)', 'video', 'a-p-zX-sP-c', NULL, 2, '2025-10-27 01:00:43'),
(45, 25, 'Os 4 Componentes da CNV', 'video', 'X-eNQm4l-mY', NULL, 1, '2025-10-27 01:00:43'),
(46, 25, 'Observação vs. Julgamento (Texto)', 'text', NULL, 'Aprender a separar observações factuais de julgamentos é o primeiro passo...', 2, '2025-10-27 01:00:43'),
(47, 26, 'Escuta Ativa na Prática', 'video', '6NQiH02i-F8', NULL, 1, '2025-10-27 01:00:43'),
(48, 27, 'Introdução à Terapia Sistêmica', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(49, 27, 'O Genograma na Terapia', 'text', NULL, 'O genograma é uma ferramenta visual...', 2, '2025-10-27 01:00:43'),
(50, 28, 'Técnicas Comuns de Terapia de Casal', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(51, 29, 'O que é Inteligência Emocional (Goleman)', 'video', '6G2f-DPF0-0', NULL, 1, '2025-10-27 01:00:43'),
(52, 29, 'Autoconhecimento e Autogestão', 'text', NULL, 'O primeiro pilar é a capacidade de reconhecer...', 2, '2025-10-27 01:00:43'),
(53, 30, 'Empatia e Habilidades Sociais', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(54, 31, 'Período Sensório-Motor', 'video', 'I-v_Gs02jZQ', NULL, 1, '2025-10-27 01:00:43'),
(55, 31, 'Período Pré-Operatório', 'video', 'I-v_Gs02jZQ', NULL, 2, '2025-10-27 01:00:43'),
(56, 32, 'A Teoria do Apego (Bowlby)', 'text', NULL, 'A teoria do apego descreve a importância...', 3, '2025-10-27 01:00:43'),
(57, 33, 'O que é Ansiedade Social (Fobia Social)?', 'video', 'j-r8Yclc13Y', NULL, 1, '2025-10-27 01:00:43'),
(58, 33, 'O Ciclo da Ansiedade Social', 'text', NULL, 'A ansiedade social se mantém por um ciclo...', 2, '2025-10-27 01:00:43'),
(59, 34, 'Reestruturação Cognitiva', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(60, 34, 'Técnicas de Exposição Gradual', 'text', NULL, 'A exposição gradual é fundamental para...', 2, '2025-10-27 01:00:43'),
(61, 35, 'Estruturas Cerebrais e Emoções (Sistema Límbico)', 'video', 'g-oWN1GzCcw', NULL, 1, '2025-10-27 01:00:43'),
(62, 35, 'Neurotransmissores Importantes', 'text', NULL, 'Dopamina, Serotonina, Noradrenalina...', 2, '2025-10-27 01:00:43'),
(63, 36, 'Como a Terapia Muda o Cérebro', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(64, 37, 'Deixa, Gatilho e Recompensa', 'video', 'P-Trs2jX8jM', NULL, 1, '2025-10-27 01:00:43'),
(65, 37, 'Identificando seus Gatilhos', 'text', NULL, 'Para mudar um hábito, primeiro...', 2, '2025-10-27 01:00:43'),
(66, 38, 'A Regra de Ouro da Mudança de Hábito', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:43'),
(67, 39, 'Os 6 Processos da ACT', 'video', '1i6Pz-bMY3k', NULL, 1, '2025-10-27 01:00:44'),
(68, 39, 'Desfusão Cognitiva', 'text', NULL, 'Aprender a se distanciar dos seus pensamentos...', 2, '2025-10-27 01:00:44'),
(69, 40, 'A Metáfora do Ônibus', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(70, 40, 'Exercício: O Pântano', 'text', NULL, 'Imagine que você está em um pântano...', 2, '2025-10-27 01:00:44'),
(71, 41, 'Ferramentas Digitais (Google Calendar, etc)', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(72, 41, 'Bloqueio de Tempo (Time Blocking)', 'text', NULL, 'A técnica de bloqueio de tempo...', 2, '2025-10-27 01:00:44'),
(73, 42, 'A Importância do Autocuidado', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(74, 43, 'O que o CFP permite?', 'text', NULL, 'Resolução CFP Nº 11/2018...', 1, '2025-10-27 01:00:44'),
(75, 43, 'Construindo sua Marca Pessoal', 'video', 'dQw4w9WgXcQ', NULL, 2, '2025-10-27 01:00:44'),
(76, 44, 'Usando o Instagram para Terapeutas', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(77, 44, 'Anúncios para Terapeutas (Google Ads)', 'text', NULL, 'Como configurar sua primeira campanha...', 2, '2025-10-27 01:00:44'),
(78, 45, 'Aula 1: Conceitos Fundamentais', 'video', 'nL-TY0q22hU', NULL, 1, '2025-10-27 01:00:44'),
(79, 45, 'Aula 2: O Modelo Cognitivo (Pensamento-Emoção-Comportamento)', 'video', 'dQw4w9WgXcQ', NULL, 2, '2025-10-27 01:00:44'),
(80, 45, 'Aula 3: Técnicas de Reestruturação', 'text', NULL, 'O RPD (Registro de Pensamentos Disfuncionais)...', 3, '2025-10-27 01:00:44'),
(81, 45, 'Material de Apoio (PDF)', 'pdf', '/assets/docs/tcc_resumo.pdf', NULL, 4, '2025-10-27 01:00:44'),
(82, 46, 'Aula 1: Anamnese e Entrevista Clínica', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(83, 46, 'Aula 2: Escalas (Beck, Hamilton)', 'text', NULL, 'As escalas de Beck (BDI, BAI)...', 2, '2025-10-27 01:00:44'),
(84, 46, 'Aula 3: Testes Projetivos (Visão Geral)', 'video', 'dQw4w9WgXcQ', NULL, 3, '2025-10-27 01:00:44'),
(85, 47, 'Aula 1: O que é PSP (PAP)?', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(86, 47, 'Aula 2: Os 5 Passos', 'text', NULL, '1. Ouvir, 2. Acolher, 3. ...', 2, '2025-10-27 01:00:44'),
(87, 48, 'Aula 1: O Perfil Profissional vs. Pessoal', 'video', 'dQw4w9WgXcQ', NULL, 1, '2025-10-27 01:00:44'),
(88, 48, 'Aula 2: Sigilo e Exposição de Casos (O que NÃO fazer)', 'text', NULL, 'Nunca exponha pacientes, mesmo anonimamente...', 2, '2025-10-27 01:00:44'),
(89, 48, 'Aula 3: Resposta a Comentários e Mensagens', 'text', NULL, 'Mantenha a postura profissional...', 3, '2025-10-27 01:00:44'),
(90, 49, 'APOSTILHA', 'pdf', '/assets/pdfs/690242f97c978-Listadeprodutosn.592-2025Assista.pdf', NULL, 1, '2025-10-29 16:38:17'),
(91, 49, 'TCC 2', 'text', NULL, 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English', 2, '2025-10-29 19:33:04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `course_modules`
--

CREATE TABLE `course_modules` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `course_modules`
--

INSERT INTO `course_modules` (`id`, `course_id`, `title`, `order`, `created_at`) VALUES
(21, 1, 'Fundamentos da Psicologia Positiva', 1, '2025-10-27 01:00:43'),
(22, 1, 'Aplicações Práticas', 2, '2025-10-27 01:00:43'),
(23, 2, 'O que é Mindfulness?', 1, '2025-10-27 01:00:43'),
(24, 2, 'Práticas Guiadas', 2, '2025-10-27 01:00:43'),
(25, 3, 'Princípios da CNV', 1, '2025-10-27 01:00:43'),
(26, 3, 'Praticando a Empatia', 2, '2025-10-27 01:00:43'),
(27, 4, 'Abordagens Sistêmicas', 1, '2025-10-27 01:00:43'),
(28, 4, 'Técnicas de Intervenção', 2, '2025-10-27 01:00:43'),
(29, 5, 'Os 5 Pilares da IE', 1, '2025-10-27 01:00:43'),
(30, 5, 'Inteligência Emocional no Trabalho', 2, '2025-10-27 01:00:43'),
(31, 6, 'Fases do Desenvolvimento (Piaget)', 1, '2025-10-27 01:00:43'),
(32, 6, 'Desenvolvimento Social e Afetivo', 2, '2025-10-27 01:00:43'),
(33, 7, 'Entendendo a Ansiedade Social', 1, '2025-10-27 01:00:43'),
(34, 7, 'Técnicas Cognitivas (TCC)', 2, '2025-10-27 01:00:43'),
(35, 8, 'O Cérebro Básico', 1, '2025-10-27 01:00:43'),
(36, 8, 'Neuroplasticidade', 2, '2025-10-27 01:00:43'),
(37, 9, 'O Loop do Hábito', 1, '2025-10-27 01:00:43'),
(38, 9, 'Mudando Hábitos Antigos', 2, '2025-10-27 01:00:43'),
(39, 10, 'O Hexaflex', 1, '2025-10-27 01:00:43'),
(40, 10, 'Metáforas e Exercícios', 2, '2025-10-27 01:00:44'),
(41, 11, 'Organizando a Agenda', 1, '2025-10-27 01:00:44'),
(42, 11, 'Evitando o Burnout', 2, '2025-10-27 01:00:44'),
(43, 12, 'Marketing Ético (CFP)', 1, '2025-10-27 01:00:44'),
(44, 12, 'Ferramentas Práticas', 2, '2025-10-27 01:00:44'),
(45, 13, 'Módulo Único - TCC', 1, '2025-10-27 01:00:44'),
(46, 14, 'Módulo Único - Avaliação', 1, '2025-10-27 01:00:44'),
(47, 15, 'Módulo Único - PSP', 1, '2025-10-27 01:00:44'),
(48, 16, 'Módulo Único - Ética Digital', 1, '2025-10-27 01:00:44'),
(49, 7, 'TCC', 3, '2025-10-29 16:37:17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `interested_users`
--

CREATE TABLE `interested_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users_app`
--

CREATE TABLE `users_app` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `subscription_plan` enum('none','essential','premium') NOT NULL DEFAULT 'none',
  `subscription_expires_at` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `password_reset_expires` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users_app`
--

INSERT INTO `users_app` (`id`, `name`, `email`, `cpf`, `password_hash`, `role`, `subscription_plan`, `subscription_expires_at`, `password_reset_token`, `password_reset_expires`, `created_at`) VALUES
(1, 'Bruno Admin', 'brunojsilvasuporte@gmail.com', NULL, '$2y$10$yCmqRlvApJKWOysAldubW.KqyEB8HnrkRji9Vb17XvltZbomcRpgC', 'admin', 'premium', NULL, NULL, NULL, '2025-10-15 19:46:11'),
(2, 'João Essencial', 'essential@email.com', NULL, '$2y$10$PIF3Tg6aT7LZIXNlHPSCSOuVrTQAu6p8ilAaJa5i0oqNu3.TE7zPG', 'user', 'essential', NULL, NULL, NULL, '2025-10-15 19:46:11'),
(3, 'Carlos Avulso', 'semplano@email.com', '111.222.333-44', '$2y$10$PIF3Tg6aT7LZIXNlHPSCSOuVrTQAu6p8ilAaJa5i0oqNu3.TE7zPG', 'user', 'none', NULL, NULL, NULL, '2025-10-15 19:46:11'),
(4, 'Ana Premium', 'premium@email.com', NULL, '$2y$10$PIF3Tg6aT7LZIXNlHPSCSOuVrTQAu6p8ilAaJa5i0oqNu3.TE7zPG', 'user', 'premium', NULL, NULL, NULL, '2025-10-15 22:56:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_courses`
--

CREATE TABLE `user_courses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` enum('Em Andamento','Finalizado') NOT NULL DEFAULT 'Em Andamento',
  `access_granted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `user_courses`
--

INSERT INTO `user_courses` (`id`, `user_id`, `course_id`, `status`, `access_granted_at`) VALUES
(15, 4, 5, 'Finalizado', '2026-04-25 14:50:58'),
(16, 2, 17, 'Finalizado', '2026-04-25 14:51:16');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id_idx` (`module_id`);

--
-- Índices de tabela `course_modules`
--
ALTER TABLE `course_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id_idx` (`course_id`);

--
-- Índices de tabela `interested_users`
--
ALTER TABLE `interested_users`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users_app`
--
ALTER TABLE `users_app`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `user_courses`
--
ALTER TABLE `user_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_course_unique` (`user_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `course_lessons`
--
ALTER TABLE `course_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `course_modules`
--
ALTER TABLE `course_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `interested_users`
--
ALTER TABLE `interested_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users_app`
--
ALTER TABLE `users_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `user_courses`
--
ALTER TABLE `user_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD CONSTRAINT `fk_lesson_module` FOREIGN KEY (`module_id`) REFERENCES `course_modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `course_modules`
--
ALTER TABLE `course_modules`
  ADD CONSTRAINT `fk_module_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `user_courses`
--
ALTER TABLE `user_courses`
  ADD CONSTRAINT `user_courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_app` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_courses_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
