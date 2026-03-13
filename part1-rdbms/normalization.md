## Anomaly Analysis

1. Insert Anomaly:
In datasets/orders_flat.csv, product information is stored along with order information.
Example - If the company needs to add a new product like a keyboard to the system, they cannot do so without an order_id and a customer_id. In the CSV there is no way to record the product P009 unless there is some associated order_id. You have to leave order_id and customer_id as null.
Columns: product_id, product_name, order_id

2. Update Anomaly:
Customer details appear in multiple rows.
Example - In the rows 2, 5 and 8, Priya Sharma (customer_id C002) appears in all three. If we need to update her email and we update her email only in row 2 but forgot to update in row 5 and 8, the database will have conflicting information for the same customer.
Columns: customer_id, customer_name, customer_email

3. Delete Anomaly:
Deleting an order row may remove the only record of a product or customer.
Example - At row 9 (order_id ORD1075), Vikram Singh (customer_id C005) buys a Desk Chair (product_id P003). If this order is canceled and deleted, the record for Vikram Singh and the product details for the Desk Chair are both lost from the system entirely.
Columns: order_id, customer_id, product_id, product_name
