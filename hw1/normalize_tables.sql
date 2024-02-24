CREATE TABLE address (
    address_id SERIAL PRIMARY KEY,
    address VARCHAR NOT NULL,
    postcode INTEGER NOT NULL,
    state VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    property_valuation INTEGER NOT NULL
);

CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR,
    gender VARCHAR,
    DOB TIMESTAMP,
    job_title VARCHAR,
    job_industry_category VARCHAR,
    wealth_segment VARCHAR,
    deceased_indicator VARCHAR,
    owns_car VARCHAR,
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE product (
  product_id integer PRIMARY KEY,
  brand varchar,
  product_line VARCHAR,
  product_class VARCHAR,
  product_size VARCHAR,
  list_price float,
  standard_cost float
);

CREATE TABLE transaction (
    transaction_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    online_order BOOLEAN,
    order_status VARCHAR,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
