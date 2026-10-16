# NoSQL Layer Integration: MongoDB Document Store

## Chosen Store: MongoDB
* **Use Case:** Storing dynamic product catalogs with highly variable attributes (e.g., electronics specs vs. clothing sizes) and customer activity audit logs.
* **Why it was chosen:** MongoDB stores data as flexible BSON (Binary JSON) documents. This allows different product categories to have completely unique fields without forcing null values into every row.
* **Problem solved better than PostgreSQL:** While PostgreSQL supports `JSONB`, a dedicated document store like MongoDB excels when dealing with deeply nested, rapidly evolving hierarchical data structures at scale, avoiding complex schema migrations for every minor product attribute change.
