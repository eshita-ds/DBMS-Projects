drop schema bike_store;

create schema bike_store;

use bike_store;

CREATE TABLE Customer
(
  customer_id INT NOT NULL,
  Street VARCHAR(50) NOT NULL,
  City VARCHAR(20) NOT NULL,
  State VARCHAR(20) NOT NULL,
  Postal_code INT NOT NULL,
  email VARCHAR(50) NOT NULL,
  First_Name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE brands
(
  brand_id INT NOT NULL,
  brand_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (brand_id)
);

CREATE TABLE categories
(
  category_id INT NOT NULL,
  category_name VARCHAR(70) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE warehouse
(
  warehouse_id INT NOT NULL,
  street VARCHAR(50) NOT NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(20) NOT NULL,
  postal_code INT NOT NULL,
  PRIMARY KEY (warehouse_id)
);

CREATE TABLE Store_managers
(
  Manager_ID INT NOT NULL,
  Manager_name INT NOT NULL,
  PRIMARY KEY (Manager_ID)
);

CREATE TABLE warehouse_warehouse_contact
(
  warehouse_contact INT NOT NULL,
  warehouse_id INT NOT NULL,
  PRIMARY KEY (warehouse_contact, warehouse_id),
  FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);
CREATE TABLE store
(
  store_id INT NOT NULL,
  street VARCHAR(100) NOT NULL,
  state VARCHAR(50) NOT NULL,
  postal_code INT NOT NULL,
  city VARCHAR(20) NOT NULL,
  store_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  Manager_ID INT NOT NULL,
  PRIMARY KEY (store_id),
  FOREIGN KEY (Manager_ID) REFERENCES Store_managers(Manager_ID)
);

CREATE TABLE products
(
  product_id INT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  model_year INT NOT NULL,
  list_price FLOAT NOT NULL,
  category_id INT NOT NULL,
  brand_id INT NOT NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (category_id) REFERENCES categories(category_id),
  FOREIGN KEY (brand_id) REFERENCES brands(brand_id)
);

CREATE TABLE staffs
(
  staff_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  status VARCHAR(50) NOT NULL,
  salary FLOAT NOT NULL,
  store_id INT NOT NULL,
  Manager_ID INT NOT NULL,
  PRIMARY KEY (staff_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id),
  FOREIGN KEY (Manager_ID) REFERENCES Store_managers(Manager_ID)
);

CREATE TABLE supply
(
  supply_id INT NOT NULL,
  warehouse_id INT NOT NULL,
  store_id INT NOT NULL,
  PRIMARY KEY (supply_id),
  FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE Stocks
(
  Stock_id INT NOT NULL,
  Quantity INT NOT NULL,
  store_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (Stock_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE store_store_contact
(
  store_contact INT NOT NULL,
  store_id INT NOT NULL,
  PRIMARY KEY (store_contact, store_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE orders
(
  order_id INT NOT NULL,
  order_status VARCHAR(40) NOT NULL,
  order_date DATE NOT NULL,
  required_date DATE NOT NULL,
  store_id INT NOT NULL,
  shipped_date DATE NOT NULL,
  customer_id INT NOT NULL,
  staff_id INT NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);

CREATE TABLE order_items
(
  order_item_id INT NOT NULL,
  quantity INT NOT NULL,
  list_price FLOAT NOT NULL,
  discount INT NOT NULL,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (order_item_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);