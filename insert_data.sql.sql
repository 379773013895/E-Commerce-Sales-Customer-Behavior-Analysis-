USE E_Commerce_Sales_Customer_Behavior_Analysis;

INSERT INTO customers VALUES
(1,'Amit Sharma','Male','Delhi','2023-12-10'),
(2,'Neha Verma','Female','Mumbai','2023-12-15'),
(3,'Rohit Singh','Male','Lucknow','2024-01-05'),
(4,'Pooja Mehta','Female','Pune','2024-01-12'),
(5,'Rahul Jain','Male','Jaipur','2024-01-18'),
(6,'Anita Rao','Female','Bangalore','2024-02-01');

INSERT INTO products VALUES
(101,'iPhone 14','Electronics',70000),
(102,'Laptop Bag','Accessories',2500),
(103,'Bluetooth Headphones','Electronics',4000),
(104,'Running Shoes','Footwear',6000),
(105,'Smart Watch','Electronics',12000);

INSERT INTO orders VALUES
(1001,1,'2024-01-10','Delivered'),
(1002,2,'2024-01-12','Delivered'),
(1003,1,'2024-02-05','Delivered'),
(1004,3,'2024-02-10','Cancelled'),
(1005,4,'2024-02-15','Delivered'),
(1006,5,'2024-02-20','Delivered');

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,102,2),
(3,1002,103,1),
(4,1003,105,1),
(5,1004,104,1),
(6,1005,104,2),
(7,1006,101,1);

INSERT INTO payments VALUES
(201,1001,'Credit Card','Paid',75000),
(202,1002,'UPI','Paid',4000),
(203,1003,'Debit Card','Paid',12000),
(204,1004,'UPI','Refunded',6000),
(205,1005,'Credit Card','Paid',12000),
(206,1006,'Net Banking','Paid',70000);
