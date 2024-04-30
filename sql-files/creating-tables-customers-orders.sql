create table customers (
                           id BIGSERIAL PRIMARY KEY NOT NULL,
                           first_name VARCHAR(100) NOT NULL,
                           last_name VARCHAR(100) NOT NULL,
                           age INT,
                           phone_number VARCHAR(20) NOT NULL
);
insert into customers (id, first_name, last_name, age, phone_number) values (1, 'Alexey', 'Turbern', 29, '+62 345 474 5269');
insert into customers (id, first_name, last_name, age, phone_number) values (2, 'Dehlia', 'Edmundson', 30, '+33 746 284 6867');
insert into customers (id, first_name, last_name, age, phone_number) values (3, 'Natalya', 'Hertwell', 52, '+86 246 532 4423');
insert into customers (id, first_name, last_name, age, phone_number) values (4, 'Hedi', 'Gregol', 41, '+52 745 927 0952');
insert into customers (id, first_name, last_name, age, phone_number) values (5, 'Hugues', 'Macro', 23, '+856 575 530 1029');
insert into customers (id, first_name, last_name, age, phone_number) values (6, 'Zitella', 'Ortzen', 37, '+370 474 833 1911');
insert into customers (id, first_name, last_name, age, phone_number) values (7, 'Dianemarie', 'Ballantine', 31, '+86 274 993 2917');
insert into customers (id, first_name, last_name, age, phone_number) values (8, 'Vidovic', 'Vant', 54, '+33 438 490 6667');
insert into customers (id, first_name, last_name, age, phone_number) values (9, 'Hanni', 'Gwilliams', 18, '+63 779 528 2438');
insert into customers (id, first_name, last_name, age, phone_number) values (10, 'Cordell', 'Woolam', 27, '+86 653 324 4947');


create table orders (
                        id BIGSERIAL PRIMARY KEY NOT NULL,
                        date DATE NOT NULL,
                        customer_id INT NOT NULL,
                        product_name VARCHAR(100) NOT NULL,
                        amount DECIMAL(3,2) NOT NULL
);
insert into orders (id, date, customer_id, product_name, amount) values (1, '2024-01-22', 8, 'Chips - Miss Vickies', 2.83);
insert into orders (id, date, customer_id, product_name, amount) values (2, '2024-04-22', 8, 'Beef Ground Medium', 2.25);
insert into orders (id, date, customer_id, product_name, amount) values (3, '2024-01-04', 7, 'Cherries - Maraschino,jar', 2.86);
insert into orders (id, date, customer_id, product_name, amount) values (4, '2024-01-27', 2, 'Sorrel - Fresh', 1.46);
insert into orders (id, date, customer_id, product_name, amount) values (5, '2024-02-11', 9, 'Chocolate - White', 2.91);
insert into orders (id, date, customer_id, product_name, amount) values (6, '2024-02-17', 1, 'Shrimp - Black Tiger 26/30', 1.27);
insert into orders (id, date, customer_id, product_name, amount) values (7, '2024-01-14', 7, 'Tomatoes - Vine Ripe, Red', 1.58);
insert into orders (id, date, customer_id, product_name, amount) values (8, '2024-03-07', 5, 'Peach - Halves', 1.34);
insert into orders (id, date, customer_id, product_name, amount) values (9, '2024-04-07', 8, 'Placemat - Scallop, White', 2.03);
insert into orders (id, date, customer_id, product_name, amount) values (10, '2024-03-26', 2, 'Wine - Zonnebloem Pinotage', 2.8);
insert into orders (id, date, customer_id, product_name, amount) values (11, '2024-02-22', 2, 'Extract - Rum', 2.26);
insert into orders (id, date, customer_id, product_name, amount) values (12, '2024-01-03', 9, 'Spoon - Soup, Plastic', 1.78);
insert into orders (id, date, customer_id, product_name, amount) values (13, '2024-02-14', 4, 'Pork - Shoulder', 2.99);
insert into orders (id, date, customer_id, product_name, amount) values (14, '2024-02-18', 1, 'Creme De Banane - Marie', 2.03);
insert into orders (id, date, customer_id, product_name, amount) values (15, '2024-04-14', 7, 'Coffee Guatemala Dark', 1.69);
insert into orders (id, date, customer_id, product_name, amount) values (16, '2024-03-12', 9, 'Ecolab - Mikroklene 4/4 L', 1.31);
insert into orders (id, date, customer_id, product_name, amount) values (17, '2024-03-29', 1, 'Wine - Chablis 2003 Champs', 1.39);
insert into orders (id, date, customer_id, product_name, amount) values (18, '2024-01-03', 9, 'Mayonnaise', 2.04);
insert into orders (id, date, customer_id, product_name, amount) values (19, '2024-03-13', 2, 'Water - Perrier', 1.77);
insert into orders (id, date, customer_id, product_name, amount) values (20, '2024-03-24', 2, 'Bread - Malt', 2.63);


ALTER TABLE orders ALTER COLUMN customer_id SET DATA TYPE BIGINT;

ALTER TABLE orders ADD CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES customers (id);