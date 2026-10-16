-- Insert a demo tenant
INSERT INTO tenants (tenant_id, name, slug) 
VALUES ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Acme Corp', 'acme');

-- Insert a demo user for that tenant
INSERT INTO users (user_id, tenant_id, email, password_hash, full_name, role)
VALUES ('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'admin@acme.com', 'hashed_pass_123', 'Jane Doe', 'admin');

-- Insert a demo product utilizing the JSONB attributes column for variable specs
INSERT INTO products (product_id, tenant_id, sku, name, price, stock_quantity, attributes)
VALUES (
    'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 
    'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 
    'ELEC-001', 
    'Wireless Mouse', 
    29.99, 
    150, 
    '{"wireless": true, "battery_life": "18 months", "dpi": 1600}'::jsonb
);
