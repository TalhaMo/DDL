CREATE TABLE PRODUCT(
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK(Price>0)
);

CREATE TABLE CUSTOMER(
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_tel NUMBER 
);

CREATE TABLE ORDERS (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT FK_Customer FOREIGN KEY (Custumer_id) REFERENCES CUSTOMER(Costumer_id),
    CONSTRAINT FK_Product FOREIGN KEY (Product_id) REFERENCES PRODUCT(Product_id),
    CONSTRAINT PK_Orders PRIMARY KEY (Customer_id,Product_id)
);
-- Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);
-- Add a column OrderDate (DATE) to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;