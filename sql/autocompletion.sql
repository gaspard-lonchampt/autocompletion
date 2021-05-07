-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 07 mai 2021 à 14:01
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `monster`
--

CREATE TABLE `monster` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `species` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `monster`
--

INSERT INTO `monster` (`id`, `name`, `type`, `species`, `description`) VALUES
(1, 'Aptonoth', 'small', 'herbivore', 'Docile herbivores that graze in packs. Their meat is considered a delicacy and is rich in nutrients. If one member of the herd is attacked, the rest will flee immediately.'),
(2, 'Jagras', 'small', 'fanged wyvern', 'Members of the Great Jagras pack, these smaller monsters will flee upon seeing one of their own perish. They\'re also known for ambushing larger monsters at a moment\'s notice.'),
(3, 'Mernos', 'small', 'wingdrake', 'Wingdrakes that feast on scatternuts. The flock will travel great distances when startled, making them an invaluable mode of transportation for clever hunters.'),
(4, 'Vespoid', 'small', 'neopteron', 'Insects that paralyze their targets with their long stingers. They break easily, so attack them with poison or slinger ammo if you want to carve them.'),
(5, 'Mosswine', 'small', 'herbivore', 'Mosswine are known for their excellent sense of smell, and are often found foraging for fungi. If you\'re hunting for mushrooms, follow the Mosswine to the motherlode.'),
(6, 'Apceros', 'small', 'herbivore', 'Herbivores that inhabit the Wildspire Waste. They\'ve developed particularly hard hide to ward off attackers, and are known to gather in groups to defend themselves.'),
(7, 'Kestodon', 'small', 'herbivore', 'Female Kestodon will alert the pack of danger, while the males will violently charge would-be threats. Their rushing charges can be blocked, however, leaving them open to attacks.'),
(8, 'Noios', 'small', 'wingdrake', 'Wingdrakes that produce a sound similar to screamer pods when startled. Use meat to get their attention, and then hunt them for materials, or use them for transportation.'),
(9, 'Gajau', 'small', 'fish', 'Vicious piscine that form groups to defend their territory from intruders. Be sure not to venture too closely to their habitat!'),
(10, 'Kelbi', 'small', 'herbivore', 'Small herbivores known for their gentle demeanor and the medicinal properties of their horns. Those wishing to harvest a horn should aim for the head when attacking them.'),
(11, 'Raphinos', 'small', 'wingdrake', 'Wingdrakes inhabiting the Coral Highlands. They group up to steal the eggs of other animals, but this in turn exposes them to the attention of larger, more vicious predators.'),
(12, 'Shamos', 'small', 'fanged wyvern', 'Small nocturnal monsters. They\'re particularly vulnerable to Tzitzi-Ya-Ku\'s blinding flash, but have been known to gang up on enemies.'),
(13, 'Girros', 'small', 'fanged wyvern', 'Monsters known to attack in packs, using the deadly vapor of the Rotten Vale to their advantage. They\'re known for crippling targets with paralyzing fangs.'),
(14, 'Hornetaur', 'small', 'neopteron', 'Small insects that are found primarily on land. They\'re highly territorial and will attack anything that approaches them. Gather their materials by attacking them with the slinger.'),
(15, 'Gastodon', 'small', 'herbivore', 'Pack monsters that inhabit the Elder\'s Recess. They are easily angered by intruders, and will charge at monsters twice their size.'),
(16, 'Barnos', 'small', 'wingdrake', 'Fervid wingdrakes that have flourished under harsh living conditions. They target intruders with a unique acidic agent, and then attack as a swarm.'),
(17, 'Great Jagras', 'large', 'fanged wyvern', 'The pack leader of the Jagras. When hungry, Great Jagras are known to attack monsters even stronger than themselves. It balloons to unbelievable proportions after swallowing prey.'),
(18, 'Kulu-Ya-Ku', 'large', 'bird wyvern', 'An odd bird wyvern that has developed limbs capable of carrying weapons. It\'s been spotted stealing eggs from nests found in the Ancient Forest and Wildspire Waste.'),
(19, 'Pukei-Pukei', 'large', 'bird wyvern', 'A bird wyvern known to possess poisonous toxins in its body. It\'s been spotted storing scatternuts in its mouth or tail, coating them with poison and spitting them out at threats.'),
(20, 'Barroth', 'large', 'brute wyvern', 'Barroth seek out ants, their favorite snack, and mark their territory with mud. They attack potential rivals with their devastating charging attack.'),
(21, 'Jyuratodus', 'large', 'piscine wyvern', 'A large piscine wyvern that inhabits the swamps of the Wildspire Waste. It uses mud to capture prey, and it\'s known to battle Barroth over territory.'),
(22, 'Tobi-Kadachi', 'large', 'fanged wyvern', 'A fanged wyvern that flies among the trees of the Ancient Forest. Its penchant to brush against the ground and the trees as it moves around builds up static electricity within its fur.'),
(23, 'Anjanath', 'large', 'brute wyvern', 'The Anjanath patrols the Ancient Forest, looking for its favorite meal, Aptonoth. This belligerent monster will attack anything without hesitation.'),
(24, 'Azure Rathalos', 'large', 'flying wyvern', 'An azure-colored subspecies of Rathalos. More mobile than their standard cousins, they locate prey from the air and quickly swoop in for the kill.'),
(25, 'Bazelgeuse', 'large', 'flying wyvern', 'A nefarious flying wyvern that travels the New World in search of prey. It scatters explosive scales over a wide area to prey on whatever gets caught in the blast.'),
(26, 'Behemoth', 'large', 'elder dragon', 'A powerful beast from another world. Its large horns and muscular frame defy nature. Unique strategies are required to battle it.'),
(27, 'Deviljho', 'large', 'brute wyvern', 'A monster that must feed constantly and will devour anything in its path, even feeding on the largest of monsters with its massive jowls.'),
(28, 'Diablos', 'large', 'flying wyvern', 'The apex monster of the Wildspire Waste.\nA menacing, territorial beast that lurks underground.\nLoud noises will cause it to lunge out of the sand in search of prey.'),
(29, 'Black Diablos', 'large', 'flying wyvern', 'These black-shelled Diablos are actually female Diablos in heat. The color signals their aggressiveness and heightened hostility to other creatures in their habitat.'),
(30, 'Dodogama', 'large', 'fanged wyvern', 'A monster that devours rock as its primary diet. The Crystals it devours mix with its saliva to produce explosive minerals that it can spit at its enemies.'),
(31, 'Great Girros', 'large', 'fanged wyvern', 'A monster that scavenges for meals dropped from the Coral Highlands.\nIt acts as the alpha leader of a Girros pack, and sports giant fangs that paralyze its prey.'),
(34, 'Kushala Daora', 'large', 'elder dragon', 'An elder dragon that shields itself with fierce winds, preventing anyone from approaching it. Its skin consists of hard, metallic scales.'),
(35, 'Lavasioth', 'large', 'piscine wyvern', 'Lavasioth utilizes molten lava as armor. They are extremely aggressive and will attack without prejudice until the threat has been eliminated.'),
(36, 'Legiana', 'large', 'flying wyvern', 'The apex monster of the Coral Highlands, whose diet primarily consists of Raphinos. It emits a chilling wind from its body, which dulls its prey\'s ability to escape.'),
(37, 'Lunastra', 'large', 'elder dragon', 'A rare female Elder Dragon that litters the air with hot blue dust. Reports of it traveling with her mate, Teostra, are still unconfirmed.'),
(38, 'Nergigante', 'large', 'elder dragon', 'A terrible elder dragon that appears when other elders are in the vicinity. Its penchant for destruction is well documented.'),
(39, 'Odogaron', 'large', 'fanged wyvern', 'A terrifying monster that scours the Rotten Vale for carrion. Its highly aggressive nature means that anything, be it monster or man, is a potential meal.'),
(40, 'Paolumu', 'large', 'flying wyvern', 'Paolumu feast on eggs found in the Coral Highlands. They are able to propel through the air using unique sacs in their bodies, and attack with their extremely hard tails.'),
(41, 'Radobaan', 'large', 'brute wyvern', 'A gigantic brute wyvern that eats the bones of carcasses found in the Rotten Vale, using some of it as armor. It also rolls into a ball as a form of attack and transportation.'),
(42, 'Rathalos', 'large', 'flying wyvern', 'The apex monster of the Ancient Forest, also known as the \"King of the Skies\". A fierce wyvern that descends upon invaders, attacking with its venomous claws and fiery breath.'),
(43, 'Rathian', 'large', 'flying wyvern', 'A wyvern known as the \"Queen of the Land.\" Terrestrial predator, it overpowers its prey with a venomous tail and powerful legs.'),
(44, 'Pink Rathian', 'large', 'flying wyvern', 'A subspecies with vibrant pink scales. Pink Rathians wield their toxic tails more deftly than normal Rathians, weakening prey with poison before moving in for the kill.'),
(45, 'Teostra', 'large', 'elder dragon', 'A brutal elder dragon wreathed in flames that spits blazing fire. Teostra are of such a fierce and deadly nature that the Guild closely monitors their movements.'),
(48, 'Tzitzi-Ya-Ku', 'large', 'bird wyvern', 'This odd monster blinds both prey and enemies with a special pulsing organ near its head. It then uses its strong legs to deliver finishing blows.'),
(49, 'Uragaan', 'large', 'brute wyvern', 'Large Brute Wyverns that feed on ore, using their mighty jaws to crush solid rock to powder. They\'ve been known to confront Lavasioths over territory disputes.'),
(50, 'Vaal Hazak', 'large', 'elder dragon', 'A grotesque Elder Dragon, that inhabits the deepest part of the Rotten Vale. It uses the fatal vapor of the vale in what appears to be a symbiotic relationship.'),
(51, 'Xeno\'jiiva', 'large', 'elder dragon', 'RESEARCHING. Threat level unknown.'),
(52, 'Zorah Magdaros', 'large', 'elder dragon', 'An elder dragon that rises from the earth like a volcano. Where it\'s headed, and why, the Research Commission has yet to figure out.'),
(53, 'Leshen', 'large', 'relict', 'Dwelling deep inside the forest, these creatures use their innate magic to control all flora and fauna within their territory.'),
(54, 'Ancient Leshen', 'large', 'relict', 'An old leshen that arrived through a portal to assume control over the Ancient Forest. Sometimes revered as an indigenous deity.'),
(55, 'Safi\'jiiva', 'large', 'elder dragon', 'The fully-grown form of Xeno\'jiiva. It absorbs energy from its environment to heal itself and change the ecosystem.'),
(56, 'Stygian Zinogre', 'large', 'fanged wyvern', 'Has a symbiotic relationship with Dracophage Bugs, which it releases like bullets. Becomes even more dangerous when covered in light.'),
(57, 'Rajang', 'large', 'fanged beast', 'An ultra-aggressive creature that few have a chance of surviving against. Sports powerful arms that pack a punch, and turns gold when angry.'),
(58, 'Viper Tobi-Kadachi', 'large', 'fanged wyvern', 'The tail of this subspecies secretes a toxin while its fangs paralyze prey. It can also glide without climbing trees.'),
(59, 'Namielle', 'large', 'elder dragon', 'An Elder Dragon said to be able to command water and use it as a shield. Though very few sightings have ever been reported, they mention \'exploding water\' and \'bright glowing lights.\' Its existence remains shrouded in mystery.'),
(60, 'Zinogre', 'large', 'fanged wyvern', 'Lightning courses through the fur and unique plating of this fanged wyvern. It is most deadly in its supercharged state.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
