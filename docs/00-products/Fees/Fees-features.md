# Fees Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Fees |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Fees-PRD.md"](Fees-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Fees-business-rules.md"](Fees-business-rules.md), ["Fees-user-stories.md"](Fees-user-stories.md), ["Fees-workflows.md"](Fees-workflows.md), ["Fees-v1-scope.md"](versions/Fees-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Fees features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 12 | ["Fees-v1-features.md"](versions/Fees-v1-features.md) |
| V2 | Additional | R2 | 3 | ["Fees-v2-features.md"](versions/Fees-v2-features.md) |
| V3 | Later | R3 | 0 | ["Fees-v3-features.md"](versions/Fees-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Fees-PRD.md"](Fees-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Fees-business-rules.md"](Fees-business-rules.md).
4. ["Fees-workflows.md"](Fees-workflows.md).
5. ["Fees-user-stories.md"](Fees-user-stories.md).
6. ["Fees-v1-scope.md"](versions/Fees-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §4.1, §4.2 | Fee management, online payments |
| EximusEdu brochure pp. 34–36 | Fees & payment screenshots |

# 6. Open Research Items


- Gateway agreements: which MFS/bank aggregators Biddakool contracts with is a business + integration decision (ADR territory).
- "Terms/Privacy/Refund policy acceptance at payment" — legal text needs product-owner review.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- Donations are catalogued in Accounts (ACC-DON-*).
- Accounting posts from fee collection into Accounts ledgers (ACC-ACT-*) — cross-module integration.
- Transport fee head exists in fee heads list but the Transport module itself is Parked.
