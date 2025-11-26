CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    unit_price DECIMAL(10,2)
);

CREATE TABLE OrderItems (
    order_id INT,
    product_id VARCHAR(10),
    qty INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- ==========================
-- SAMPLE DATA
-- ==========================
INSERT INTO Customers VALUES
('C001', 'Rocky'),
('C002', 'Diya');

INSERT INTO Orders VALUES
(101, 'C001'),
(102, 'C002');

INSERT INTO Products VALUES
('P01', 'Blueberry', 30),
('P02', 'Apple', 20),
('P03', 'Orange', 10);

INSERT INTO OrderItems VALUES
(101, 'P01', 2),
(101, 'P02', 3),
(102, 'P03', 5);


SELECT 
    p.product_name,
    p.unit_price,
    AVG(p.unit_price) AS avg_price,
    SUM(oi.qty * p.unit_price) AS total_sales
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name, p.unit_price
ORDER BY total_sales DESC;