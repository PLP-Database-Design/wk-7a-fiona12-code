-- Question one

CREATE TABLE ProductDetails (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Insert the normalized data
INSERT INTO ProductDetails (OrderID, CustomerName, Product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- Question two
CREATE TABLE CustomerOrders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

-- Insert unique orders
INSERT INTO CustomerOrders
 VALUES (101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES CustomerOrders(OrderID)
);

-- Insert product data:
INSERT INTO OrderDetails VALUES (101, 'Laptop', 2);
INSERT INTO OrderDetails VALUES (101, 'Mouse', 1);
INSERT INTO OrderDetails VALUES (102, 'Tablet', 3);
INSERT INTO OrderDetails VALUES (102, 'Keyboard', 1);
INSERT INTO OrderDetails VALUES (102, 'Mouse', 2);
INSERT INTO OrderDetails VALUES (103, 'Phone', 1);
