# {{MODULE}} Module — V3 Features (Later)

## Document Control

| Field | Details |
|---|---|
| Module | {{MODULE}} |
| Product | {{PRODUCT}} |
| Document Type | Version Feature Catalog |
| Version Tier | V3 — Later (Release R3) |
| Document Status | Draft for Review |
| Version | 1.0 |
| Last Updated | {{DATE}} |
| Related Documents | [`{{MODULE}}-PRD.md`](../{{MODULE}}-PRD.md) (source of truth), [`{{MODULE}}-features.md`](../{{MODULE}}-features.md) (module index), [`{{MODULE}}-v3-scope.md`]({{MODULE}}-v3-scope.md), [`{{MODULE}}-business-rules.md`](../{{MODULE}}-business-rules.md), [`{{MODULE}}-user-stories.md`](../{{MODULE}}-user-stories.md), [`{{MODULE}}-workflows.md`](../{{MODULE}}-workflows.md) |

### Revision History

| Version | Date | Summary |
|---|---|---|
| 1.0 | {{DATE}} | Initial draft from template. |

---

# 1. Purpose

This document is the **authoritative catalog of {{MODULE}} V3 features** (Later, release R3). **A feature exists in V3 officially only when it has an entry here.** Where this document and any other document disagree, raise the difference as a review item; never resolve it silently.

Module-level overview, research sources, and parked items: [`{{MODULE}}-features.md`](../{{MODULE}}-features.md) (index). Global tier rollup: [`roadmap.md`](../../roadmap.md).

# 2. Documentation Guidelines

- **Feature ID:** `{{PREFIX}}-<AREA>-<nnn>` — IDs are never reused; a removed feature keeps its ID and is marked *Withdrawn*.
- **Priority (MoSCoW):** Must Have / Should Have / Could Have / Won't Have (now). Working default in this tier: **Could Have** — adjust case by case during deepening.
- **Markers:** `[Proposed]`, `[Verify]`, `[Pending OQ-nn]` — same meanings as the PRD.
- Every feature gets numbered acceptance criteria (`ACn: Given … When … Then …`) when fully authored.
- Features reference business rules by ID (`BR-*`) — they never restate them.
- **A feature changing version** updates the two version files, the index counts, and [`roadmap.md`](../../roadmap.md) in the same change.

# 3. Feature Sections

[TODO — one `### <Area> ({{PREFIX}}-XX)` section per functional area of V3. Each section opens with a `**Purpose:**` line, then the feature table:]

### <Area> ({{PREFIX}}-XX)

**Purpose:** [One line: what this area of the module does.]

| ID | Feature | Priority |
|---|---|---|
| {{PREFIX}}-XX-001 | [One-line summary] | Could Have |

# 4. Catalog Summary

[TODO — n features catalogued in V3.]

## Assumptions

- Version placement follows the roadmap decision; moves are governed by the rules above.
