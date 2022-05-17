CREATE TABLE Products
(
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT not_null NOT NULL,
    Price NUMBER CONSTRAINT price_condition CHECK(Price>0)
);

CREATE TABLE Customer
(
    Customer_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    Customer_Name VARCHAR2(20) CONSTRAINT not_null NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders
(
    Customer_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY,
    Product_id VARCHAR2(20) CONSTRAINT not_null NOT NULL,
    Quantity NUMBER,
    Total_amount NUMBER
);

ALTER TABLE Orders ADD CONSTRAINT fk1_orders FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id);
ALTER TABLE Orders ADD CONSTRAINT fk2_orders FOREIGN KEY (Product_id) REFERENCES Product (Product_id);
ALTER TABLE Orders ADD CONSTRAINT pk_orders PRIMARY KEY (Customer_id, Product_id);

/* Add a column Category (VARCHAR2(20)) to the PRODUCT table*/
ALTER TABLE Product ADD Category VARCHAR2(20);

/*Add a column OrderDate (DATE) to the ORDERS table which have SYSDATE as a default value*/
ALTER TABLE Orders ADD OrderDate SYSDATE;