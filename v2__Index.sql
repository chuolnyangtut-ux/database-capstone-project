-- Create composite indexes with tenant_id leading every index
CREATE INDEX idx_users_tenant_email ON users (tenant_id, email);
CREATE INDEX idx_products_tenant_sku ON products (tenant_id, sku);
-- GIN index for fast searching inside the JSONB attributes column
CREATE INDEX idx_products_attributes_gin ON products USING gin (tenant_id, attributes);
CREATE INDEX idx_orders_tenant_user ON orders (tenant_id, user_id);
CREATE INDEX idx_order_items_tenant_order ON order_items (tenant_id, order_id);
