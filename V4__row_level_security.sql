-- Enable Row-Level Security on core tables
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE products ENABLE ROW LEVEL SECURITY;
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;
ALTER TABLE order_items ENABLE ROW LEVEL SECURITY;

-- Create policies ensuring users only see rows matching their tenant_id session variable
CREATE POLICY tenant_isolation_users ON users
    FOR ALL USING (tenant_id = nullif(current_setting('app.current_tenant_id', true), '')::uuid);

CREATE POLICY tenant_isolation_products ON products
    FOR ALL USING (tenant_id = nullif(current_setting('app.current_tenant_id', true), '')::uuid);

CREATE POLICY tenant_isolation_orders ON orders
    FOR ALL USING (tenant_id = nullif(current_setting('app.current_tenant_id', true), '')::uuid);

CREATE POLICY tenant_isolation_order_items ON order_items
    FOR ALL USING (tenant_id = nullif(current_setting('app.current_tenant_id', true), '')::uuid);
