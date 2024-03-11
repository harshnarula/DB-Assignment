CREATE DATABASE Product_Management;

CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc VARCHAR(100) NOT NULL,
    SKU VARCHAR(64) NOT NULL,
    category_id INT,
    inventory_id INT,
    price DECIMAL(10,2),
    discount_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_date TIMESTAMP NULL,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(inventory_id),
    FOREIGN KEY (discount_id) REFERENCES discount(discount_id)
);

CREATE TABLE product_category (
    category_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    desc VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_date TIMESTAMP NULL
);

CREATE TABLE product_inventory (
    inventory_id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_date TIMESTAMP NULL
);

CREATE TABLE discount (
    discount_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    discount_percent DECIMAL(3,2),
    active TINYINT(1) DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deleted_date TIMESTAMP NULL
);