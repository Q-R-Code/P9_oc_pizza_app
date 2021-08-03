INSERT INTO `ocpizza`.`restaurant`
(`name`,`address`,`city`,`zip_code`)
VALUES
('OC Pizza Amiens', '11 rue du haut', 'Amiens', 80000),
('OC Pizza Lille', '12 rue du bas', 'Lille', 59000),
('OC Pizza Paris', '13 rue du milieu', 'Paris', 75000),
('OC Pizza Toulouse', '14 rue du centre', 'Toulouse', 31000),
('OC Pizza Bordeaux', '15 rue du paradis', 'Amiens', 33000);

INSERT INTO `ocpizza`.`account`
(`last_name`,`first_name`,`email`,`password`,`restaurant_id`)
VALUES
('Dupont', 'Martine', 'martinedupont@gmail.com', 'martine123', 1),
('Clooney', 'Didier', 'nespresso@gmail.com', 'whatelse123', 1),
('Pignon', 'Mathieu', 'pignonmat@gmail.com', 'matdu75', 3),
('Lordi', 'Jeanne', 'jeannelordi@gmail.com', 'jorjor0000', 2),
('Pompidou', 'Estelle', 'hethel31000@gmail.com', 'hethel8585', 4),
('Bouquet', 'Vivienne', 'viviboubou@gmail.com', 'vivi8989', 4),
('Gerard', 'Bernard', 'bernardgerard@gmail.com','gegebernard11', 3),
('Bridou', 'Justin', 'bridoujustin@gmail.com','justinlefou80', 2),
('Lasalle', 'Jean-marie', 'jmlasalle@gmail.com','jeanlasallebg', 1);

INSERT INTO `ocpizza`.`customer`
(`address`,`account_id`)
VALUES
('978 avenue paul breton', 1),
('23 rue de la fosse au lait', 2),
('87 rue dejean', 3),
('87 rue du pamplemous', 4),
('16 rue pierre mathieu', 5);

INSERT INTO `ocpizza`.`staff`
(`role`,`account_id`)
VALUES
('Vendeur', 6),
('Pizzaïolo', 7),
('Livreur', 8),
('Manager', 9);

INSERT INTO `ocpizza`.`ingredient`
(`name`,`description`)
VALUES
('Tomate', 'Tomates rouge 100gr'),
('Champignon', 'Champignons de paris barquette 1Kg'),
('Sauce tomate', 'Pot de sauce tomate 2,5KG'),
('Merguez', 'Merguez unité'),
('Saucisse', 'Saucisse de toulouse unité'),
('Farine', 'Farine 100gr'),
('Oeuf', 'Oeufs calibre 1'),
('Frommage chevre', 'Buche chevre 120gr'),
('Mozzarella', 'Mozzarella di bufala 100gr'),
('Roquefort', 'Roquefort français 150gr');

INSERT INTO `ocpizza`.`stock`
(`quantity`,`restaurant_id`,`ingredient_id`)
VALUES
(5, 1, 1),
(3, 1, 2),
(3, 1, 3),
(15, 1, 4),
(15, 1, 5),
(50, 1, 6),
(60, 1, 7),
(9, 1, 8),
(7, 1, 9),
(5, 1, 10);

INSERT INTO `ocpizza`.`pizza`
(`name`,`description`,`price`)
VALUES
('Andalouse', 'Merguez, saucisse, sauce tomate, gruyeres, oeuf', 12.99),
('3 Frommages', 'Chevre, mozzarella, roquefort, base sauce tomate', 13.99),
('Savoyard', 'Oeufs, saucisses, tomates', 14.99);

INSERT INTO `ocpizza`.`recipe`
(`quantity`,`comment`,`pizza_id`,`ingredient_id`)
VALUES
(2, 'Couper les tomates en rondelles', 3, 1),
(1, 'Mettre un jaune d oeuf au centre de la pizza pour le dréssage', 3, 7),
(2, 'Couper en morceau de 1cm d epaisseur', 3, 5);

INSERT INTO `ocpizza`.`command`
(`status`,`method_payment`,`total_price`,`account_id`,`restaurant_id`)
VALUES
('En cours de préparation', 'En ligne', 26.98, 1, 1),
('Commande prête', 'Espece', 14.99, 2, 1);

INSERT INTO `ocpizza`.`detail_command`
(`command_id`, `pizza_id`)
VALUES
(1, 1),
(1, 2),
(2, 3);






