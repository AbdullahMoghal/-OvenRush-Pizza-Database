# OvenRush Pizza Database System

This project models the operations of a fictional pizza chain, OvenRush Pizza, using a fully normalized MySQL relational database. It covers core business functions including customer management, employee tracking, store operations, and order processing with discounts and inventory details.

## Project Overview

Developed for the course INSY 3304-004, this project demonstrates a complete database lifecycle for a retail food chain. It was implemented in MySQL due to technical complications with Oracle, while fully meeting all original requirements through proper schema design, SQL scripting, and data queries.

## Database Features

- Designed in Third Normal Form (3NF)
- Consists of 7 core tables: CUSTOMER, EMPLOYEE, STORE, PRODUCT, COUPON, MAIN_ORDER, and ORDER_ITEM
- Uses primary and foreign keys to ensure referential integrity
- Simulates real-world business scenarios such as:
  - Multi-item customer orders
  - Coupon-based discounts
  - Store-specific employee assignments
- Includes bridge table: ORDER_ITEM for the many-to-many relationship between orders and products

## Technologies Used

- MySQL (executed via MySQL Workbench)
- SQL DDL & DML scripts
- ER Diagram and Bridge Entity Diagram
- Spreadsheet (used for data dictionary and query result documentation)

## Key Files

| File | Description |
|------|-------------|
| `create_tables.sql` | All `CREATE TABLE` statements with constraints |
| `insert_data.sql` | Sample data insertion for testing and validation |
| `queries.sql` | SQL solutions for all Part 2 report questions |
| `data_dictionary.xlsx` | Attributes, data types, keys, and FK references |
| `er_diagram.png` | Conceptual and physical ER diagram, including bridge entity |
| `screenshots/` | Output screenshots of query results and table structures |
| `README.md` | This documentation file |

## Sample Queries Included

- Retrieve customer orders with contact information
- Display product details per order with quantity and price
- Track employee-store processing activity
- Compare monthly coupon usage vs. total orders
- Identify high-volume orders (more than 5 line items per month)

## Business Rules

- A customer can place many orders, but each order is associated with exactly one customer.
- An order may contain multiple products, and a product may appear in multiple orders (many-to-many relationship managed via ORDER_ITEM).
- Employees are assigned to exactly one store, but stores can have multiple employees.
- A coupon is optional on an order, but if present, it must exist in the COUPON table.
- Each order must belong to a specific store.

## Team Members

Sorted by last name:

- Jackson, Ramsey – rxj4238@mavs.uta.edu  
- Moghal, Abdullah Munir (Contact Person) – amm0640@mavs.uta.edu  
- Mustafa, Rayyan – rxm9206@mavs.uta.edu  
- Shaik, Imad Mohammed – ims1509@mavs.uta.edu  

## Notes

Due to technical issues with Oracle, this project was implemented in MySQL. All deliverables, including ER diagrams, query outputs, and documentation, meet the original project specifications.

## Contact

For questions or clarifications, contact Abdullah Moghal at amm0640@mavs.uta.edu.
