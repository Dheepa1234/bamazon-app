DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
    ItemID MEDIUMINT AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT(10) NOT NULL,
    primary key(ItemID)
);

SELECT * FROM products;

INSERT INTO products(productName, departmentName, price, stockQuantity)
VALUES ("Uncharted 4","ENTERTAINMENT",49.95,150),
    ("Meghan and Harry's Royal Wedding","ENTERTAINMENT",59.99,200),
    ("Condiments","GROCERY",24.50,50),
    ("Cool Shades","CLOTHING",75.00,5),
    ("Worn Denim Jeans","CLOTHING",54.25,35),
    ("Camp Set","SPORTS & OUTDOORS",42.42,42),
    ("Harry Potter DVD","ENTERTAINMENT",15.00,25),
    ("Hunger Games","ENTERTAINMENT",25.50,57),
    ("Glastonbury DVD","ENTERTAINMENT",30.50,35),
    ("Poker Set","ENTERTAINMENT",19.95,23);

CREATE TABLE Departments(
    DepartmentID MEDIUMINT AUTO_INCREMENT NOT NULL,
    DepartmentName VARCHAR(50) NOT NULL,
    OverHeadCosts DECIMAL(10,2) NOT NULL,
    TotalSales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(DepartmentID));

INSERT INTO Departments(DepartmentName, OverHeadCosts, TotalSales)
VALUES ('ENTERTAINMENT', 50000.00, 15000.00),
    ('ELECTRONICS', 20000.00, 12000.00),
    ('HOME', 30000.00, 15000.00),
    ('BODY & HEALTH', 3000.00, 12000.00),
    ('GROCERY', 1200.00, 15000.00),
    ('KIDS', 40000.00, 12000.00),
    ('CLOTHING', 35000.00, 15000.00),
    ('SPORTS & OUTDOORS', 12000.00, 12000.00);