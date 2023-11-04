/*task-2*/

/*Create the 'categories' table*/
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255)
);

/* Create the 'products' table with a foreign key to 'categories'*/
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    product_price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

/* query for retrieve all the products from the 'products' table and their corresponding category names from the 'categories' table using LEFT JOIN to combine the tables and include all products, even if they don't have a category. */
SELECT p.product_id, p.product_name, p.product_price, c.category_name
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;
