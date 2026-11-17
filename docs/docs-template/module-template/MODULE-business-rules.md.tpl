# {{MODULE}} Module — Business Rules

## Document Control

| Field | Details |
|---|---|
| Module | {{MODULE}} |
| Product | {{PRODUCT}} |
| Document Type | Business Rules |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | {{DATE}} |
| Related Documents | [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) (v[TODO]), [`{{MODULE}}-features.md`]({{MODULE}}-features.md), [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md), [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | {{DATE}} | Initial draft from template. |

---

# 1. Purpose and Guidelines

## 1.1 Purpose

This document defines the domain logic the {{MODULE}} module must enforce.

It answers the question: **What rules must the system enforce?**

It supports:

- Developers implementing calculation and validation logic.
- Testers writing test cases from precise rules and worked examples.
- Domain reviewers validating correctness of treatment.

## 1.2 Relationship with Other Documents

| Document | Responsibility |
|---|---|
| [`{{MODULE}}-PRD.md`]({{MODULE}}-PRD.md) | Why the module exists and what it covers. |
| [`{{MODULE}}-features.md`]({{MODULE}}-features.md) | What each feature does (`{{PREFIX}}-xxx-nnn`). |
| [`{{MODULE}}-user-stories.md`]({{MODULE}}-user-stories.md) | Realistic scenarios that exercise these rules. |
| [`{{MODULE}}-workflows.md`]({{MODULE}}-workflows.md) | Step-by-step processes and status transitions. |
| [`{{MODULE}}-business-rules.md`]({{MODULE}}-business-rules.md) | The rules the system must enforce (this document). |

Where this document and the Features document appear to differ, raise the difference as a review item; do not resolve it silently.

## 1.3 Rule ID Convention

Rule IDs have the form `BR-<AREA>-<number>`. **Rule IDs are never reused.** A removed rule keeps its ID and is marked *Withdrawn*.

| Prefix | Area | Main Feature Areas |
|---|---|---|
| BR-GEN | General principles | All |
| [TODO] | [TODO] | [TODO] |

## 1.4 Rule Table Format

Rules are listed in tables with these columns:

| Column | Meaning |
|---|---|
| ID | Unique rule ID |
| Rule | The rule, stated precisely |
| Features | Feature IDs the rule supports |

Notes, formulas, and tags follow the table where needed.

# 2. Rule Sections

## 2.1 General Principles (BR-GEN)

| ID | Rule | Features |
|---|---|---|
| [TODO] | | |

## 2.n <Area> (BR-XXX)
[TODO — one section per area defined in §1.3.]

# 3. Assumptions

- **[Proposed]** marks content added for discussion that needs product-owner confirmation.
- **[Verify]** marks a rule that must be validated against official sources or a qualified professional before implementation.
- **[Pending OQ-nn]** marks a rule that depends on an open question from the PRD §10. The rule shown is the working default.
- Rules state **what** must be enforced, not **how** to implement it.
