create schema Pokemon2;

CREATE TABLE `pokemon` (
  `IDpoke` SMALLINT UNSIGNED NOT NULL ,
  `pokename` char(12) NOT NULL ,
  `HP` TINYINT UNSIGNED NOT NULL,
  `attack` TINYINT UNSIGNED NOT NULL,
  `defense` TINYINT UNSIGNED NOT NULL,
  `spattack` TINYINT UNSIGNED NOT NULL,
  `spdefense` TINYINT UNSIGNED NOT NULL,
  `speed` TINYINT UNSIGNED NOT NULL,
  `Descripcion` char(200) NOT NULL ,
  `altura` INT NOT NULL ,
  `Peso` INT NOT NULL ,
  PRIMARY KEY  (`IDpoke`)
) ENGINE=InnoDB;

CREATE TABLE `type` (

	`IDtype` TINYINT UNSIGNED NOT NULL,
	`typename` char(12) NOT NULL,
	PRIMARY KEY (`IDtype`)
) ENGINE=InnoDB;

CREATE TABLE `poke-type` (
	`IDpoke-type` SMALLINT UNSIGNED NOT NULL ,
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDtype` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke-type`),
	CONSTRAINT `fk_poketype_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_poketype_type` FOREIGN KEY (`IDtype`) REFERENCES `type` (`IDtype`)
) ENGINE=InnoDB;

CREATE TABLE `egggroup` (
  `IDegg` TINYINT UNSIGNED NOT NULL ,
  `eggname` char(12) NOT NULL ,
  PRIMARY KEY  (`IDegg`)
) ENGINE=InnoDB;

CREATE TABLE `abilities` (
	`IDability` TINYINT UNSIGNED NOT NULL,
	`abilityname` char(14) NOT NULL,
	`abilitydescrip` varchar(255) NOT NULL,
	PRIMARY KEY (`IDability`)
) ENGINE=InnoDB;

CREATE TABLE `poke-ability` (
	`IDpoke-ability` TINYINT UNSIGNED NOT NULL,
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDability` TINYINT UNSIGNED NOT NULL,
    `slot` char(1) NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDability`),
	CONSTRAINT `fk_pokeabi_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_pokeabi_abi` FOREIGN KEY (`IDability`) REFERENCES `abilities` (`IDability`)
) ENGINE=InnoDB;

CREATE TABLE `categories` (
  `IDcat` TINYINT UNSIGNED NOT NULL,
  `category` char(8) NOT NULL,
   PRIMARY KEY  (`IDcat`)
) ENGINE=InnoDB;

CREATE TABLE `moves` (
  `IDmove` SMALLINT UNSIGNED NOT NULL,
  `movename` char(16) NOT NULL ,
  `IDtype` TINYINT UNSIGNED NOT NULL,
  `IDcat` TINYINT UNSIGNED NOT NULL,
  `power` TINYINT UNSIGNED NOT NULL,
  `accuracy` TINYINT UNSIGNED NOT NULL,
  `PP` TINYINT UNSIGNED NOT NULL,
  `effect` varchar(255) NOT NULL,
  PRIMARY KEY  (`IDmove`),
  CONSTRAINT `fk_moves_type` FOREIGN KEY (`IDtype`) REFERENCES `type` (`IDtype`),
  CONSTRAINT `fk_moves_cat` FOREIGN KEY (`IDcat`) REFERENCES `categories` (`IDcat`)
) ENGINE=InnoDB;

CREATE TABLE `learnsets` (
	`IDLearnsets` SMALLINT UNSIGNED NOT NULL ,
	`IDpoke` SMALLINT UNSIGNED NOT NULL,
	`IDmove` SMALLINT UNSIGNED NOT NULL,
    `level` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDmove`),
	CONSTRAINT `fk_learnset_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_learnset_move` FOREIGN KEY (`IDmove`) REFERENCES `moves` (`IDmove`)
) ENGINE=InnoDB;

CREATE TABLE `poke-egg` (
	`IDPoke-egg` SMALLINT UNSIGNED NOT NULL ,
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`IDegg` TINYINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke`,`IDegg`),
	CONSTRAINT `fk_pokeegg_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_pokeegg_egg` FOREIGN KEY (`IDegg`) REFERENCES `egggroup` (`IDegg`)
) ENGINE=InnoDB;

CREATE TABLE `Region` (
  `ID_Region` SMALLINT UNSIGNED NOT NULL,
  `NombreRegion` char(16) NOT NULL ,
  `Latitud` INT NOT NULL,
  `Longitud` INT NOT NULL,
   PRIMARY KEY  (`ID_Region`)
) ENGINE=InnoDB;

CREATE TABLE `poke-region` (
	`IDPoke-region` int(11) NOT NULL AUTO_INCREMENT,
	`IDpoke` SMALLINT UNSIGNED NOT NULL ,
	`ID_Region` SMALLINT UNSIGNED NOT NULL,
	PRIMARY KEY (`IDpoke-Region`),
	CONSTRAINT `fk_poke-region_poke` FOREIGN KEY (`IDpoke`) REFERENCES `pokemon` (`IDpoke`),
	CONSTRAINT `fk_poke-region_Region` FOREIGN KEY (`ID_Region`) REFERENCES `Region` (`ID_Region`)
) ENGINE=InnoDB;



INSERT INTO `pokemon` VALUES (1, 'Snorlax', 78, 80, 83, 90, 110, 80, 'Ta Gordito', 210 ,500);
INSERT INTO `pokemon` VALUES (2, 'Garchomp', 60, 78, 80, 95, 110, 85, 'Tiburon mamado', 215 ,123);
INSERT INTO `pokemon` VALUES (3, 'Mamoswine', 78, 80, 83, 90, 110, 80, 'Un mamut enojao', 263 ,291);
INSERT INTO `pokemon` VALUES (4, 'Machamp', 78, 80, 83, 90, 110, 80, 'Vato mamado de 4 brazos', 168 ,158);
INSERT INTO `pokemon` VALUES (5, 'Ursaring', 78, 80, 83, 90, 110, 80, 'Oso barbon', 170 ,115);
INSERT INTO `pokemon` VALUES (6, 'Vaporeon', 78, 80, 83, 90, 110, 80, 'Ta Gordito', 92 ,23);
INSERT INTO `pokemon` VALUES (7, 'Conkeldurr', 78, 80, 83, 90, 110, 80, 'Albañil mamao con dos pilares', 125 ,69);
INSERT INTO `pokemon` VALUES (8, 'Grandbull', 78, 80, 83, 90, 110, 80, 'Pitbul Rosao', 146 ,47);
INSERT INTO `pokemon` VALUES (9, 'Charizard', 78, 80, 83, 90, 110, 80, 'Dragon Naranja nojao', 151 ,61);
INSERT INTO `pokemon` VALUES (10, 'Empoleon', 78, 80, 83, 90, 110, 80, 'Pinguino emperador', 163 ,74);
INSERT INTO `pokemon` VALUES (11, 'Golem', 78, 80, 83, 90, 110, 80, 'Una bolita enojada', 188 ,370);
INSERT INTO `pokemon` VALUES (12, 'Wailord', 78, 80, 83, 90, 110, 80, 'Una ballena azul', 1600 , 579);
INSERT INTO `pokemon` VALUES (13, 'Carracosta', 78, 80, 83, 90, 110, 80, 'Tortuga golpea humanos', 111 ,60);
INSERT INTO `pokemon` VALUES (14, 'Jynx', 78, 80, 83, 90, 110, 80, 'Morra morada con vestido', 147 ,41);
INSERT INTO `pokemon` VALUES (15, 'Miltank', 78, 80, 83, 90, 110, 80, 'Tanque de leche, que mas tedigo pa', 115 ,50);


INSERT INTO `type` VALUES (1, 'Normal');
INSERT INTO `type` VALUES (2, 'Fighting');
INSERT INTO `type` VALUES (3, 'Flying');
INSERT INTO `type` VALUES (4, 'Poison');
INSERT INTO `type` VALUES (5, 'Ground');
INSERT INTO `type` VALUES (6, 'Rock');
INSERT INTO `type` VALUES (7, 'Bug');
INSERT INTO `type` VALUES (8, 'Ghost');
INSERT INTO `type` VALUES (9, 'Steel');
INSERT INTO `type` VALUES (10, 'Fire');
INSERT INTO `type` VALUES (11, 'Water');
INSERT INTO `type` VALUES (12, 'Grass');
INSERT INTO `type` VALUES (13, 'Electric');
INSERT INTO `type` VALUES (14, 'Psychic');
INSERT INTO `type` VALUES (15, 'Ice');
INSERT INTO `type` VALUES (16, 'Dragon');
INSERT INTO `type` VALUES (17, 'Dark');
INSERT INTO `type` VALUES (18, 'Fairy');


INSERT INTO `egggroup` VALUES (1, 'Monster');
INSERT INTO `egggroup` VALUES (2, 'Water 1');
INSERT INTO `egggroup` VALUES (3, 'Bug');
INSERT INTO `egggroup` VALUES (4, 'Flying');
INSERT INTO `egggroup` VALUES (5, 'Field');
INSERT INTO `egggroup` VALUES (6, 'Fairy');
INSERT INTO `egggroup` VALUES (7, 'Grass');
INSERT INTO `egggroup` VALUES (8, 'Human-Like');
INSERT INTO `egggroup` VALUES (9, 'Water 3');
INSERT INTO `egggroup` VALUES (10, 'Mineral');
INSERT INTO `egggroup` VALUES (11, 'Amorphous');
INSERT INTO `egggroup` VALUES (12, 'Water 2');
INSERT INTO `egggroup` VALUES (13, 'Ditto');
INSERT INTO `egggroup` VALUES (14, 'Dragon');
INSERT INTO `egggroup` VALUES (15, 'Undiscovered');
INSERT INTO `egggroup` VALUES (16, 'Genderless');


INSERT INTO `abilities` VALUES (1, 'Overgrow', 'Amplifies Grass-type attacks when HP is low');
INSERT INTO `abilities` VALUES (2, 'Blaze', 'Amplifies Fire-type attacks when HP is low');
INSERT INTO `abilities` VALUES (3, 'Torrent', 'Amplifies Water-type attacks when HP is low');
INSERT INTO `abilities` VALUES (4, 'Compound Eyes', 'Boosts Accuracy');
INSERT INTO `abilities` VALUES (5, 'Swarm', 'Amplifies Bug-type attacks when HP is low');
INSERT INTO `abilities` VALUES (6, 'Keen Eye', 'Accuracy cannot be reduced by an opponent');
INSERT INTO `abilities` VALUES (7, 'Tangled Feet', 'Raises Speed when confused');
INSERT INTO `abilities` VALUES (8, 'Static', 'May paralyze an opponent that makes contact');
INSERT INTO `abilities` VALUES (9, 'Sand Veil', 'Increases Evasion in a sandstorm');
INSERT INTO `abilities` VALUES (10, 'Cute Charm', 'May cause infatuation on contact');
INSERT INTO `abilities` VALUES (11, 'Magic Guard', 'Grants total protection from indirect damage');
INSERT INTO `abilities` VALUES (12, 'Water Absorb', 'Water-type attacks heal the Pokémon');
INSERT INTO `abilities` VALUES (13, 'Damp', 'Prevents use of self-destruction attacks by any Pokémon on the field');
INSERT INTO `abilities` VALUES (14, 'Levitate', 'Grants immunity to Ground-type moves');
INSERT INTO `abilities` VALUES (15, 'Oblivious', 'Prevents infatuation');

INSERT INTO `categories` VALUES (1, 'Physical');
INSERT INTO `categories` VALUES (2, 'Special');

INSERT INTO `moves` VALUES (1, 'Hydro Pump', 11, 2, 110, 80, 5, 'None');
INSERT INTO `moves` VALUES (2, 'Rock Blast', 6, 1, 25, 90, 10, 'Hits 2-5 times');
INSERT INTO `moves` VALUES (3, 'Spike Cannon', 1, 1, 20, 100, 15, 'Hits 2-5 times');
INSERT INTO `moves` VALUES (4, 'Ancient Power', 6, 2, 60, 200, 5, 'May raise all stats');
INSERT INTO `moves` VALUES (5, 'Brine', 11, 2, 65, 100, 15, 'Double damage against opponent whose HP is below 1/2');
INSERT INTO `moves` VALUES (6, 'Mud Shot', 5, 2, 55, 95, 15, 'Lowers targets speed');
INSERT INTO `moves` VALUES (7, 'Rollout', 6, 1, 30, 90, 20, 'Attacks for five turns, doubling damage unless interrupted');
INSERT INTO `moves` VALUES (8, 'Water Gun', 11, 2, 40, 100, 25, 'None');
INSERT INTO `moves` VALUES (9, 'Bite', 17, 1, 60, 100, 25, 'May cause the target to flinch');

INSERT INTO `learnsets` VALUES (1,1, 1, 75);
INSERT INTO `learnsets` VALUES (2,2, 2, 56);
INSERT INTO `learnsets` VALUES (3,3, 3, 40);
INSERT INTO `learnsets` VALUES (4,4, 4, 37);
INSERT INTO `learnsets` VALUES (5,5, 5, 28);
INSERT INTO `learnsets` VALUES (6,6, 6, 25);
INSERT INTO `learnsets` VALUES (7,7, 7, 16);
INSERT INTO `learnsets` VALUES (8,8, 8, 10);
INSERT INTO `learnsets` VALUES (9,9, 9, 7);
INSERT INTO `learnsets` VALUES (10, 10,5, 60);
INSERT INTO `learnsets` VALUES (11,11, 1, 16);
INSERT INTO `learnsets` VALUES (12,12, 2, 7);
INSERT INTO `learnsets` VALUES (13,13, 3, 40);
INSERT INTO `learnsets` VALUES (14,14, 4, 37);
INSERT INTO `learnsets` VALUES (15,15, 5, 28);

INSERT INTO `region` VALUES (1, 'Cino', 75, 100);
INSERT INTO `region` VALUES (2, 'Kanto', 460, 300);
INSERT INTO `region` VALUES (3, 'Johto', 95, 200);
INSERT INTO `region` VALUES (4, 'Hoen', 78, 180);
INSERT INTO `region` VALUES (5, 'Sinnoh', 120, 340);
INSERT INTO `region` VALUES (6, 'Teselia', 175, 450);
INSERT INTO `region` VALUES (7, 'Kalos', 820, 600);
INSERT INTO `region` VALUES (8, 'Alola', 750, 49);
INSERT INTO `region` VALUES (9, 'Galar', 490, 407);
INSERT INTO `region` VALUES (10, 'Hisuir', 296, 295);

INSERT INTO `poke-ability` VALUES (1, 1, 1, 'a');
INSERT INTO `poke-ability` VALUES (2, 2, 2, 'a');
INSERT INTO `poke-ability` VALUES (3, 3, 3, 'a');
INSERT INTO `poke-ability` VALUES (4, 4, 4, 'a');
INSERT INTO `poke-ability` VALUES (5, 5, 5, 'a');
INSERT INTO `poke-ability` VALUES (6, 6, 6, 'a');
INSERT INTO `poke-ability` VALUES (7, 7, 7, 'a');
INSERT INTO `poke-ability` VALUES (8, 8, 8, 'a');
INSERT INTO `poke-ability` VALUES (9, 9, 9, 'a');
INSERT INTO `poke-ability` VALUES (10, 10, 10, 'a');
INSERT INTO `poke-ability` VALUES (11, 11, 11, 'a');
INSERT INTO `poke-ability` VALUES (12, 12, 12, 'a');
INSERT INTO `poke-ability` VALUES (13, 13, 13, 'a');
INSERT INTO `poke-ability` VALUES (14, 13, 13, 'a');
INSERT INTO `poke-ability` VALUES (15, 15, 11, 'a');

INSERT INTO `poke-egg` VALUES (1, 1, 1);
INSERT INTO `poke-egg` VALUES (2, 2, 2);
INSERT INTO `poke-egg` VALUES (3, 3, 3);
INSERT INTO `poke-egg` VALUES (4, 4, 4);
INSERT INTO `poke-egg` VALUES (5, 5, 5);
INSERT INTO `poke-egg` VALUES (6, 6, 6);
INSERT INTO `poke-egg` VALUES (7, 7, 7);
INSERT INTO `poke-egg` VALUES (8, 8, 8);
INSERT INTO `poke-egg` VALUES (9, 9, 9);
INSERT INTO `poke-egg` VALUES (10, 10, 10);
INSERT INTO `poke-egg` VALUES (11, 11, 11);
INSERT INTO `poke-egg` VALUES (12, 12, 12);
INSERT INTO `poke-egg` VALUES (13, 13, 13);
INSERT INTO `poke-egg` VALUES (14, 13, 13);
INSERT INTO `poke-egg` VALUES (15, 15, 11);

INSERT INTO `poke-region` VALUES (1, 1, 1);
INSERT INTO `poke-region` VALUES (2, 2, 2);
INSERT INTO `poke-region` VALUES (3, 3, 3);
INSERT INTO `poke-region` VALUES (4, 4, 4);
INSERT INTO `poke-region` VALUES (5, 5, 5);
INSERT INTO `poke-region` VALUES (6, 6, 6);
INSERT INTO `poke-region` VALUES (7, 7, 7);
INSERT INTO `poke-region` VALUES (8, 8, 8);
INSERT INTO `poke-region` VALUES (9, 9, 9);
INSERT INTO `poke-region` VALUES (10, 10, 10);
INSERT INTO `poke-region` VALUES (11, 11, 11);
INSERT INTO `poke-region` VALUES (12, 10, 10);
INSERT INTO `poke-region` VALUES (13, 13, 8);
INSERT INTO `poke-region` VALUES (14, 13, 5);
INSERT INTO `poke-region` VALUES (15, 15, 9);

INSERT INTO `poke-type` VALUES (1, 1, 1);
INSERT INTO `poke-type` VALUES (2, 2, 2);
INSERT INTO `poke-type` VALUES (3, 3, 3);
INSERT INTO `poke-type` VALUES (4, 4, 4);
INSERT INTO `poke-type` VALUES (5, 5, 5);
INSERT INTO `poke-type` VALUES (6, 6, 6);
INSERT INTO `poke-type` VALUES (7, 7, 7);
INSERT INTO `poke-type` VALUES (8, 8, 8);
INSERT INTO `poke-type` VALUES (9, 9, 9);
INSERT INTO `poke-type` VALUES (10, 10, 10);
INSERT INTO `poke-type` VALUES (11, 11, 11);
INSERT INTO `poke-type` VALUES (12, 12, 12);
INSERT INTO `poke-type` VALUES (13, 13, 13);
INSERT INTO `poke-type` VALUES (14, 13, 13);
INSERT INTO `poke-type` VALUES (15, 15, 11);


UPDATE pokemon 
	SET pokename = 'Puchachu'
    WHERE IDpoke = 6;
UPDATE pokemon 
	SET pokename = 'AMLO'
    WHERE IDpoke = 10;
UPDATE pokemon 
	SET pokename = 'Colosio'
    WHERE IDpoke = 8;
UPDATE pokemon 
	SET pokename = 'Yo mate a'
    WHERE IDpoke = 7;
UPDATE pokemon 
	SET altura = 520
    WHERE IDpoke = 2;
UPDATE pokemon 
	SET altura = 178
    WHERE IDpoke = 14;
UPDATE pokemon 
	SET peso = 76
    WHERE IDpoke = 5;
UPDATE pokemon 
	SET altura = 68
    WHERE IDpoke = 7;
UPDATE pokemon 
	SET peso = 100
    WHERE IDpoke = 2;
UPDATE pokemon 
	SET altura = 300
    WHERE IDpoke = 1;


DELETE FROM moves
	where IDmove = 15;
DELETE FROM abilities
	where IDability = 15;
DELETE FROM egggroup
	where IDegg = 15;
DELETE FROM moves
	where  IDmove = 14;
DELETE FROM abilities
	where IDability = 14;
    
    
 #Número total de pokemón

select count(*) as Cantidad_de_pokemones from pokemon;

#Mostrar nombre de pokémon y altura de los pokémon con altura mayor a 1.70m

select pokename, altura from pokemon where altura > 170;

#Mostrar nombre de movimiento y su descripción de efecto de los movimientos que no tengan ningún efecto

select movename, effect from moves where effect like "None";

#Mostrar nombre de movimiento y su descripción de efecto de los movimientos que tengan efecto

select movename, effect from moves where effect not like "None";

#Mostrar nombre, altura, peso y descripción de los pokémon que sean gordos o que se vean fuertes

select pokename, altura, Peso, Descripcion from pokemon where Descripcion like "%Ta Gordito%" or Descripcion like "%mamado%" or Descripcion like "%mamao%";

#Mostrar nombre de movimiento, poder y precisión de los movimientos que tengan más de 45 y menos de 100 en poder 
# y más de 95 y menos o igual de 100 en precisión

select movename, power, accuracy from moves where power between 45 and 100 and accuracy > 95 and accuracy <= 100;
    
#Mostrar nombre del pokémon, HP, peso, altura y nombre de tipo 

SELECT pokename, HP, Peso, altura, typename
	from pokemon, type;

#Mostrar nombre del pokémony nombre de tipo. Pero sólo de los sean tipo agua, fantasma o agua

SELECT pokename, typename
	from pokemon, type
	WHERE typename = "fantasma" or "agua";

#Mostrar nombre de movimiento, nombre de tipo y categoría

SELECT movename, typename, category
	from moves, type, categories;

#Mostrar nombre y peso los 8 pokémon más pesados de forma ordenada de mayor a menor

SELECT pokename, Peso
	from pokemon
	order by Peso desc;

#Mostrar el promedio de peso y altura de los pokémon

select avg(peso) from pokemon;
select avg(altura) from pokemon;

#Mostrar ID de movimiento y cuantos pokemones usan ese movimiento. Pero sólo los movimientos que estén en más de un pokémon

select IDmove ,count(*) as NUmero_total_pokemones_que_usan_este_movimiento from moves;
