CREATE TABLE Customer (
  cust_ID integer PRIMARY KEY,
  first_name nvarchar(255),
  last_name nvarchar(255)
);

CREATE TABLE CustAddress (
  add_ID integer PRIMARY KEY,
  Province nvarchar(255),
  Region nvarchar(255)
);

CREATE TABLE ProdCategory (
  ProdCat_ID integer PRIMARY KEY,
  product_category nvarchar(255),
  product_sub_category nvarchar(255)
);

CREATE TABLE CustomerSegment (
  CustSeg_ID integer PRIMARY KEY,
  customer_segment nvarchar(255)
);

CREATE TABLE product (
  product_ID integer PRIMARY KEY,
  product_name nvarchar(255),
  Order_quantity integer,
  Unit_price float,
  shipping_cost float,
  Discount float,
  Product_base_margin float
);

CREATE TABLE orders (
  Row_ID integer,
  Order_ID integer,
  Order_date date,
  Order_priority nvarchar(255),
  Ship_mode nvarchar(255),
  cust_ID integer,
  add_ID integer,
  CustSeg_ID integer,
  ProdCat_ID integer,
  product_ID integer,
  product_container nvarchar(255),
  ship_date date,
  PRIMARY KEY (cust_ID, add_ID, CustSeg_ID, ProdCat_ID, product_ID),
  FOREIGN KEY (cust_ID) REFERENCES Customer (cust_ID),
  FOREIGN KEY (add_ID) REFERENCES CustAddress (add_ID),
  FOREIGN KEY (CustSeg_ID) REFERENCES CustomerSegment (CustSeg_ID),
  FOREIGN KEY (ProdCat_ID) REFERENCES ProductCategory (ProdCat_ID),
  FOREIGN KEY (product_ID) REFERENCES product (product_ID)
);
