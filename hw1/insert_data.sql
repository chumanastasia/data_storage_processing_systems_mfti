INSERT INTO address (address, postcode, state, country, property_valuation)
VALUES (address, postcode, state, country, property_valuation);

INSERT INTO product (product_id, brand, product_line, product_class, product_size, list_price, standard_cost)
VALUES (product_id, brand, product_line, product_class, product_size, list_price, standard_cost);

INSERT INTO customer (customer_id, first_name, last_name, gender, DOB, job_title, job_industry_category, wealth_segment, deceased_indicator, owns_car, address_id)
VALUES (customer_id, first_name, last_name, gender, DOB, job_title, job_industry_category, wealth_segment, deceased_indicator, owns_car, address_id);

INSERT INTO transaction (transaction_id, product_id, customer_id, transaction_date, online_order, order_status, brand, product_line, product_class, product_size, list_price, standard_cost)
VALUES (transaction_id, product_id, customer_id, transaction_date, online_order, order_status, brand, product_line, product_class, product_size, list_price, standard_cost);
