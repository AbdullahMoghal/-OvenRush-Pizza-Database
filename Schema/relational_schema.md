# Relational Schema (Third Form)

CUSTOMER (CUSTOMER_ID, CustomerName, Address, Phone)  
STORE (STORE_ID, StoreName, Address, Phone)  
EMPLOYEE (EMPLOYEE_ID, SSN, EmployeeName, Address, Phone, store_id)  
COUPON (COUPON_ID, Description, DiscountAmount, ExpirationDate)  
PRODUCT (PRODUCT_ID, ProductName, ProductType, Description, UnitPrice)  
ORDER (ORDER_ID, OrderDate, OrderTime, DeliveryType, customer_id, employee_id, store_id, coupon_id)  
ORDER_LINE (ORDER_LINE_ID, Quantity, UnitPrice, order_id, product_id)
