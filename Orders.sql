CREATE TABLE `orders`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `customer_id` BIGINT(20) UNSIGNED NOT  NULL,
    `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIME(),
    `total_amount` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIME() ON UPDATE CURRENT_TIMESTAMP(),
    FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
)