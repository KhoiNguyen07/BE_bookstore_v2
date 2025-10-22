-- =========================
-- ROLE & ACCOUNT TABLES
-- =========================
CREATE TABLE IF NOT EXISTS `role` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `role_code` VARCHAR(50) UNIQUE NOT NULL,
    `role_name` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `account` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `account_code` VARCHAR(50) UNIQUE NOT NULL,
    `username` VARCHAR(100) UNIQUE NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(20),
    `email` VARCHAR(255),
    `role_code` VARCHAR(50),
    `status` BOOLEAN DEFAULT TRUE,
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`role_code`) REFERENCES `role`(`role_code`)
);

-- =========================
-- CUSTOMER TYPE & CUSTOMER
-- =========================
CREATE TABLE IF NOT EXISTS `customer_type` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `customer_type_code` VARCHAR(50) UNIQUE NOT NULL,
    `customer_type_name` VARCHAR(255),
    `description` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `customer` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `customer_code` VARCHAR(50) UNIQUE NOT NULL,
    `customer_name` VARCHAR(255),
    `points` DECIMAL(10,2) DEFAULT 0,
    `address` VARCHAR(255),
    `status` BOOLEAN DEFAULT TRUE,
    `customer_type_code` VARCHAR(50),
    `account_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`customer_type_code`) REFERENCES `customer_type`(`customer_type_code`),
    FOREIGN KEY (`account_code`) REFERENCES `account`(`account_code`)
);

-- =========================
-- EMPLOYEE
-- =========================
CREATE TABLE IF NOT EXISTS `employee` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `employee_code` VARCHAR(50) UNIQUE NOT NULL,
    `employee_name` VARCHAR(255),
    `date_of_birth` DATE,
    `gender` BOOLEAN,
    `status` BOOLEAN DEFAULT TRUE,
    `account_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`account_code`) REFERENCES `account`(`account_code`)
);

-- =========================
-- SUPPLIER
-- =========================
CREATE TABLE IF NOT EXISTS `supplier` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `supplier_code` VARCHAR(50) UNIQUE NOT NULL,
    `supplier_name` VARCHAR(255),
    `address` VARCHAR(255),
    `phone_number` VARCHAR(20),
    `email` VARCHAR(255),
    `status` BOOLEAN DEFAULT TRUE,
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `ended_date` TIMESTAMP
);

-- =========================
-- PROMOTION TYPE & PROMOTION
-- =========================
CREATE TABLE IF NOT EXISTS `promotion_type` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `promotion_type_code` VARCHAR(50) UNIQUE NOT NULL,
    `promotion_type_name` VARCHAR(255),
    `description` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `promotion` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `promotion_code` VARCHAR(50) UNIQUE NOT NULL,
    `promotion_name` VARCHAR(255),
    `value` DECIMAL(10,2),
    `promotion_type_code` VARCHAR(50),
    `status` BOOLEAN DEFAULT TRUE,
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `ended_date` TIMESTAMP,
    FOREIGN KEY (`promotion_type_code`) REFERENCES `promotion_type`(`promotion_type_code`)
);

-- =========================
-- PRODUCT CATEGORY & PRODUCT
-- =========================
CREATE TABLE IF NOT EXISTS `product_category` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `category_code` VARCHAR(50) UNIQUE NOT NULL,
    `category_name` VARCHAR(255),
    `description` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `product` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_code` VARCHAR(50) UNIQUE NOT NULL,
    `product_name` VARCHAR(255),
    `description` VARCHAR(255),
    `image` VARCHAR(255),
    `status` BOOLEAN DEFAULT TRUE,
    `category_code` VARCHAR(50),
    `promotion_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`category_code`) REFERENCES `product_category`(`category_code`),
    FOREIGN KEY (`promotion_code`) REFERENCES `promotion`(`promotion_code`)
);

-- =========================
-- ORDER & ORDER DETAIL (trước COMMENT)
-- =========================
CREATE TABLE IF NOT EXISTS `order` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `order_code` VARCHAR(50) UNIQUE NOT NULL,
    `order_type` ENUM('Offline', 'Online') NOT NULL DEFAULT 'Offline',
    `payment_method` ENUM('Cash','QR') NOT NULL DEFAULT 'QR',
    `status` VARCHAR(50),
    `discount` DECIMAL(20,2),
    `total_amount` DECIMAL(20,2),
    `final_amount` DECIMAL(20,2),
    `customer_code` VARCHAR(50),
    `employee_code` VARCHAR(50),
    `promotion_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`customer_code`) REFERENCES `customer`(`customer_code`),
    FOREIGN KEY (`employee_code`) REFERENCES `employee`(`employee_code`),
    FOREIGN KEY (`promotion_code`) REFERENCES `promotion`(`promotion_code`)
);

CREATE TABLE IF NOT EXISTS `order_detail` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `order_detail_code` VARCHAR(50) UNIQUE NOT NULL,
    `quantity` INT,
    `unit_price` DECIMAL(20,2),
    `total_amount` DECIMAL(20,2),
    `product_code` VARCHAR(50),
    `order_code` VARCHAR(50),
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`),
    FOREIGN KEY (`order_code`) REFERENCES `order`(`order_code`) ON DELETE CASCADE
);

-- =========================
-- COMMENT (phải tạo SAU order_detail)
-- =========================
CREATE TABLE IF NOT EXISTS `comment` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `comment_code` VARCHAR(50) UNIQUE NOT NULL,
    `content` VARCHAR(255),
    `rating` INT,
    `status` BOOLEAN DEFAULT TRUE,
    `order_detail_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`order_detail_code`) REFERENCES `order_detail`(`order_detail_code`) ON DELETE CASCADE
);

-- =========================
-- CART & FAVORITE (sau khi có customer/product)
-- =========================
CREATE TABLE IF NOT EXISTS `cart` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `quantity` INT,
    `total_amount` DECIMAL(20,2),
    `product_code` VARCHAR(50),
    `customer_code` VARCHAR(50),
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`) ON DELETE CASCADE,
    FOREIGN KEY (`customer_code`) REFERENCES `customer`(`customer_code`) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `favorite` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `product_code` VARCHAR(50),
    `customer_code` VARCHAR(50),
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`) ON DELETE CASCADE,
    FOREIGN KEY (`customer_code`) REFERENCES `customer`(`customer_code`) ON DELETE CASCADE
);

-- =========================
-- IMPORT INVOICE & DETAILS
-- =========================
CREATE TABLE IF NOT EXISTS `import_invoice` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `import_invoice_code` VARCHAR(50) UNIQUE NOT NULL,
    `discount` DECIMAL(10,2),
    `status` VARCHAR(50),
    `total_amount` DECIMAL(20,2),
    `description` VARCHAR(255),
    `employee_code` VARCHAR(50),
    `supplier_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`employee_code`) REFERENCES `employee`(`employee_code`),
    FOREIGN KEY (`supplier_code`) REFERENCES `supplier`(`supplier_code`)
);

CREATE TABLE IF NOT EXISTS `import_invoice_detail` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `import_invoice_detail_code` VARCHAR(50) UNIQUE NOT NULL,
    `quantity` INT,
    `import_price` DECIMAL(20,2),
    `total_amount` DECIMAL(20,2),
    `product_code` VARCHAR(50),
    `import_invoice_code` VARCHAR(50),
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`),
    FOREIGN KEY (`import_invoice_code`) REFERENCES `import_invoice`(`import_invoice_code`) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `inventory` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `inventory_code` VARCHAR(50) UNIQUE NOT NULL,
    `quantity_on_hand` INT DEFAULT 0,
    `status` BOOLEAN DEFAULT TRUE,
    `product_code` VARCHAR(50),
    `import_invoice_detail_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`),
    FOREIGN KEY (`import_invoice_detail_code`) REFERENCES `import_invoice_detail`(`import_invoice_detail_code`)
);

CREATE TABLE IF NOT EXISTS `price_history` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `price_history_code` VARCHAR(50) UNIQUE NOT NULL,
    `unit_price` DECIMAL(10,2),
    `status` BOOLEAN DEFAULT TRUE,
    `product_code` VARCHAR(50),
    `import_invoice_detail_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `ended_date` TIMESTAMP,
    FOREIGN KEY (`product_code`) REFERENCES `product`(`product_code`),
    FOREIGN KEY (`import_invoice_detail_code`) REFERENCES `import_invoice_detail`(`import_invoice_detail_code`)
);

-- =========================
-- RETURN / EXCHANGE (cuối cùng)
-- =========================
CREATE TABLE IF NOT EXISTS `return_exchange` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `return_exchange_code` VARCHAR(50) UNIQUE NOT NULL,
    `reason` VARCHAR(255),
    `status` BOOLEAN DEFAULT TRUE,
    `order_code` VARCHAR(50),
    `created_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`order_code`) REFERENCES `order`(`order_code`) ON DELETE CASCADE
);
