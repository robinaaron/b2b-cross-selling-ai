USE b2b_cross_selling;

CREATE TABLE ai_analyses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    analysis_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    product_id VARCHAR(50) NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    product_price DECIMAL(12,2) NOT NULL,
    analysis_type VARCHAR(50) NOT NULL DEFAULT 'cross_selling',
    recommendations JSON NOT NULL,
    quality_score DECIMAL(3,2),
    metadata JSON,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

SHOW TABLES;

DESCRIBE ai_analyses;

ALTER TABLE ai_analyses ADD COLUMN output TEXT;

SHOW CREATE TABLE ai_analyses;


SELECT product_id FROM products LIMIT 10;




SHOW CREATE TABLE products;
SHOW CREATE TABLE ai_analyses;