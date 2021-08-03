
CREATE TABLE restaurant (
                restaurant_id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(50) NOT NULL,
                address VARCHAR(200) NOT NULL,
                city VARCHAR(50) NOT NULL,
                zip_code INT NOT NULL,
                PRIMARY KEY (restaurant_id)
);


CREATE TABLE account (
                account_id INT AUTO_INCREMENT NOT NULL,
                last_name VARCHAR(50) NOT NULL,
                first_name VARCHAR(50) NOT NULL,
                email VARCHAR(150) NOT NULL,
                password VARCHAR(150) NOT NULL,
                restaurant_id INT NOT NULL,
                PRIMARY KEY (account_id),
                UNIQUE KEY `email_UNIQUE` (`email`)
);


CREATE TABLE customer (
                account_id INT NOT NULL,
                address VARCHAR(150) NOT NULL,
                PRIMARY KEY (account_id)
);


CREATE TABLE staff (
                account_id INT NOT NULL,
                role VARCHAR(50) NOT NULL,
                PRIMARY KEY (account_id)
);


CREATE TABLE command (
                command_id INT AUTO_INCREMENT NOT NULL,
                status VARCHAR(50) NOT NULL,
                date_order DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
                method_payment VARCHAR(50) NOT NULL,
                total_price FLOAT NOT NULL,
                account_id INT NOT NULL,
                restaurant_id INT NOT NULL,
                PRIMARY KEY (command_id)
);


CREATE TABLE ingredient (
                ingredient_id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(50) NOT NULL,
                description VARCHAR(150) NOT NULL,
                PRIMARY KEY (ingredient_id),
                UNIQUE KEY `name_UNIQUE` (`name`)
);


CREATE TABLE pizza (
                pizza_id INT AUTO_INCREMENT NOT NULL,
                name VARCHAR(50) NOT NULL,
                description VARCHAR(500) NOT NULL,
                price FLOAT NOT NULL,
                PRIMARY KEY (pizza_id),
                UNIQUE KEY `name_UNIQUE` (`name`)
);


CREATE TABLE detail_command (
                command_id INT NOT NULL,
                pizza_id INT NOT NULL,
                PRIMARY KEY (command_id, pizza_id)
);


CREATE TABLE stock (
                restaurant_id INT NOT NULL,
                ingredient_id INT NOT NULL,
                quantity INT NOT NULL,
                PRIMARY KEY (restaurant_id, ingredient_id)
);


CREATE TABLE recipe (
                ingredient_id INT NOT NULL,
                pizza_id INT NOT NULL,
                quantity INT NOT NULL,
                comment VARCHAR(1000),
                PRIMARY KEY (ingredient_id, pizza_id)
);


ALTER TABLE account ADD CONSTRAINT restaurant_account_fk
FOREIGN KEY (restaurant_id)
REFERENCES restaurant (restaurant_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE command ADD CONSTRAINT restaurant_order_fk
FOREIGN KEY (restaurant_id)
REFERENCES restaurant (restaurant_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT restaurant_stock_fk
FOREIGN KEY (restaurant_id)
REFERENCES restaurant (restaurant_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE command ADD CONSTRAINT account_order_fk
FOREIGN KEY (account_id)
REFERENCES account (account_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE staff ADD CONSTRAINT account_staff_fk
FOREIGN KEY (account_id)
REFERENCES account (account_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE customer ADD CONSTRAINT account_customer_fk
FOREIGN KEY (account_id)
REFERENCES account (account_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE detail_command ADD CONSTRAINT command_detail_command_fk
FOREIGN KEY (command_id)
REFERENCES command (command_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredient_id)
REFERENCES ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recipe ADD CONSTRAINT ingredient_recipe_fk
FOREIGN KEY (ingredient_id)
REFERENCES ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recipe ADD CONSTRAINT pizza_recipe_fk
FOREIGN KEY (pizza_id)
REFERENCES pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE detail_command ADD CONSTRAINT pizza_detail_command_fk
FOREIGN KEY (pizza_id)
REFERENCES pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;