# Governance Framework (Platform)

This directory defines the **governance capabilities owned and enforced by the Data Platform**.

At present, this directory contains **placeholders only**.
Actual enforcement logic may be added incrementally as the platform evolves.

---

## Design Principles

- Governance is **centralized**
- Data products **do not implement governance logic**
- Enforcement is **platform-controlled**
- Defaults apply unless explicitly overridden by platform policy

---

## Scope of Governance

The platform is responsible for enforcing:

- Data access control
- PII handling and masking
- Data retention policies
- Compliance and audit requirements

Data products may declare **intent** via `product.yml`,
but enforcement logic lives exclusively in the platform.

---

## Current State

- No active enforcement code
- Structure exists to enable future governance-as-code
- Safe to extend without breaking existing data products

---

## Important Rule

**Data products must not implement governance logic themselves.  
All governance is enforced by the platform.**
