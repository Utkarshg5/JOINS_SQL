-- Create Customers table
CREATE TABLE Customers (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    product VARCHAR2(50),
    amount NUMBER
);

-- Insert data into Customers
INSERT INTO Customers VALUES (1, 'John', 'Doe', 'john.doe@email.com');
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'jane.smith@email.com');
INSERT INTO Customers VALUES (3, 'Bob', 'Johnson', 'bob.johnson@email.com');
INSERT INTO Customers VALUES (4, 'Alice', 'Williams', 'alice.williams@email.com');
INSERT INTO Customers VALUES (5, 'Mike', 'Brown', 'mike.brown@email.com');

-- Insert data into Orders
INSERT INTO Orders VALUES (101, 1, 'Laptop', 800);
INSERT INTO Orders VALUES (102, 2, 'Smartphone', 500);
INSERT INTO Orders VALUES (103, 1, 'Headphones', 50);
INSERT INTO Orders VALUES (104, 3, 'Monitor', 200);
INSERT INTO Orders VALUES (105, 6, 'Tablet', 300);

COMMIT;

------------------------------------------------
-- INNER JOIN: Customers with orders
SELECT c.first_name, c.last_name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

------------------------------------------------
-- LEFT JOIN: All customers, whether they have orders or not
SELECT c.first_name, c.last_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

------------------------------------------------
-- RIGHT JOIN: All orders, whether linked to customers or not
SELECT c.first_name, c.last_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

------------------------------------------------
-- FULL OUTER JOIN: All customers and all orders
SELECT c.first_name, c.last_name, o.product, o.amount
FROM Customers c
FULL OUTER JOIN Orders o
ON c.customer_id = o.customer_id;
