CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR,
    gender gender NOT NULL,
    DOB TIMESTAMP,
    job_title VARCHAR,
    job_industry_category VARCHAR,
    wealth_segment VARCHAR NOT NULL,
    deceased_indicator VARCHAR NOT NULL,
    owns_car VARCHAR NOT NULL,
    address VARCHAR NOT NULL,
    postcode INTEGER NOT NULL,
    state VARCHAR NOT NULL,
    country VARCHAR NOT NULL,
    property_valuation INTEGER NOT NULL
);

CREATE TABLE transaction (
    transaction_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    customer_id INTEGER REFERENCES customer(customer_id) NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    online_order BOOLEAN,
    order_status VARCHAR NOT NULL,
    brand VARCHAR,
    product_line VARCHAR,
    product_class VARCHAR,
    product_size VARCHAR,
    list_price DECIMAL NOT NULL,
    standard_cost DECIMAL
);
