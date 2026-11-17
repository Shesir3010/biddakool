# Platform Module - V3 Features (Later)

## Document Control

| Field | Details |
|---|---|
| Module | Platform |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V3 - Later (Release R3) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Platform-PRD.md"](../Platform-PRD.md) (source of truth), ["Platform-features.md"](../Platform-features.md) (module index), ["Platform-v3-scope.md"](Platform-v3-scope.md), ["Platform-business-rules.md"](../Platform-business-rules.md), ["Platform-user-stories.md"](../Platform-user-stories.md), ["Platform-workflows.md"](../Platform-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Platform V3 features** (Later, release R3). **A feature exists in V3 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Platform-features.md"](../Platform-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** PLA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Could Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


### AI & Analytics (PLA-AIN)

| ID | Feature | Priority |
|---|---|---|
| PLA-AIN-001 | AI-powered insights — results/attendance/payments feedback into per-student insights & weak-subject detection `[Verify — foreword claim]` | Could Have |
| PLA-AIN-002 | BI dashboards & analytics suite `[Proposed]` | Could Have |

# 4. Catalog Summary

2 features catalogued in V3.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.
