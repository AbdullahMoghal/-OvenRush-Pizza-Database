-- Query 1: List customers and their order information
SELECT 
    CONCAT(c.C_FNAME, ' ', c.C_LNAME) AS name, 
    c.C_ADDRESS AS address, 
    c.C_PHONE AS phone_number, 
    o.ORDER_ID
FROM CUSTOMER c
JOIN `ORDER` o ON c.CUSTOMER_ID = o.CUSTOMER_ID;


-- Query 2: Show products included in orders with quantity and details
SELECT 
    p.PRODUCT_NAME, 
    oi.ORDER_QUANTITY, 
    p.PRODUCT_DESCRIPTION, 
    p.PRODUCT_PRICE, 
    oi.ORDER_ID
FROM ORDER_ITEM oi
JOIN PRODUCT p ON oi.PRODUCT_ID = p.PRODUCT_ID;


-- Query 3: List employee, store, and order processing info
SELECT  
    CONCAT(e.E_FNAME, ' ', e.E_LNAME) AS Employee_Name, 
    s.STORE_LOCATION AS address, 
    s.STORE_NAME AS store_name, 
    o.ORDER_DATE AS Processing_Date
FROM `ORDER` o
JOIN STORE s ON o.STORE_ID = s.STORE_ID
JOIN EMPLOYEE e ON s.STORE_ID = e.STORE_ID;


-- Query 4: Monthly order stats with and without discounts
SELECT 
    DATE_FORMAT(o.ORDER_DATE, '%Y-%m') AS Month, 
    COUNT(*) AS Total_Orders, 
    SUM(CASE WHEN o.COUPON_ID IS NOT NULL THEN 1 ELSE 0 END) AS Discounted_Orders, 
    SUM(CASE WHEN o.COUPON_ID IS NOT NULL THEN oi.ORDER_TOTAL ELSE 0 END) AS Discounted_Total_Price
FROM `ORDER` o
JOIN ORDER_ITEM oi ON o.ORDER_ID = oi.ORDER_ID
WHERE YEAR(o.ORDER_DATE) = 2024
GROUP BY DATE_FORMAT(o.ORDER_DATE, '%Y-%m')
ORDER BY Month;


-- Query 5: Orders with more than 5 items in 2024
SELECT  
    s.STORE_NAME AS Store_Name, 
    CONCAT(e.E_FNAME, ' ', e.E_LNAME) AS Employee_Name, 
    CONCAT(c.C_FNAME, ' ', c.C_LNAME) AS Customer_Name, 
    o.ORDER_DATE AS Transaction_Date, 
    o.ORDER_ID AS Order_Number, 
    CASE 
        WHEN o.COUPON_ID IS NOT NULL THEN 'Discount Applied' 
        ELSE 'No Discount' 
    END AS Discount, 
    SUM(oi.ORDER_TOTAL) AS Total_Amount
FROM `ORDER` o
JOIN ORDER_ITEM oi ON o.ORDER_ID = oi.ORDER_ID
JOIN STORE s ON o.STORE_ID = s.STORE_ID
JOIN EMPLOYEE e ON o.STORE_ID = e.STORE_ID
JOIN CUSTOMER c ON o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE EXTRACT(YEAR FROM o.ORDER_DATE) = 2024
GROUP BY 
    s.STORE_NAME, 
    e.E_FNAME, 
    e.E_LNAME, 
    c.C_FNAME, 
    c.C_LNAME, 
    o.ORDER_DATE, 
    o.ORDER_ID, 
    o.COUPON_ID
HAVING COUNT(oi.ORDERITEM_ID) > 5
ORDER BY o.ORDER_DATE;
