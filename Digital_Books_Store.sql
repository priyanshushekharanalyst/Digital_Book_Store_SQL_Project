CREATE DATABASE digitalbookstore;

DROP TABLE IF EXISTS books;
CREATE TABLE books (
book_id SERIAL PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(50),
published_year INT,
price NUMERIC(10, 2),
stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(15),
city VARCHAR(50),
country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_id INT REFERENCES customers(customer_id),
book_id INT REFERENCES books(book_id),
order_date DATE,
quantity INT,
total_amount NUMERIC(10, 2)
);

COPY books(book_id, title, author, genre, published_year, price, stock)
FROM 'C:\Users\Public\Books.csv'
DELIMITER ','
CSV HEADER;

COPY customers(customer_id, name, email, phone, city, country)
FROM 'C:\Users\Public\Customers.csv'
DELIMITER ','
CSV HEADER;

COPY orders(order_id, customer_id, book_id, order_date, quantity, total_amount)
FROM 'C:\Users\Public\Orders.csv'
DELIMITER ','
CSV HEADER;

--BASIC QUESITONS

--1) Retrieve all books in the fiction genre?
SELECT * FROM books 
WHERE genre='Fiction';

--2) Find books published after year 1950?
SELECT * FROM books
WHERE published_year>'1950';

--3) List all the customers from the canada?
SELECT * FROM customers
WHERE country='Canada';

--4) Show orders placed in november 2023?
SELECT * FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5) Retrieve the total stock of books available?
SELECT SUM(stock) AS total_stock
FROM books;

--6) Find the details of expensive book?
select * from books ORDER BY price DESC LIMIT 1;

--7) Show all customers who ordered more than 1 quantity of book?
select * from orders
WHERE quantity>(1);

--8) Retrieve all orders where the total amount exceed $20?
SELECT * FROM orders
WHERE total_amount>(20);

--9) List all the genre available in the books table?
SELECT DISTINCT genre FROM books;

--10) Find the book with lowest stock?
SELECT * from books ORDER BY stock LIMIT 1;

--11) Calculate the total revenue generated from all orders?
SELECT SUM(total_amount) FROM orders;

--ADVANCE QUESTIONS

--12) Retreive the total number of books sold for each genre?
SELECT b.genre, SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.genre;

--13) Find the average price of books in the Fiction genre?
SELECT AVG(price) AS average_price
FROM books
WHERE genre = 'fiction';

--14) List customers name and ID who have purchase more than 2 quantity?
SELECT c.name, c.customer_id, o.quantity
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE quantity > '1';

--15) List customers who have placed atleast 2 order?
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING  COUNT(order_id) >= '2'; 

--16) Find the most frequent ordered book?
SELECT book_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY book_id
ORDER BY order_count DESC LIMIT '1';

--17) Show the top 3 most expensive books of Fantasy Genre?
SELECT * from books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT '3';

--18) Retrieve the total quantity of books sold by each author?
SELECT b.author, SUM(o.quantity) AS total_books_sold
FROM orders o
JOIN books b ON o.book_id = b.book_id
GROUP BY b.author;

--19) List the cities where customers who spent over $30 are located?
SELECT DISTINCT c.city, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE total_amount > '30';

--20) Find the customer who spent the most on orders?
select c.name, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY total_amount DESC LIMIT 1;

--21) Calculate the stock remaining after fulfilling all orders?
SELECT b.title, b.book_id, b.stock, COALESCE(SUM(quantity),0) AS order_quantity,
b.stock - COALESCE(SUM(quantity),0) AS remaining_quantity
FROM books b
LEFT JOIN orders o ON b.book_id = o.book_id
GROUP BY b.book_id;








