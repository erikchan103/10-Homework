CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(45) NOT NULL,
    department_name VARCHAR(45) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    PRIMARY KEY(item_id)
);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Cooking 101","Book",19.99,100);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Laptop Charger","Electronics",50.00,10);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Ethernet Cables","Electronics",5.50,20);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Coffee Mug","Kitchen",10.01,15);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Potato Chips","Food",1.99,30);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Basketball","Sports",14.99,5);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Limit Edition Charizard Card","Cards and Games",199.99,1);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Boxes","Shipping",0.05,50);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Pen","Office",0.75,23);

INSERT INTO products(product_name,department_name,price,stock_quantity)
VALUES ("Shorts","Clothing",39.99,7);