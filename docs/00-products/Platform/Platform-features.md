# Platform Module - Feature Index

## Document Control

| Field | Details |
|---|---|
| Module | Platform |
| Product | Biddakool |
| Document Type | Module Feature Index |
| Document Status | Draft for Review |
| Version | 1.1 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Platform-PRD.md"](Platform-PRD.md) (source of truth), version catalogs under [versions/](versions/), ["Platform-business-rules.md"](Platform-business-rules.md), ["Platform-user-stories.md"](Platform-user-stories.md), ["Platform-workflows.md"](Platform-workflows.md), ["Platform-v1-scope.md"](versions/Platform-v1-scope.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.1 | 2026-11-18 | Converted to a module-level index during the version-wise restructure; feature rows now live in version-scoped catalogs under versions/. |
| 1.0 | 2026-11-18 | Initial draft from template. |

---

# 1. Purpose

This index is the entry point for Platform features. **The authoritative feature rows live in the version-scoped catalogs under [versions/](versions/).** A feature exists officially only when it has an entry in the matching version file. This index never duplicates feature rows - it maps, counts, and points. Where documents disagree, raise a review item; never resolve silently.

# 2. Version Overview

| Version | Tier | Release | Features | Catalog |
|---|---|---|---|---|
| V1 | Core (MVP) | R1 | 8 | ["Platform-v1-features.md"](versions/Platform-v1-features.md) |
| V2 | Additional | R2 | 3 | ["Platform-v2-features.md"](versions/Platform-v2-features.md) |
| V3 | Later | R3 | 2 | ["Platform-v3-features.md"](versions/Platform-v3-features.md) |

Global tier rollup: [roadmap.md](../roadmap.md).

# 3. Parked - Won't Have (now)

No parked items for this module.

# 4. Reading Order

1. ["Platform-PRD.md"](Platform-PRD.md) (SS1-SS3) - why the module exists, personas, scope.
2. The version catalog you are working on ([versions/](versions/)) - guidelines, then the catalog.
3. ["Platform-business-rules.md"](Platform-business-rules.md).
4. ["Platform-workflows.md"](Platform-workflows.md).
5. ["Platform-user-stories.md"](Platform-user-stories.md).
6. ["Platform-v1-scope.md"](versions/Platform-v1-scope.md) - V1 build order and status.

# 5. Research Needs

| Source | What it informed |
|---|---|
| [`../../research/biddakool_features_list.md`](../../research/biddakool_features_list.md) §1, §12, §13 | Tenancy, superadmin powers, billing, support, audit/backup claims, AI roadmap claim |
| EximusEdu brochure pp. 9–10, 58–64 | Platform overview claims, services & support |

# 6. Open Research Items


- AI/BI analytics: brochure foreword claim only — validate feasibility before R3 commitment.
- "Biddakool Bills" scope: inferred from admin menu; needs product-owner confirmation.

# 7. Maintenance Rules

1. New features enter scope only through a version catalog file; then update this index's counts and [roadmap.md](../roadmap.md) in the same change.
2. A feature changing version moves between version files; update index counts + roadmap in the same change.
3. Withdrawn features keep their IDs and are marked Withdrawn.
4. Never duplicate feature rows in this index.

## Assumptions

- No pricing exists in the benchmark brochure; SaaS packaging (tiers, quotas) is a Biddakool product decision, deferred to the Platform PRD.
- VAPT security is recorded as a non-functional requirement, not a feature.
