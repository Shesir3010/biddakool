# Platform Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Platform |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Platform-PRD.md"](../Platform-PRD.md) (source of truth), ["Platform-features.md"](../Platform-features.md) (module index), ["Platform-v1-scope.md"](Platform-v1-scope.md), ["Platform-business-rules.md"](../Platform-business-rules.md), ["Platform-user-stories.md"](../Platform-user-stories.md), ["Platform-workflows.md"](../Platform-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Platform V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Platform-features.md"](../Platform-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** PLA-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** everything the SaaS platform needs to run tenants, billing, and support from day one.

### Tenancy (PLA-TEN)

| ID | Feature | Priority |
|---|---|---|
| PLA-TEN-001 | Institute onboarding — invite/register institutions with initial configuration | Must Have |
| PLA-TEN-002 | Multi-institution & multi-campus (branch) support with per-branch data isolation | Must Have |

### Billing (PLA-BIL)

| ID | Feature | Priority |
|---|---|---|
| PLA-BIL-001 | SaaS billing — packages, institution bills ("Biddakool Bills") | Must Have |

### Support (PLA-SUP)

| ID | Feature | Priority |
|---|---|---|
| PLA-SUP-001 | Support ticket system with 24/7 support tracking | Must Have |
| PLA-SUP-002 | Help & tutorial center | Should Have |

### Admin & Trust (PLA-ADT)

| ID | Feature | Priority |
|---|---|---|
| PLA-ADT-001 | Superadmin layer — elevated powers (Demo Mode, Inspector Mode, Execute SQL, Run Cron Manually, Clearance Entry) | Must Have |
| PLA-ADT-002 | Detailed audit trail | Must Have |
| PLA-ADT-003 | Automatic data backup | Must Have |

# 4. Catalog Summary

8 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.
