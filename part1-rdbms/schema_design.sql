DROP DATABASE IF EXISTS sales;  
SHOW DATABASES;  
CREATE DATABASE  IF NOT EXISTS sales;  
USE sales;  

  CREATE TABLE Customers (
    customer_id varchar(10) NOT NULL,
    customer_name varchar(100) NOT NULL,
    customer_email varchar(100) NOT NULL,
    customer_city varchar(50) NOT NULL,
    PRIMARY KEY (customer_id)
  );  

  CREATE TABLE Products (
    product_id varchar(10) NOT NULL,
    product_name varchar(100) NOT NULL,
    category varchar(50) NOT NULL,
    unit_price decimal(10, 2) NOT NULL,
    PRIMARY KEY (product_id)
  );  

  CREATE TABLE Sales_reps (
     sales_rep_id varchar(10) NOT NULL,
     sales_rep_name varchar(100) NOT NULL,
     sales_rep_email varchar(100) NOT NULL,
     office_address varchar(255) NOT NULL,
     PRIMARY KEY (sales_rep_id)
  );  

   CREATE TABLE Orders (
     order_id varchar(10),
     customer_id varchar(10) NOT NULL,
     product_id varchar(10) NOT NULL,
     sales_rep_id varchar(10) NOT NULL,
     quantity INT NOT NULL,
     order_date DATE NOT NULL,
     PRIMARY KEY (order_id),
     FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
     FOREIGN KEY(product_id) REFERENCES Products(product_id),
     FOREIGN KEY(sales_rep_id) REFERENCES Sales_reps(sales_rep_id)
  );   

--Part 2:  
INSERT INTO Customers VALUES ('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai');
INSERT INTO Customers VALUES ('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi');
INSERT INTO Customers VALUES ('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore');
INSERT INTO Customers VALUES ('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai');
INSERT INTO Customers VALUES ('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai');   

INSERT INTO Products VALUES ('P004', 'Notebook', 'Stationery', 120.00);
INSERT INTO Products VALUES ('P007', 'Pen Set', 'Stationery', 250.00);
INSERT INTO Products VALUES ('P005', 'Headphones', 'Electronics', 3200.00);
INSERT INTO Products VALUES ('P003', 'Desk Chair', 'Furniture', 8500.00);
INSERT INTO Products VALUES ('P006', 'Standing Desk', 'Furniture', 22000.00);   

INSERT INTO Sales_reps VALUES ('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021');
INSERT INTO Sales_reps VALUES ('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001');
INSERT INTO Sales_reps VALUES ('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001');
INSERT INTO Sales_reps VALUES ('SR04', 'Suresh Raina', 'suresh@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021');
INSERT INTO Sales_reps VALUES ('SR05', 'Megha Shah', 'megha@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001');  

INSERT INTO Orders VALUES ('ORD1027', 'C002', 'P004', 'SR02', 4, '2023-11-02');
INSERT INTO Orders VALUES ('ORD1114', 'C001', 'P007', 'SR01', 2, '2023-08-06');
INSERT INTO Orders VALUES ('ORD1153', 'C003', 'P007', 'SR01', 3, '2023-02-14');
INSERT INTO Orders VALUES ('ORD1002', 'C002', 'P005', 'SR02', 1, '2023-01-17');
INSERT INTO Orders VALUES ('ORD1118', 'C005', 'P007', 'SR02', 5, '2023-11-10');  
  
