# Business Rules

1. **Customers place orders**  
   - Each customer can place one or many orders.  
   - An order must be linked to exactly one customer.

2. **Employees process orders**  
   - Each order is processed by one employee.  
   - An employee can process multiple orders.

3. **Stores employ employees**  
   - Each store can have multiple employees.  
   - An employee works at only one store.

4. **Orders are fulfilled by stores**  
   - Each order is received at one store.  
   - A store can fulfill many orders.

5. **Coupons apply to orders**  
   - Orders can optionally use a coupon.  
   - A coupon can be used in many orders, or not at all.

6. **Orders include products through ORDER_LINE**  
   - An order can contain multiple products (via `ORDER_LINE`).  
   - A product can be part of many orders.

7. **ORDER_LINE links orders and products**  
   - Serves as a bridge entity for the many-to-many relationship.  
   - Captures quantity and unit price of each product per order.
