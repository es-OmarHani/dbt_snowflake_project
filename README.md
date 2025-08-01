# dbt_snowflake_project

This project uses [dbt (data build tool)](https://www.getdbt.com/) to transform and manage data in Snowflake. It includes a complete setup script to provision the Snowflake environment and organizes DBT models for testing, transformation, and documentation.

---

## 📌 Project Structure

```
dbt_snowflake_project/
├── dbt_project.yml              ← Main dbt config
├── setup_sql/                   ← Manual SQL to setup Snowflake (outside DBT)
│   └── snowflake_setup.sql      ← Creates warehouse, database, raw tables
├── models/                      ← DBT-managed transformations
│   ├── staging/                 ← Staging layer
│   ├── intermediate/            ← Intermediate transforms
│   └── marts/                   ← Final analytics-ready models
├── seeds/                       ← Static seed data (CSV)
├── snapshots/                   ← snapshot tables
├── analyses/                    ← Ad hoc analysis SQLs
├── macros/                      ← Custom Jinja macros
└── tests/                       ← Additional schema and data tests
```

---

## 🏗️ Setup Instructions

### 1. Prerequisites

- Python + virtual environment (`venv` or `conda`)
- Snowflake account with access to create warehouses, DBs, and schemas
- Git installed

### 2. Create and Activate Environment

```bash
python -m venv dbt-env
source dbt-env/bin/activate  # or dbt-env\Scripts\activate on Windows
pip install dbt-snowflake
```

### 3. Configure `profiles.yml`

Set up your DBT profile in `~/.dbt/profiles.yml`:

```yaml
dbt_snowflake_project:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: <your_account>
      user: <your_username>
      password: <your_password>
      role: <your_role>
      database: <your_database>
      warehouse: <your_warehouse>
      schema: <your_schema>
      threads: 4
```

---

## ⚙️ Snowflake Environment Setup

Before running dbt, run the SQL script to provision Snowflake:

```sql
-- setup_sql/setup_snowflake.sql
-- Includes:
--   - CREATE WAREHOUSE
--   - CREATE DATABASE
--   - CREATE SCHEMA & RAW TABLES
```

Run it using the Snowflake UI or CLI (like `snowsql`).

---

## 🚀 Using dbt

Once setup is complete:

```bash
dbt run            # Run all models
dbt test           # Run tests
dbt docs generate  # Build docs
dbt docs serve     # View docs in browser
```

---

## ✅ Testing & Validation

- Use `dbt test` to apply schema and data quality checks.
- Custom tests can be added under the `tests/` folder or as `tests:` blocks in model `.yml` files.

---

## ✍️ Author & License

Developed by **Omar Elshanawany**  
License: [MIT](LICENSE).

---


