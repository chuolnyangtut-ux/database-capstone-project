# Query Optimization Evidence

## Optimized Query Report

### 1. QUERY: What question it answers
* **Question:** Find all products belonging to a specific tenant (`a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11`) with a price greater than $20, ordered by price descending.
* **SQL Statement:**
  ```sql
  SELECT product_id, sku, name, price 
  FROM products 
  WHERE tenant_id = 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11' AND price > 20.00 
  ORDER BY price DESC;
