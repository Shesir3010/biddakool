# Communication Module - V1 Features (Core (MVP))

## Document Control

| Field | Details |
|---|---|
| Module | Communication |
| Product | Biddakool |
| Document Type | Version Feature Catalog |
| Version Tier | V1 - Core (MVP) (Release R1) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | 2026-11-18 |
| Related Documents | ["Communication-PRD.md"](../Communication-PRD.md) (source of truth), ["Communication-features.md"](../Communication-features.md) (module index), ["Communication-v1-scope.md"](Communication-v1-scope.md), ["Communication-business-rules.md"](../Communication-business-rules.md), ["Communication-user-stories.md"](../Communication-user-stories.md), ["Communication-workflows.md"](../Communication-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | 2026-11-18 | Version-scoped catalog created during the version-wise restructure (split from the module feature catalog). |

---

# 1. Purpose

This document is the **authoritative catalog of Communication V1 features** (Core (MVP), release R1). **A feature exists in V1 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: ["Communication-features.md"](../Communication-features.md) (index). Global tier rollup: [roadmap.md](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** COM-AREA-nnn - IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: Must Have - adjust case by case during deepening.
- **Markers:** [Proposed], [Verify], [Pending OQ-nn] - same meanings as the PRD.
- Every feature gets numbered acceptance criteria (ACn: Given ... When ... Then ...) when fully authored.
- Features reference business rules by ID (BR-*) - they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [roadmap.md](../../roadmap.md) in the same change.

# 3. Feature Sections


**Purpose:** the SMS engine and its automatic triggers — guardians hear from the institution without anyone lifting a finger.

### SMS Engine (COM-SMS)

| ID | Feature | Priority |
|---|---|---|
| COM-SMS-001 | SMS composer — Masking (1.25৳) & Non-Masking (0.95৳), sender ID, templates ("load from template"), dynamic fields ([name]), live phone preview, banned-word detection, char counter + SMS-part calculator + encoding (GSM/UNI) | Must Have |
| COM-SMS-002 | Recipient building — Load Group, manual numbers, per-student picker, save recipient set as group, multi-part preview | Must Have |
| COM-SMS-003 | Sent SMS log — filters (branch, recipient, date, Has Error, Masking/Non-Masking), message body, parts count, error capture | Must Have |
| COM-SMS-004 | SMS balance top-up (online) & balance badges | Must Have |

### Auto Triggers (COM-AUT)

| ID | Feature | Priority |
|---|---|---|
| COM-AUT-001 | Auto-SMS on attendance — absent / present-on-time (w/ timestamp) / late | Must Have |
| COM-AUT-002 | Auto-SMS dues reminders (FEE-DUE-002 consumer) | Must Have |
| COM-AUT-003 | Auto-SMS login credentials to guardians | Should Have |

# 4. Catalog Summary

7 features catalogued in V1.

## Assumptions

- Version placement follows the roadmap decision of 2026-11-18; moves are governed by the rules above.
