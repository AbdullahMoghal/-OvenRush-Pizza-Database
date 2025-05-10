-- QUERY 1: List all customer names, addresses, phone numbers, and their order IDs
SELECT 
    CONCAT(c_Fname, " ", c_Lname) AS name, 
    c_address AS address, 
    c_phone AS phone_number, 
    order_id
FROM customer c
JOIN `ORDER` o ON c.customer_id = o.customer_id;

-- QUERY 2: List all product names, quantities ordered, descriptions, prices, and order IDs
SELECT 
    product_name, 
    order_quantity, 
    product_description, 
    Product_Price, 
    order_id
FROM order_item oi
JOIN product p ON oi.product_id = p.product_id;

-- QUERY 3: Show employee names, store addresses, store names, and processing dates for orders
SELECT  
    CONCAT(e.e_fname, ' ', e.e_lname) AS Employee_Name, 
    s.store_location AS address, 
    s.store_name AS store_name, 
    o.order_date AS Processing_Date
FROM `ORDER` o
JOIN store s ON o.store_id = s.store_id
JOIN employee e ON s.store_id = e.store_id;

-- QUERY 4: Monthly order summary with coupon stats for 2024
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS Month, 
    COUNT(*) AS Total_Orders, 
    SUM(CASE WHEN o.coupon_id IS NOT NULL THEN 1 ELSE 0 END) AS Discounted_Orders, 
    SUM(CASE WHEN o.coupon_id IS NOT NULL THEN oi.order_total ELSE 0 END) AS Discounted_Total_Price
FROM `ORDER` o
JOIN order_item oi ON o.order_id = oi.order_id
WHERE YEAR(o.order_date) = 2024
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY Month;

-- QUERY 5: Detailed order info with discounts, grouped by store, employee, customer, and date
SELECT  
    s.store_name AS Store_Name, 
    CONCAT(e.e_fname, ' ', e.e_lname) AS Employee_Name, 
    CONCAT(c.c_fname, ' ', c.c_lname) AS Customer_Name, 
    o.order_date AS Transaction_Date, 
    o.order_id AS Order_Number, 
    CASE 
        WHEN o.coupon_id IS NOT NULL THEN 'Discount Applied'  
        ELSE 'No Discount'  
    END AS Discount, 
    SUM(oi.order_total) AS Total_Amount
FROM `ORDER` o
JOIN order_item oi ON o.order_id = oi.order_id
JOIN store s ON o.store_id = s.store_id
JOIN employee e ON o.store_id = e.store_id
JOIN customer c ON o.customer_id = c.customer_id
WHERE EXTRACT(YEAR FROM o.order_date) = 2024
GROUP BY 
    s.store_name, e.e_fname, e.e_lname, 
    c.c_fname, c.c_lname, o.order_date, o.order_id, o.coupon_id
HAVING COUNT(oi.orderitem_id) > 5
ORDER BY o.order_date;
