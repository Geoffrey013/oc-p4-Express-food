-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- G√©n√©r√© le :  Mer 27 Septembre 2017 √† 10:48
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de donn√©es :  `demo_expressfood`
--

-- --------------------------------------------------------

--
-- Structure de la table `ef_address`
--

CREATE TABLE `ef_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `road` varchar(255) NOT NULL,
  `address_complement` varchar(255) DEFAULT NULL,
  `postal_code` int(5) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_address`
--

INSERT INTO `ef_address` (`id`, `user_id`, `name`, `road`, `address_complement`, `postal_code`, `city`) VALUES
(1, 1, 'maison', '53, rue Vaillant Couturier\r\n', NULL, 93220, 'Gagny'),
(2, 2, 'maison', 'rue pavillon', NULL, 93220, 'Gagny'),
(3, 1, 'travail', '20 Bis Avenue Jean Jaur√®s', NULL, 93220, 'Gagny'),
(4, 4, 'maison', '7 place du G√©n√©ral de Gaulle', NULL, 93220, 'Gagny');

-- --------------------------------------------------------

--
-- Structure de la table `ef_bill`
--

CREATE TABLE `ef_bill` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_bill`
--

INSERT INTO `ef_bill` (`id`, `order_id`, `date`, `name`) VALUES
(1, 1, '2017-09-16', 'commande_1_16092017.pdf'),
(2, 2, '2017-09-16', 'commande_2_16092017.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `ef_daily_meal`
--

CREATE TABLE `ef_daily_meal` (
  `id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `available_quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_daily_meal`
--

INSERT INTO `ef_daily_meal` (`id`, `meal_id`, `date`, `available_quantity`) VALUES
(1, 1, '2017-09-16', 50),
(2, 2, '2017-09-16', 50),
(3, 3, '2017-09-16', 50),
(4, 4, '2017-09-16', 50),
(5, 5, '2017-09-17', 50),
(6, 6, '2017-09-17', 50),
(7, 7, '2017-09-17', 50),
(8, 8, '2017-09-17', 50),
(9, 9, '2017-09-18', 50),
(10, 10, '2017-09-18', 30),
(11, 11, '2017-09-18', 50),
(12, 12, '2017-09-18', 35);

-- --------------------------------------------------------

--
-- Structure de la table `ef_delivery_man`
--

CREATE TABLE `ef_delivery_man` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `firstname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('in_progress','resupply','free') NOT NULL,
  `coordinate` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_delivery_man`
--

INSERT INTO `ef_delivery_man` (`id`, `order_id`, `firstname`, `name`, `email`, `phone_number`, `password`, `status`, `coordinate`) VALUES
(1, NULL, 'Alexandre', 'Dubois', 'alexandre.dubois@gmail.com', '0609325698', 'livreur1', 'free', '\0\0\0\0\0\0\0+ˆó›ì/J@ôg%≠¯ñ@'),
(2, 2, 'Alexis', 'Duschene', 'alexis.duschene', '0686523659', 'livreur2', 'in_progress', '\0\0\0\0\0\0\0AÒcÃ]qH@XsÄ`é>@'),
(3, NULL, 'Thomas', 'Lacours', 'thomas.lacours@gmail.com', '0652369685', 'livreur3', 'free', '\0\0\0\0\0\0\0ØÈAA)nH@Ã\'+Ü´#@');

-- --------------------------------------------------------

--
-- Structure de la table `ef_ingredients`
--

CREATE TABLE `ef_ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_ingredients`
--

INSERT INTO `ef_ingredients` (`id`, `name`) VALUES
(1, 'sel'),
(2, 'radis'),
(3, 'poivre'),
(4, 'daurade'),
(5, 'avocat'),
(6, 'persil'),
(7, 'tabasco'),
(8, 'sauce soja'),
(9, 'jambon de bayonne'),
(10, 'salade'),
(11, 'mayonnaise'),
(12, 'curry'),
(13, 'farine de bl√©'),
(14, 'poulet'),
(15, 'oignon'),
(16, 'tomate'),
(17, 'pain'),
(18, 'aneth'),
(19, 'piment espelette'),
(20, 'thon'),
(21, 'poivron rouge'),
(22, 'poivron vert'),
(23, 'poivron jaune'),
(24, 'courgette'),
(25, 'cr√®me fraiche'),
(26, 'rouget'),
(27, 'semoule'),
(28, 'basilic'),
(29, 'parmesan'),
(30, 'menthe'),
(31, 'carotte'),
(32, 'beurre'),
(33, 'oeuf'),
(34, 'riz'),
(35, 'safran'),
(36, 'ail'),
(37, '√©chalotte'),
(38, 'oignon'),
(39, 'Huile olive'),
(40, 'olive'),
(41, 'citron vert'),
(42, 'citron jaune'),
(43, 'citronnelle'),
(44, 'mangue'),
(45, 'banane'),
(46, 'kiwi'),
(47, 'raisin blanc'),
(48, 'fraise'),
(49, 'sucre'),
(50, 'abricot'),
(51, 'amende'),
(52, 'verveine'),
(53, 'thym'),
(54, 'lait'),
(55, 'framboise'),
(56, 'vanille'),
(57, 'pain √©pices'),
(58, 'biscuit'),
(59, 'sp√©culos'),
(60, 'chocolat blanc'),
(61, 'chocolat au lait'),
(62, 'chocolat noir'),
(63, 'quenelle'),
(64, 'ananas');

-- --------------------------------------------------------

--
-- Structure de la table `ef_meal`
--

CREATE TABLE `ef_meal` (
  `id` int(11) NOT NULL,
  `meal_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit_price_excl_tax` decimal(5,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_meal`
--

INSERT INTO `ef_meal` (`id`, `meal_category_id`, `name`, `unit_price_excl_tax`) VALUES
(1, 1, 'Ceviche de daurade', '8'),
(2, 1, 'Mini brochettes quenelles et jambon de Bayonne', '8'),
(3, 2, 'Salade de fruits comme au Germain', '5'),
(4, 2, 'Tarte aux abricots, amandes et verveine', '6'),
(5, 1, 'Bombay Burger', '5'),
(6, 1, 'Tartare de thon et petits l√©gumes', '6'),
(7, 2, 'Granit√© de p√™ches blanches, tuiles et infusion de citronnelle', '6'),
(8, 2, 'Panna cotta de mangue aux √©pices', '6'),
(9, 1, 'Filets de rougets marin√©s au pistou et taboul√©', '6'),
(10, 1, 'Tomates farcies au riz safran√©', '7'),
(11, 2, 'Tiramisu aux fraises', '5'),
(12, 2, 'Bavarois framboises, sp√©culoos, chocolat blanc', '6');

-- --------------------------------------------------------

--
-- Structure de la table `ef_meal_category`
--

CREATE TABLE `ef_meal_category` (
  `id` int(11) NOT NULL,
  `name` enum('plat principal','dessert') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_meal_category`
--

INSERT INTO `ef_meal_category` (`id`, `name`) VALUES
(1, 'plat principal'),
(2, 'dessert');

-- --------------------------------------------------------

--
-- Structure de la table `ef_meal_ingredients`
--

CREATE TABLE `ef_meal_ingredients` (
  `meal_id` int(11) NOT NULL,
  `ingredients_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_meal_ingredients`
--

INSERT INTO `ef_meal_ingredients` (`meal_id`, `ingredients_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(3, 30),
(1, 39),
(2, 39),
(1, 41),
(1, 42),
(3, 42),
(3, 44),
(3, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(2, 63),
(3, 64);

-- --------------------------------------------------------

--
-- Structure de la table `ef_meal_order`
--

CREATE TABLE `ef_meal_order` (
  `order_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_meal_order`
--

INSERT INTO `ef_meal_order` (`order_id`, `meal_id`, `quantity`) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 4, 1),
(2, 2, 1),
(2, 3, 1),
(3, 2, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ef_order`
--

CREATE TABLE `ef_order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status_order` enum('validated','in_progress','delivered','cancelled') NOT NULL,
  `estimated_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_order`
--

INSERT INTO `ef_order` (`id`, `user_id`, `delivery_address_id`, `billing_address_id`, `date`, `status_order`, `estimated_time`) VALUES
(1, 1, 1, 1, '2017-09-16 10:45:00', 'delivered', NULL),
(2, 2, 2, 2, '2017-09-16 11:30:00', 'in_progress', 960),
(3, 2, 2, 2, '2017-09-16 11:00:00', 'cancelled', NULL),
(4, 4, 4, 4, '2017-09-16 12:28:00', 'cancelled', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ef_user`
--

CREATE TABLE `ef_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `role` enum('user','manager') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `compagny_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ef_user`
--

INSERT INTO `ef_user` (`id`, `firstname`, `name`, `role`, `email`, `phone_number`, `password`, `compagny_name`) VALUES
(1, 'Geoffrey', 'Dupont', 'user', 'geoffrey.c35@gmail.com', '0609322876', '1917e33407c28366c8e3b975b17e7374589312676b90229adb4ce6e58552e223', 'open class rooms'),
(2, 'Adrien', 'Durant', 'user', 'adrien.guidis@gmail.com', '0633694059', '3f455143e75d1e7fd659dea57023496da3bd9f2f8908d1e2ac32641cd819d3e3', 'travailleur ind√©pendant'),
(3, 'Bertrand', 'Dupres', 'manager', 'geoffrey.chazoule@hotmail.fr', '0633694059', '380f9771d2df8566ce2bd5b8ed772b0bb74fd6457fb803ab2d267c394d89c750', 'Express Food'),
(4, 'Cl√©ment', 'Duclos', 'user', 'clement.duclos@gmail.com', '0685963256', 'e8648df64a518b6eda18c1c77a7ed76326308dc41cbbd79fc7827d4be46b1a39', NULL);

--
-- Index pour les tables export√©es
--

--
-- Index pour la table `ef_address`
--
ALTER TABLE `ef_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ef_bill`
--
ALTER TABLE `ef_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ef_daily_meal`
--
ALTER TABLE `ef_daily_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Index pour la table `ef_delivery_man`
--
ALTER TABLE `ef_delivery_man`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ef_ingredients`
--
ALTER TABLE `ef_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ef_meal`
--
ALTER TABLE `ef_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_category_id` (`meal_category_id`);

--
-- Index pour la table `ef_meal_category`
--
ALTER TABLE `ef_meal_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ef_meal_ingredients`
--
ALTER TABLE `ef_meal_ingredients`
  ADD PRIMARY KEY (`meal_id`,`ingredients_id`),
  ADD KEY `ingredients_id` (`ingredients_id`);

--
-- Index pour la table `ef_meal_order`
--
ALTER TABLE `ef_meal_order`
  ADD PRIMARY KEY (`order_id`,`meal_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Index pour la table `ef_order`
--
ALTER TABLE `ef_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `delivery_address_id` (`delivery_address_id`),
  ADD KEY `billing_address_id` (`billing_address_id`);

--
-- Index pour la table `ef_user`
--
ALTER TABLE `ef_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables export√©es
--

--
-- AUTO_INCREMENT pour la table `ef_address`
--
ALTER TABLE `ef_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ef_bill`
--
ALTER TABLE `ef_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ef_daily_meal`
--
ALTER TABLE `ef_daily_meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `ef_delivery_man`
--
ALTER TABLE `ef_delivery_man`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ef_ingredients`
--
ALTER TABLE `ef_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `ef_meal`
--
ALTER TABLE `ef_meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `ef_meal_category`
--
ALTER TABLE `ef_meal_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ef_order`
--
ALTER TABLE `ef_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ef_user`
--
ALTER TABLE `ef_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables export√©es
--

--
-- Contraintes pour la table `ef_address`
--
ALTER TABLE `ef_address`
  ADD CONSTRAINT `ef_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ef_user` (`id`);

--
-- Contraintes pour la table `ef_bill`
--
ALTER TABLE `ef_bill`
  ADD CONSTRAINT `ef_bill_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `ef_order` (`id`);

--
-- Contraintes pour la table `ef_daily_meal`
--
ALTER TABLE `ef_daily_meal`
  ADD CONSTRAINT `ef_daily_meal_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `ef_meal` (`id`);

--
-- Contraintes pour la table `ef_delivery_man`
--
ALTER TABLE `ef_delivery_man`
  ADD CONSTRAINT `ef_delivery_man_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `ef_order` (`id`);

--
-- Contraintes pour la table `ef_meal`
--
ALTER TABLE `ef_meal`
  ADD CONSTRAINT `ef_meal_ibfk_1` FOREIGN KEY (`meal_category_id`) REFERENCES `ef_meal_category` (`id`);

--
-- Contraintes pour la table `ef_meal_ingredients`
--
ALTER TABLE `ef_meal_ingredients`
  ADD CONSTRAINT `ef_meal_ingredients_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `ef_meal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ef_meal_ingredients_ibfk_2` FOREIGN KEY (`ingredients_id`) REFERENCES `ef_ingredients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ef_meal_order`
--
ALTER TABLE `ef_meal_order`
  ADD CONSTRAINT `ef_meal_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `ef_order` (`id`),
  ADD CONSTRAINT `ef_meal_order_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `ef_meal` (`id`);

--
-- Contraintes pour la table `ef_order`
--
ALTER TABLE `ef_order`
  ADD CONSTRAINT `ef_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ef_user` (`id`),
  ADD CONSTRAINT `ef_order_ibfk_2` FOREIGN KEY (`delivery_address_id`) REFERENCES `ef_address` (`id`),
  ADD CONSTRAINT `ef_order_ibfk_3` FOREIGN KEY (`billing_address_id`) REFERENCES `ef_address` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
