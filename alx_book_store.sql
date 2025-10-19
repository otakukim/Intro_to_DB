.sql‎
+5
-5
Lines changed: 5 additions & 5 deletions
Original file line number	Diff line number	Diff line change
@@ -1,13 +1,13 @@
CREATE DATABASE alx_book_store;

-- Creating Authors table
CREATE TABLE IF NOT EXISTS Authors (
CREATE TABLE  Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- Creating Books table
CREATE TABLE IF NOT EXISTS Books (
CREATE TABLE  Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
@@ -17,23 +17,23 @@ CREATE TABLE IF NOT EXISTS Books (
);

-- Creating Customers table
CREATE TABLE IF NOT EXISTS Customers (
CREATE TABLE  Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT
);

-- Creating Orders table
CREATE TABLE IF NOT EXISTS Orders (
CREATE TABLE  Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Creating Order_Details table
CREATE TABLE IF NOT EXISTS Order_Details (
CREATE TABLE  Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
 
