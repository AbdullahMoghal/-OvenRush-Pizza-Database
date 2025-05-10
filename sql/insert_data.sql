
INSERT INTO PRODUCT VALUES
(1, 'Cheese Pizza', 10.99, "Melted cheese over a crispy crust."),
(2, 'Veggie Pizza', 12.99, "Fresh vegetables on a savory base."),
(3, 'Chicken Pizza', 13.99, "Grilled chicken topping with rich sauce."),
(4, 'Diet Coke', 1.99, "Refreshing, zero-calorie classic soda drink."),
(5, 'Brownie', 2.50, "Rich, fudgy chocolate square of bliss.");

INSERT INTO STORE VALUES
(101, 'M St.', '249-124-4223', "Store 101"),
(102, 'P St.', '249-424-7238', "Store 102"),
(103, 'F St.', '249-424-4723', "Store 103"),
(104, 'K St.', '249-124-4323', "Store 104"),
(105, 'R St.', '243-424-4253', "Store 105");

INSERT INTO COUPON VALUES
(201), (202), (203), (204), (205);

INSERT INTO CUSTOMER VALUES
('C001', 'John', 'Doe', '123 Main St, Lewisville, TX', '972-123-4567'),
('C002', 'Jane', 'Smith', '456 Oak St, Dallas, TX', '972-987-6543'),
('C003', 'Bob', 'Lane', '678 Tree St, Plano, TX', '215-679-4232'),
('C004', 'Fred', 'Austin', '145 Tea St, Frisco, TX', '693-508-5923'),
('C005', 'Kevin', 'Loren', '256 Cup St, Prosper, TX', '752-688-5964');

INSERT INTO `ORDER` VALUES
(1001, DATE '2024-01-10', 101, 'C001', 201),
(1002, DATE '2024-02-15', 102, 'C002', NULL),
(1003, DATE '2024-03-11', 103, 'C003', 202),
(1004, DATE '2024-03-13', 104, 'C004', NULL),
(1005, DATE '2024-04-15', 101, 'C005', 202);

UPDATE `ORDER`
SET COUPON_ID = 201
WHERE ORDER_ID = 1002;

INSERT INTO ORDER_ITEM VALUES
(5001, 1001, 6, 21.98, 1),
(5002, 1002, 1, 1.99, 4),
(5003, 1003, 1, 2.50, 5),
(5004, 1004, 1, 13.99, 3),
(5005, 1005, 2, 3.98, 4),
(5006, 1001, 1, 10.99, 1),
(5007, 1001, 1, 12.99, 2),
(5008, 1001, 1, 13.99, 3),
(5009, 1001, 1, 1.99, 4),
(5010, 1001, 1, 2.50, 5),
(5011, 1001, 1, 10.99, 1),
(5012, 1002, 2, 12.99, 1),
(5013, 1002, 1, 12.49, 2),
(5014, 1002, 3, 13.59, 3),
(5015, 1002, 1, 2.29, 4),
(5016, 1002, 1, 4.30, 5),
(5017, 1002, 1, 11.29, 1);

INSERT INTO EMPLOYEE VALUES
('E100', 'Sawyer', 'Duffy', 101, '789 Elm St, Irving, TX', '972-111-2222'),
('E101', 'Tedford', 'Bradley', 102, '321 Maple St, Dallas, TX', '972-333-4444'),
('E102', 'Tedford', 'Raheem', 102, '123 Key St, Richardson, TX', '564-222-4324'),
('E103', 'Tedford', 'Wood', 104, '456 Leaf St, Arlington, TX', '932-453-5644'),
('E104', 'Washington', 'Dempsey', 104, '456 Leaf St, Arlington, TX', '932-453-5644'),
('E105', 'Sara', 'Brown', 104, '456 Leaf St, Arlington, TX', '932-453-5644'),
('E106', 'Tedford', 'Wood', 104, '456 Leaf St, Arlington, TX', '932-453-5644');
