SELECT first_name, product_name FROM customers INNER JOIN orders
    ON customers.id = orders.customer_id WHERE LOWER(customers.first_name) = 'alexey';