# Data Platform Template

## Overview

The **Data Platform Template** repository provides the **execution framework**, **governance enforcement**, and **CI/CD orchestration** for data product repositories.

This template is *not* a data product itself. Instead, it contains shared logic and standards used by all data products in the platform.

Data products **delegate execution** to this repository via reusable workflows and contracts.

---

## Purpose

This template empowers teams to:

- Standardize execution patterns (dbt, ingestion frameworks)
- Enforce governance policies consistently
- Validate product contracts
- Enable observability and quality checks
- Provide reusable CI/CD workflows

It allows domain teams to focus on **business logic**, while the platform manages **how things run**.

---

## Repository Structure

data-platform-template/
├── .github/
│ └── workflows/
│ └── platform.yml # Reusable workflow for data products
│
├── ci/
│ └── validate.sh # Validates product.yml contract
│
├── ingestion/
│ └── framework/
│ └── ingest_oracle.py # Ingestion framework (example)
│
├── execution/
│ └── dbt_runner/
│ ├── profile.yml # dbt connection profile
│ └── run.sh # dbt executor
└── README.md


---

## What This Template Provides

### 💡 CI/CD Workflows

`platform.yml` defines a reusable GitHub Actions workflow that:

1. Checks out the target data product repo
2. Validates the `product.yml` contract
3. Runs ingestion and transformation logic
4. Enforces governance
5. Enforces data quality SLAs

Each data product repo invokes this workflow through a workflow call.

---

## Contract-Driven Execution

Each data product must include a `product.yml` at its root. This file defines:

- Product identity & ownership
- Execution engine (e.g., dbt)
- Governance intent
- Quality expectations

Example contract fields:

```yaml
product:
  name: orders
  domain: commerce
  owner: commerce-data@company.com

execution:
  engine: dbt

governance:
  pii: true
  retention_days: 365

quality:
  freshness_sla_minutes: 30
