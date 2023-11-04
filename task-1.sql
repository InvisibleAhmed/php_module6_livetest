/*task-1*/

/* Create the 'customers' table */
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255)
);

/* Create the 'orders' table with a foreign key to 'customers'*/
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

/* query for  retrieve all the orders from the 'orders' table and their corresponding customer names from the 'customers' table using an INNER JOIN to combine the tables. */
SELECT o.order_id, o.order_date, o.order_total, c.customer_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;
