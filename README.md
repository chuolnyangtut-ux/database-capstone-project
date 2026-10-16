# Multi-Tenant E-Commerce & Budget Database Capstone

## 📋 Project Overview
This project is a robust, production-ready backend database architecture designed for a multi-tenant platform (such as an E-Commerce or Budget Management system). It implements strict tenant isolation, hybrid schemas with JSONB, versioned migrations, and high-performance indexing.

---

## 🛠️ Tech Stack & Architecture
* **Relational Database:** PostgreSQL (Core transactional data, users, orders, items)
* **NoSQL Database:** MongoDB (Flexible product catalogs and dynamic attributes)
* **Migration Tool:** Flyway (Version-controlled schema management)
* **Security & Performance:** Row-Level Security (RLS), composite indexing, and automated triggers.

---

## 📂 Repository Structure
```text
├── V1__core_tables.sql            # Core relational tables (tenants, users, products, orders)
├── v2__Index.sql                  # Performance indexes with leading tenant_id columns
├── V3__audit_and_triggers.sql     # Automated timestamp and audit triggers
├── V4__row_level_security.sql     # PostgreSQL Row-Level Security (RLS) policies
├── V5__seed_demo_data.sql         # Initial test records for validation
├── NOSQL_JUSTIFICATION.md         # Architecture justification for MongoDB integration
├── QUERY_OPTIMIZATION.md          # Before/After EXPLAIN ANALYZE performance proof
└── BACKUP_AND_SECURITY.md         # Disaster recovery plans and security checklists
