CREATE TABLE CUSTOMERS (
 ID INT NOT NULL AUTO_INCREMENT,
 NAME VARCHAR(255) NOT NULL,
 EMAIL VARCHAR(255) NOT NULL,
 PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS (NAME, EMAIL) VALUES
('Marco Rossi', 'marcorossi@gmail.com'),
('Anna Bruni', 'annabruni@gmail.com'),
('Simone Bianchi', 'simonebianchi@gmail.com'),
('Giulia Russo', 'giuliarusso@gmail.com'),
('Ciro Esposito', 'ciroesposito@gmail.com');

SELECT * FROM CUSTOMERS;

UPDATE CUSTOMERS SET EMAIL = 'brunianna@gmail.it' WHERE ID = 2;

UPDATE CUSTOMERS SET EMAIL = 'espositociro@yahoo.it' WHERE ID = 5;

SELECT * FROM CUSTOMERS;

DELETE FROM CUSTOMERS WHERE ID = 4;

SELECT * FROM CUSTOMERS;

TRUNCATE CUSTOMERS;

SELECT * FROM CUSTOMERS;

#Look at the tables below and write which column(s) you think would make a good primary key.

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
);

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL,
 PRIMARY KEY (product_name)
);

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE,
 PRIMARY KEY (order_id)
);

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE,
 PRIMARY KEY (order_id)
);