# Accounts Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Accounts |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Accounts-PRD.md"](Accounts-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Accounts-business-rules.md"](Accounts-business-rules.md), ["Accounts-user-stories.md"](Accounts-user-stories.md), ["Accounts-workflows.md"](Accounts-workflows.md), ["Accounts-v1-scope.md"](versions/Accounts-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Accounts features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 0 | ["Accounts-v1-features.md"](versions/Accounts-v1-features.md) |
| V2 | Additional | R2 | 8 | ["Accounts-v2-features.md"](versions/Accounts-v2-features.md) |
| V3 | Later | R3 | 3 | ["Accounts-v3-features.md"](versions/Accounts-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Accounts-PRD.md"](Accounts-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Accounts-business-rules.md"](Accounts-business-rules.md).
4. ["Accounts-workflows.md"](Accounts-workflows.md).
5. ["Accounts-user-stories.md"](Accounts-user-stories.md).
6. ["Accounts-v1-scope.md"](versions/Accounts-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §4.3–§4.5 | Accounting, payroll & PF, donations |
| EximusEdu brochure pp. 36–39, 40–46 | Accounts chapter, other-modules chapter |

# 6. Open Research Items


- Payroll fine/deduction rules reference HR attendance data (HR-ATT-003) — integration boundary must be drawn in the Accounts PRD.
- Donation SMS trigger is the same engine as Communication auto-triggers (COM-AUT-*).

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- V1 ships with fee collection and payment receipts but no formal books — accepted roadmap trade-off, revisit with product owner.
- Fee collection receipts (FEE-COL-002) post into the ledger book (ACC-ACT-004) when Accounts activates.
