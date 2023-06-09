CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE, 
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Eggs', false, true, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Bread', false, true, true, false);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Beef Patty', false, false, false, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Lettuce', false, true, true, true);

INSERT INTO INGREDIENT (NAME, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Yoghurt', true, true, false, true);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);
  
    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese');

CREATE VIEW MEAL_ORDER_WITH_DETAILS AS 
    SELECT MO.*, M.PRICE, M.CALORIES FROM MEAL_ORDER MO, MEAL M 
    WHERE MO.MEAL_NAME = M.NAME;


INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
VALUES (NOW(), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Spaghetti Bolognese'),
(DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 10 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 11 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 12 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 13 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 14 HOUR), 'Steak and Mash'),
(DATE_ADD(NOW(), INTERVAL 15 HOUR), 'Grilled Chicken Sandwich'), (DATE_ADD(NOW(), INTERVAL 16 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 17 HOUR), 'Steak and Mash'), (DATE_ADD(NOW(), INTERVAL 18 HOUR), 'Spaghetti Bolognese'), (DATE_ADD(NOW(), INTERVAL 19 HOUR), 'Grilled Chicken Sandwich'),
(DATE_ADD(NOW(), INTERVAL 20 HOUR), 'Pesto Pasta'), (DATE_ADD(NOW(), INTERVAL 21 HOUR), 'Sushi Platter'), (DATE_ADD(NOW(), INTERVAL 22 HOUR), 'Steak and Mash');

SELECT CONCAT(NAME, '  ', PRICE, '€') AS NAME_AND_PRICE FROM MEAL;
SELECT LOWER(NAME) AS LOWERCASE_NAME FROM MEAL; #scrive i dati valori tutti in minuscolo
SELECT UPPER(NAME) AS UPPERCASE_NAME FROM MEAL; #scrive i dati tutto in maiuscolo
SELECT TRIM('      name_to_trim      ') AS TRIMMED_NAME; #elimina gli spazi all'inizio e alla fine dei dati
SELECT LENGTH(NAME) FROM MEAL; #ritorna il numero di caratteri utilizzati
SELECT SUBSTRING(NAME, 5, 10) AS SUBSTRINGED_NAME FROM MEAL; #estrae una porzione della stringa a partire dal punto indicato
SELECT ROUND(PRICE, +1) AS ROUNDED_PRICE FROM MEAL; #arrotonda il valore per eccesso (+1) o per difetto (-1)
SELECT  MEAL_NAME, DATE_ADD(TIME_MEAL_ORDERED, INTERVAL 1 DAY) AS DATE_ADD_TIME_MEAL_ORDERED FROM MEAL_ORDER; #restituisce la data, incrementando il tempo di 1 giorno
SELECT  MEAL_NAME, DATE_SUB(TIME_MEAL_ORDERED, INTERVAL 1 DAY) AS DATE_SUB_TIME_MEAL_ORDERED FROM MEAL_ORDER;#restituisce la data, diminuendo il tempo di 1 giorno
SELECT FORMAT(PRICE, 1) AS FORMAT_PRICE FROM MEAL; #arrotonda il valore per eccesso

SELECT DATE_SUB(DATE_SUB(NOW(), INTERVAL 1 MONTH), INTERVAL 2 DAY) AS BIRTHDAY_DATE;